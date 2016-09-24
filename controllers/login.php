<?php

$errorArray = [];

$email = filter_input(INPUT_POST, 'email');

$password = filter_input(INPUT_POST, 'password');

if(empty($email) || empty($password)) {
    $errorArray['email']= 'Missing mail';

    $errorArray['password']= 'Missing password';

    include __DIR__ . '/../views/login.php';

    return;
}

$users = new \Models\User();

$result= $users->getUserByEmail($email);

if (empty($result)) {
    $errorArray['email']= 'User not found';
} else if (false === password_verify($password, $result['password'])){
    $errorArray['password']= 'Password not correct';
}

if (empty($errorArray)) {
    $tokens = new \Models\Token();

    $token = $tokens->generateUserToken($result['id']);

    setcookie('token', $token);

    header('Location: index.php?page=home');

    return;
}

include __DIR__ . '/../views/login.php';






