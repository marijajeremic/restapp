<?php

namespace Core;

/**
 * Created by PhpStorm.
 * User: Marija
 * Date: 18.9.2016.
 * Time: 15.49
 */
abstract class Connect{
    private static $_instance = null;
   
    private function __construct(){}
    
    public static function getConnection(){
        if(is_null(self::$_instance)){
           
            self::$_instance = new \PDO("mysql:host=127.0.0.1;dbname=blogapp", "root", "");
        }
       
        return self::$_instance;
    }
}
