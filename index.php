<?php
require_once __DIR__ . '/config.php';

$token = filter_input(INPUT_COOKIE, 'token');

$user = null;

if ($token) {
    $users = new \Models\User();

    $user = $users->getByToken($token);
}

include __DIR__ . '/controllers/header.php';

$page = filter_input(INPUT_GET, 'page');

if (false == $page) {
    $page = 'home';
}

require_once __DIR__ . '/controllers/' . $page . '.php';

include __DIR__ . '/controllers/footer.php';