<?php

$action = filter_input(INPUT_GET, 'action');

switch($action) {
    case('addarticle'):

        include __DIR__ . '/../views/addarticle.php';
        break;
    case ('listarticles') :

        include __DIR__ . '/../views/listarticles.php';
        break;
    case ('editarticle') :

        $id = filter_input(INPUT_GET, 'id');

        $articles = new \Models\Article();

        $article = $articles->getById($id);

        include __DIR__ . '/../views/editarticle.php';
        break;
    case ('viewarticle') :

        $id = filter_input(INPUT_GET, 'id');

        $articles = new \Models\Article();

        $article = $articles->getById($id);

        $users = new \Models\User();

        $user = $users->getByToken($token);

        $dataUser = $users->getById($article['user_id']);

        $images= json_decode($article['image'], true);
        
        $count_img= count($images);

        include __DIR__ . '/../views/article.php';
        break;
    default:
        return;
}

        