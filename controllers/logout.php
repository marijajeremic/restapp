<?php

setcookie('token', ' ', time() - 360);

header('Location: index.php?page=login');