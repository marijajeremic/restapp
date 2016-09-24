<div class="row">
    <div class=" col-md-offset-3 col-md-6">
        <div class="alert "></div>
        <h1>Add new post :</h1><hr>

<form id="send" action="api/index.php?action=article&token=<?php echo $token ?>" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control" id="title" placeholder="Title">
    </div>
    <div class="form-group">
        <label for="content">Content</label>
        <textarea rows="10" name="content" class="form-control" id="content" placeholder="Content"></textarea>
    </div>
    <div class="form-group">
        <label for="image">Image</label>
        <input type="file" name="file[]"  multiple="multiple"><br>
        <p class="help-block">Example block-level help text here.</p>
    </div>
    <button type="submit"  class="btn btn-success">Submit</button>
</form>
    </div>
</div>



<script>
    $('#send').submit(function(e) {
        e.preventDefault();
        
        $.ajax({
            url: $(this).attr('action') + '&accessKey=OVOJEKLJUC',
            data: new FormData(this),
            contentType: false,
            processData: false,
            type: 'POST',
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
