<?php
/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 17.57
 */

namespace Models;


use Core\Model;

class Token extends Model
{
    protected $tableName = 'tokens';

    public function generateUserToken($userId)
    {
        $token = hash('sha256', uniqid());
        
        $status = $this->insert(['token' => $token, 'user_id' => $userId]);

        if (false === $status) {
            throw new \Exception("Failed to generate token for user {$userId}");
        }

        return $token;
    }
}