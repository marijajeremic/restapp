<?php
/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 17.34
 */

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

$title = filter_input(INPUT_POST, 'title');

$content = filter_input(INPUT_POST, 'content');

if(empty($title) || strlen($title)<3 ){
    echo json_encode(['message' => 'Title is too short or missing.']);

    return http_response_code(400);
}
if(empty($content) || strlen($content)<30 ){
    echo json_encode(['message' => 'Content is too short or missing.']);

    return http_response_code(400);
}


$newImageNames = [];

foreach ($_FILES['file']['name'] as $index => $name) {


    if (substr($_FILES['file']['type'][$index], 0, 6) !== 'image/') {
        continue;
    }

    $img_name = uniqid(null, true) . "-{$name}";

    $newImageNames[] = $img_name;
  

    move_uploaded_file($_FILES['file']['tmp_name'][$index], '../images/' . $img_name);
}
$images = json_encode($newImageNames);


$params = ['title' => $title, 'content'=> $content,'user_id' => $userData['id'], 'image' => $images];

$article = new \Models\Article();

if(false == $article->insert($params)){
    return http_response_code(500);
}

echo json_encode(['message' => 'Success !!!']);

return http_response_code(200);






