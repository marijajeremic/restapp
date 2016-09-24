<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron">
                    <div class="home_title">
                        <h1>Welcome to our site!</h1>
                        <p>Hello dear user! You can read posts.If you want add new post,please login.</p>
                    </div>
                <img src="images/57e5208aa6ca69.14534549-6968796-desktop-wallpaper-backgrounds-1080p.jpg" style="width: 100%; height: 300px;" class="img-responsive"  alt="Responsive image">
            </div>
        </div>
    </div><!-- end .jumbotron -->
    <div class="content">
        <div class="row">
            <div class="col-md-offset-2 col-md-6">
                <div class="post">
                    <?php foreach($articles as $article) {
                        $images=json_decode($article['image'], true);

                        echo '<h2>'. $article['title'].'</h2>';

                        if(is_array($images)){
                            echo '<img  class="home_img" src="images/'. $images[0] .'"/>';
                        }
                        echo '<p>'.substr($article['content'], 0, 700).'<strong>...</strong></p>';
                        echo '<a href="index.php?page=article&action=viewarticle&id='. $article['id'] .'" class="btn btn-primary">Read more</a>';
                        echo '<hr>';
                    }?>
                </div>
            </div>
            <div class=" col-md-offset-1 col-md-2" >
                <h2>Users:</h2>
                <?php
                foreach($user as $prof){
                    echo '<img class="prof_images" src="images/users/'. $prof['image'].'"/ >';
                    echo $prof['name'];
                }
                ?>
            </div>
        </div>
    </div><!-- end .content-->
    
  