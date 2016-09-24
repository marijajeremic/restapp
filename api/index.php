<?php
/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 17.28
 */
require_once __DIR__ . '/../config.php';

$json = file_get_contents(__DIR__ . '/access_keys.json');

$keys = json_decode($json, true);

$key = filter_input(INPUT_GET, 'accessKey');

if (null == $key || false === in_array($key, $keys)) {
    echo json_encode(['message' => 'Invalid API access key.']);

    return http_response_code(403);
}

$method = filter_input(INPUT_SERVER, 'REQUEST_METHOD');

$action = filter_input(INPUT_GET, 'action');

$actions = [
    'article' => [
        'post' => __DIR__ . '/articles/createNewArticle.php',
        'delete' => __DIR__ . '/articles/deleteArticle.php',
        'get' => __DIR__ . '/articles/listArticles.php',
        'put' => __DIR__. '/articles/editArticle.php'
    ],
    'user' =>[
        'get' => __DIR__ . '/users/listUsers.php'
    ]
 ];

if (empty($actions[$action])) {
    echo json_encode(['message' => "Unknown action {$action}"]);

    return http_response_code(404);
}

$method = strtolower($method);

if (empty($actions[$action][$method])) {
    echo json_encode(['message' => "Invalid method {$method}"]);

    return http_response_code(405);
}

if (in_array($method, ['put', 'patch'])) {
    parse_str(
        file_get_contents('php://input'), $bodyData
    );
}

require_once $actions[$action][$method];