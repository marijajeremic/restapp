<?php

$token = filter_input(INPUT_GET, 'token');

if(is_null($token)){
    echo json_encode(['message' => 'Missing token!']);

    return http_response_code(401);
}

$users = new \Models\User();

$userData = $users->getByToken($token);

if(empty($userData)){
    echo json_encode(['message' => 'Invalid user']);

    return http_response_code(403);
}
$article = new \Models\Article();


$id = filter_input(INPUT_GET, 'id');

$title = $bodyData['title'];

$content = $bodyData['content'];

if(empty($title) || strlen($title) < 3 ){
    echo json_encode(['message' => 'Title is too short or missing.']);

    return http_response_code(400);
}
if(empty($content) || strlen($content)<30 ){
    echo json_encode(['message' => 'Content is too short or missing.']);

    return http_response_code(400);
}
$params = ['title' => $title, 'content' => $content];

if(false == $article->update($params,$id)){
    return http_response_code(500);
}

echo json_encode(['message' => 'Success !!!']);

return http_response_code(200);
