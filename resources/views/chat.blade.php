<html>
<head>
    <meta name="csrf_token" content="{{ csrf_token() }}">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://js.pusher.com/5.0/pusher.min.js"></script>
    <style>
        #showMessages{
            border: 1px solid blue;
            height: 400px;
            width: 300px;
            overflow: scroll;
            overflow-x: hidden;

        }
        .title{
            font-weight: bold;
        }

        .menu1{
            position: absolute;
        }

        .menu2{
            position: relative;
            display:none;
        }

        .menu1>li:hover .menu2{
            display: block;
        }

        .menu3{
            display: none;
        }


    </style>
    <script>
            /*$(document).ready(function(){
                $("#message").on('keyup',function(){
                    if($(this).val().length !== 0)
                    {
                        $("#typing").html("typing...");
                    }else{
                        $("#typing").html("");
                    }
                });
            });*/
        Pusher.logToConsole = true;
        var pusher = new Pusher('{{env('PUSHER_APP_KEY')}}', {
            encrypted: true,
            cluster: "ap1"
        });

        var channel  = pusher.subscribe("channel-chat");
        channel.bind("ChatEvent",function(data){

            if(data.user.id == {{Auth::id()}}){
                var name = "You";
            }else{var name = data.user.name}

            $("#showMessages").append(`
                <br><div>
                    <span class='title'>${name}: </span>${data.message}
                </div><br>
            `);
        });





    </script>
</head>
<body>

    <?php
        function menu($type, $parent = 0, $str = '')
        {
            foreach($type as $key => $row)
            {
                if($row->parent == $parent)
                {
                    echo "<li>".$row->name.'<ul><li>'.$str.'</li></ul></li>';
                    unset($type[$key]);
                    menu($type,$row->id,$str.'--');
                }
            }
        }

    ?>

    <div class='container'>


        <h2>Chat Application</h2>
        <form method="POST" action="{{ url('chat') }}">
            @csrf
            <div id='showMessages'>
                @foreach($messages as $message)
                @if($message->user_id === Auth::id())
                <br><div>
                    <span>You: </span>{{ $message->message }}
                </div><br>
                @else
                <br><div>
                    <b>{{ App\User::find($message->user_id)->name }}: </b>{{ $message->message }}
                </div><br>
                @endif
                @endforeach

            </div><span id='typing'></span>

            <input type='text' name='message' placeholder="Enter message..." id='message'>
            <input type='submit' name='sendMessage' id='sendMessage' value='Send'>
        </form>
    </div>

    <script>
        $(document).ready(function(){

            $.ajaxSetup({
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf_token"]').attr('content')
                }
            });

            $("#sendMessage").on('click',function(e){
                e.preventDefault();
                var message = $("#message").val();
                $.ajax({
                    url: '{{ route('postChat') }}',
                    data: {ajax_message:message},
                    type: 'POST',
                    dataType: 'html',
                    success:function(response){
                        $("#message").val("");
                        $(".title").css('font-weight','normal');

                    }
                });
            });
        });
    </script>
</body>
</html>



