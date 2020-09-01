<html>
<head>
    <meta name="csrf_token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('css/main.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://js.pusher.com/5.0/pusher.min.js"></script>

    <script>
        Pusher.logToConsole = true;
        var pusher = new Pusher('f61399c0abc4029800a1', {
            encrypted: true,
            cluster: "ap1"
        });

        var channel  = pusher.subscribe("channel-chat");
        channel.bind("ChatEvent",function(data){

            $("#showMessages").append(`
                <div class='rightMessage'>
                    <span>${data.user.name}: </span>${data.message}
                </div>
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
                    echo "<option>".$str.$row->name."</option>";
                    unset($type[$key]);
                    menu($type,$row->id,$str.'|--');
                }
            }
        }

    ?>
    <select id='show'>
        <?php menu($type) ?>
    </select>


    <div class='container'>
        <h5>Chat Application</h5>
        <form method="POST" action="{{ url('chat') }}">
            @csrf
            <div id='showMessages'>
                @foreach($messages as $message)
                @if($message->user_id === Auth::id())
                <div class='leftMessage'>
                    <span>You: </span>{{ $message->message }}
                </div>
                @else
                <div class='rightMessage'>
                    <span>{{ App\User::find($message->user_id)->name }}: </span>{{ $message->message }}
                </div><br>
                @endif
                @endforeach
            </div>

            <input type='text' name='message' placeholder="Enter message...">
            <input type='submit' name='sendMessage' id='sendMessage' value='Send'>
        </form>
    </div>
</body>
</html>



