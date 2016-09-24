<?php
/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 17.35
 */

$articleId = filter_input(INPUT_GET, 'id');

$tokenValue = filter_input(INPUT_GET, 'token');

if (null === $tokenValue) {
    echo json_encode(['message' => 'Missing token']);

    return http_response_code(401);
}

if (null === $articleId) {
    echo json_encode(['message' => 'Missing articleId parameter']);

    return http_response_code(400);
}

$user = new \Models\User();

$userData = $user->getByToken($tokenValue);


if (empty($userData)) {
    echo json_encode(['message' => 'Invalid user.']);

    return http_response_code(403);
}

$article = new \Models\Article();


if (empty($article->getBy(['id' => $articleId, 'user_id' => $userData['id']]))) {
    echo json_encode(['message' => 'Invalid user article.']);

    return http_response_code(404);
}

if ($article->deleteById($articleId)) {
    echo json_encode(['message' => "Article {$articleId} deleted."]);

    return;
}

echo json_encode(['message' => 'There was an internal server error, please contact administrator.']);

http_response_code(500);