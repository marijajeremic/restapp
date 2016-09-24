<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Zadatak</title>

    <script type="text/javascript"  src="public/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="public/js/bootstrap.min.js"></script>
    <link href="public/css/lightbox.css" rel="stylesheet">
    <link rel="stylesheet" href="public/css/style.css">
    <link rel="stylesheet"  href="public/css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
    <script src="http://malsup.github.com/jquery.form.js"></script>
    
</head>
<body>
<div class="nav">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.php?page=home">Home<span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Articles <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="index.php?page=article&action=listarticles">List Articless</a></li>
                            <li role="separator" class="divider"></li>
                            <?php if (false == empty($user['id'])){?>
                            <li><a href="index.php?page=article&action=addarticle">Add Article</a></li>
                            <?php } ?>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <?php if (false == empty($user['id'])){?>
                    <li><a href="index.php?page=logout">Logout</a></li>
                    <?php }else{?>
                        <li><a href="index.php?page=login">Login</a></li>
                    <?php  } ?>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div><!-- end .nav -->


