<?php

$article = new \Models\Article();

$articles = $article->getArticles();

$users= new \Models\User();

$user= $users->getAllUsers();

include __DIR__ . '/../views/home.php';