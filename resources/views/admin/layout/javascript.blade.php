<script type="text/javascript">
$(document).ready(function(){

        /* Pusher Notification*/
        var pusher = new Pusher('{{ env('PUSHER_APP_KEY') }}', {
            encrypted: true,
            cluster: "ap1"
        });
        var channel = pusher.subscribe('send-message');
        channel.bind('NotificationEvent', function(data) {
            $('.new-notification').prepend(`
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  ${data.title}
                </strong>
              </span>
              <span class="small float-right text-muted">{{ Carbon\Carbon::parse($notification->created_at)->diffForHumans()}}</span>
              <div class="dropdown-message large" style="width:300px;">${data.content}</div>
            </a>
            `);
            $(".old-notification").last().hide();
        });

        /* Alert Confirm Delete  */
        function ConfirmDelete()
        {
            var check = confirm('Do you want delete ?');
            if(check == true){
              return true;
            }else{
              return false;
            }
        }

        /* Ajax Pagination */
        $('.page-link').on('click',function(event){
            event.preventDefault();
            var page = $(this).attr('href').split('page=')[1];
            fetch_data(page);
        });
        function fetch_data(page){
            $.ajax({
                url: $(location).attr('href')+'?page='+page,
                dataType: 'html',
                success:function(data){
                    $('#showData').html(data);
                }
            });
        }


        /* Preview Image File */
        /*for(var i = 0; i < 3; i++)
        {
            $("#img".i."").change(function(event){
                var reader = new FileReader();
                reader.onload = function(){
                    $("#showImg".i."").attr('src',reader.result)
                };
                reader.readAsDataURL(event.target.files[0]);
            });
        }*/

        $("#img0").change(function(event){
            var reader = new FileReader();
            reader.onload = function(){
                $("#showImg0").attr('src',reader.result)
            };
            reader.readAsDataURL(event.target.files[0]);
        });
        $("#img1").change(function(event){
            var reader = new FileReader();
            reader.onload = function(){
                $("#showImg1").attr('src',reader.result)
            };
            reader.readAsDataURL(event.target.files[0]);
        });
        $("#img2").change(function(event){
            var reader = new FileReader();
            reader.onload = function(){
                $("#showImg2").attr('src',reader.result)
            };
            reader.readAsDataURL(event.target.files[0]);
        });

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf_token"]').attr('content')
        }
    });

    /*$("#add-pro").click(function(e){
        e.preventDefault();
        
        var optradio = $("#optradio").val();
        var name = $("#name").val();
        var mota = $("#mota").val();
        var price = $("#price").val();
        var img0 = $("#img0").val();
        var img1 = $("#img1").val();
        var img2 = $("#img2").val();
        var pa = $("#pa").val();

        $.ajax({
            url: '{{ route("addProduct") }}',
            type: 'POST',
            dataType: 'html',
            data:{
                optradio: optradio,
                name: name,
                mota: mota,
                price: price,
                img0: img0,
                img1: img1,
                img2: img2,
                pa:pa,
            },
            success:function(response){
                $("#showAlert").html(response);
            }
        });
    });*/

});

</script>
