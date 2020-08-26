<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="csrf_token" content="{{ csrf_token() }}">
  <link rel="stylesheet" type="text/css" href="{{asset('css/app.css')}}">
    <style>
        .list-group{
            overflow-y: scroll;
            height: 200px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row" id="app">
            <div class="offset-4 col-4">
                <li class="list-group-item active">Chat room</li>
                <ul class="list-group">
                    <message
                        v-for="value in chat.message"
                        :key=value.index
                    >
                    @{{ value }}
                    </message>
                </ul>
                <input type="text" class="form-control" placeholder="Type your message here..." v-model="message" @keyup.enter="send">

            </div>
        </div>
    </div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://js.pusher.com/5.0/pusher.min.js"></script>

  <script src="{{ asset('js/app.js') }}"></script>
</html>
