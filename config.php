<?php

spl_autoload_register(function ($class) {
    $classPath = __DIR__ . '/' . str_replace('\\', '/', $class) . '.php';

    if (file_exists($classPath)) {
        require_once $classPath;
    }
});

