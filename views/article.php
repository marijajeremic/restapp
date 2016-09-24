<?php


?>

<div class="row">
    <div class=" col-md-offset-3 col-md-6">
        <h6>Created By:</h6>
        <?php
        echo '<h4>'. $dataUser['name'].'  '. $dataUser['last_name'].'</h4>';
        
        echo '<img class="prof_images" src="images/users/'. $dataUser['image'].'"/ >';
        
        echo '<h6>Date created:</h6>';
        
        echo '<p>' . $article['date'] . '</p><br>';
        ?>
        <hr><div class="alert "></div>
        <?php
        echo '<h2>' . $article['title'] . '</h2><br>';
        if($count_img>0){
            echo '<a class="img-responsive" href="images/'. $images[0].'" data-lightbox="example-set"><img class="img-responsive"  id="big_img" src="images/'. $images[0].'"/></a>';
        }

        echo '<p>' . $article['content'] . '</p><br>';
        if($count_img>0){
            for($i=0; $i<$count_img; $i++){
                echo '<a class="img-responsive" href="images/'. $images[$i].'" data-lightbox="example-set"><img class="img-responsive" id="list_img" src="images/'. $images[$i].'"/></a>';
            }
        }

        if($article['user_id'] == $user['id']) { ?>
        <a href="index.php?page=article&action=editarticle&id=<?php echo $article['id']?>" type="button" class="btn btn-warning">Edit</a><span></span>

        <a href="api/index.php?action=article&token=<?php echo $token ?>&id=<?php echo $article['id']?>"  id="delete" class="btn btn-danger">Delete</a> <?php } ?>
    </div>
</div>

<script>
    $('#delete').on('click',function(e){
        e.preventDefault();
        
        if (confirm('Are you sure you want to delete this?')) {
    
            $.ajax({
                url: $(this).attr('href') + '&accessKey=OVOJEKLJUC',
                type: 'DELETE',
                dataType: "json",
                success: function (response) {
                    var  message= response.message;
                    $('.alert').addClass('alert-success').text(message).css('display', 'block');
                },
                error: function (response) {
    
                    var msg = JSON.parse(response.responseText);
                    var message = msg.message;
                    $('.alert').addClass('alert-danger').text(message).css('display', 'block');
    
                },
                fail: function (response) {
    
                    var msg = JSON.parse(response.responseText);
                    var message = msg.message;
                    $('.alert').addClass('alert-danger').text(message).css('display', 'block');
                }
             });
        }
    });
</script>