<?php

namespace Models;

use Core\Model;

/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 15.49
 */
class User extends Model
{
    protected $tableName = 'users';
    
    public function getByToken($userToken)
    {
       
        $token = new Token();
        
        $tokenData = $token->getBy([
            'token' => $userToken
        ]);

        if (empty($tokenData)) {
            return null;
        }

        $user = new User();

        return $user->getById($tokenData['user_id']);
    }

    public function getUserByEmail($email)
    {
        $query = $this->database->prepare('SELECT * FROM users WHERE email=?');
        
        if($query && $query->execute([$email])){
            return $query->fetch(\PDO::FETCH_ASSOC);
        }
        return null;
    }
    
    public function getAllUsers()
    {
        $query = $this->database->prepare('SELECT * FROM users');

        if($query && $query->execute([])){
            return $query->fetchAll(\PDO::FETCH_ASSOC);
        }
        return null;
    }    
}