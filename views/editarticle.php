
<div class="row">
    <div class=" col-md-offset-3 col-md-6">
        <h1>Edit Post :</h1><hr>
        <div class="alert "></div>
        <form id="send" action="api/index.php?action=article&token=<?php echo $token ?>&id=<?php echo $id ?>" method="post" >
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" value="<?php echo $article['title']   ;?>" class="form-control" id="title" placeholder="Title">
            </div>
            <div class="form-group">
                <label for="content">Content</label>
                <textarea rows="10" name="content" class="form-control" id="content" placeholder="Content"><?php echo $article['content']   ;?></textarea>
            </div>
            <button type="submit"  class="btn btn-default">Submit</button>
        </form>
    </div>
</div>

<script>
    $('#send').submit(function(e){
        e.preventDefault();

        $.ajax({
            url: $(this).attr('action') + '&accessKey=OVOJEKLJUC',
            type: 'PUT',
            data: $(this).serialize(),
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

    });

</script>