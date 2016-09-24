<?php

$userId = filter_input(INPUT_GET, 'user_id');

$user = new \Models\User();

$users = $user->getAllUsers();

$data =['users' => $users];

echo json_encode($data);

return http_response_code(200);