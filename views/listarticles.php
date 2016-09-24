<div class="row">
    <div class=" col-md-offset-3 col-md-6">
        <h1>Posts: </h1>
        <hr>
        <div class="form-group">
            <label for="sel1">Select Posts by User:</label>
            <select class="form-control" id="sel1">
                <option value="-1">Posts by User</option>
                
            </select>

            <div id="post"></div>
        </div>
    </div>
</div>
<div class="row">
    <div class=" col-md-offset-5 col-md-3">
        <nav aria-label="...">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" id="prev" href="#" tabindex="-1" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
            </ul>
                <ul id="pagin" class="pagination"></ul>
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" id="next" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>

<script>
    (function () {

        var KEY = 'OVOJEKLJUC', page = 1, total_pages = 1, userId = 0;

        var loadContent = function (currentPage, userId) {
            $.ajax({
                url: 'api/index.php',
                type: 'GET',
                dataType: "json",
                data: {
                    action: 'article',
                    page: currentPage || 1,
                    user_id: userId || 0,
                    accessKey: KEY
                },
                success: function (data) {
                    
                    page = parseInt(data.page);
                    total_pages = parseInt(data.pagination.total_pages);
                    
                    drawArticles(data.articles);
                    drawPagination(data.pagination.total_pages);
                }
            });
        };
        var listUsers = function (users){
            $('#sel1').empty();

            $.each(users, function($ind, $val){
                var option = $('<option></option>').appendTo('#sel1').text($val.name + " " + $val.last_name).val($val.id);
            });
        };
        
        var drawPagination = function (totalPages) {
            $('#pagin').empty();

            for (var i = 1; i < totalPages + 1; i++) {
                var url = 'api/index.php?action=article&accessKey=' + KEY + '&page=' + i + '&user_id=' + userId;
                var lipage = $('<li></li>').appendTo('#pagin');
                var a = $('<a></a>').text(i).attr('href', url).appendTo(lipage).addClass('pages');
            }
        };

        var drawArticles = function (articles) {
            $('#post').empty();
            $.each(articles, function ($ind, $val) {
                id=($val.id);
                img = ($val.image);
                images = [];
                if (img) {
                    try {
                        images = JSON.parse(img);
                    } catch (e) {
                    }
                }
                if(images[0]){
                   var img = $('<img />').attr('src', 'images/'+images[0]).addClass('img-responsive').addClass('post_img')
                }
                $('<div />')
                    .append(
                        $('<h2 />').text($val.title),
                        img,
                        $('<p />').text($val.content).addClass('descript'),
                        $('<span />').text($val.date),
                        $('<br><a />').addClass('btn btn-primary').text('Read more').attr('href', 'index.php?page=article&action=viewarticle&id=' + id)
                    ).appendTo('#post');

                $('.descript').each(function(){
                    if(jQuery(this).text().length > 100){
                        jQuery(this).text(jQuery(this).text().substr(0,97)+'...');
                    }
                });

            });
        };

        $(document).ready(function(){
            $('a .btn-primary').on('click', function(){
                console.log('hey');
            });
        });
        
        $('#sel1').on('change', function(){
            userId = $(this).val();
           loadContent(1, userId);

        });

        $('#next').on('click', function(){
            page = parseInt(page) + 1;
           if(page > total_pages){
               page = total_pages;
           }
            loadContent(page, userId);
        });
        $('#prev').on('click', function(){
            page = parseInt(page) -1;
            if(page <=1){
                page = 1;
            }
            loadContent(page, userId);
        });
        $(document).on('click', 'ul.pagination a', function (e) {
            e.preventDefault();

            $.ajax({
                url: $(this).attr('href'),
                type: 'GET',
                dataType: "json",
                success: function (data) {
                    page = (data.page);
                    total_pages = (data.pagination.total_pages);
                    drawArticles(data.articles);
                    drawPagination(data.pagination.total_pages);
                }
            });
        });

        $(document).ready(function () {
            loadContent();

        });

        $(document).ready(function(){

            $.ajax({
                url: 'api/index.php',
                type: 'GET',
                dataType: "json",
                data:{
                   action: 'user',
                   accessKey: KEY
                },
                success:function(data){
                    listUsers(data.users);

                }
            });
        });
    })();
</script>