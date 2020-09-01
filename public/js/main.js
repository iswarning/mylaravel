

/* Ajax Comments */
    $('#sendComment').on('click',function(e){

        e.preventDefault();
        var id_product = $('#id_product').val();
        var content = $('#content').val();
        var email_user = $('#email_user').val();
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf_token"]').attr('content')
            }
        });

        $.ajax({
            type: "POST",
            url: $(location).attr("href"),
            data:{ content:content, id_product:id_product, email_user:email_user},
            success: function(data){
                $('#showComment').append(`
                <hr>
                <div class="row">
                    <div class="col-md-2">
                        <img src="http://localhost:8000/mylaravel/public/image/avatar-default.jpg" width="40px" height="40px">
                    </div>
                    <div class="col-md-8">
                        <h5><b>${data.email_user}</b></h5>
                        <p>${data.content}</p>
                    </div>
                    <div class="col-md-2">
                        undefined
                        <br><a href="#" onclick="reply()" id="clickme">Reply</a>
                    </div>
                </div>
                `);
            },error:function(err){
                alert("error:"+err);
            }
        });
    });


/* Show hide introduction */
    $('#viewmore').on('click',function(){
        var display = $('.showContent').css('display');
        if(display == "none"){
            $('.showContent').show();
        }else{
            $('.showContent').hide();
        }


    });

/* Click mini image change to main image */
    $('#img1').on('click',function(){
        $('#myimage').attr("src",$(this).attr("src"));
    });

    $('#img2').on('click',function(){
        $('#myimage').attr("src",$(this).attr("src"));
    });

    $('#img3').on('click',function(){
        $('#myimage').attr("src",$(this).attr("src"));
    });



/* AutoComplete Input Search */
    $("#inputSearch").on('keyup',function(){
        var keyword = $(this).val();

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf_token"]').attr('content')
            }
        });

        if(keyword.length == 0)
        {
            $("#showSearch").text("");

        }
        else
        {
            $.ajax({
                url:"http://localhost:8000/mylaravel/public/liveSearch/"+keyword,
                type:"GET",
                success:function(data){
                    $('#showSearch').html(data);
                }
            });
        }

    });



