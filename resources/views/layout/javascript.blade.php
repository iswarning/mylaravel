
<script>
$(document).ready(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf_token"]').attr('content')
        }
    });

    /* Ajax Comments */
    
    @if( Auth::check() && isset($detail))
    
        $('#sendComment').on('click',function(e){

            e.preventDefault();
            var id_product = $('#id_product').val();
            var content = $('#content').val();
            var email_user = $('#email_user').val();

            $.ajax({
                url: "{{ route('product.comment',$detail) }}",
                type: "POST",
                dataType: 'html',
                data:{
                    content:content,
                    id:id_product,
                    email:email_user,
                },
                success: function(response){
                    $('#showComment').prepend(response);
                    $('#content').val("");
                    $(".rowComment").last().hide();
                }
            });
        });
    @endif



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

        if(keyword.length == 0)
        {
            $("#showSearch").text("");

        }
        else
        {
            $.ajax({
                url:"http://127.0.0.1:8000/liveSearch/"+keyword,
                type:"GET",
                success:function(data){
                    $('#showSearch').html(data);
                }
            });
        }

    });

    function filter_data()
    {
        
        
    }

    function get_filter()

    
});

</script>
