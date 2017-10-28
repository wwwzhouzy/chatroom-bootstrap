<%--
  author Tency
  
  Date 2016/11
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">

	<style>
		body {
			padding:20px;
		}
		#console {
			height: 400px;
			overflow: auto;
		}
		.username-msg {color:orange;}
		.connect-msg {color:green;}
		.disconnect-msg {color:red;}
		.send-msg {color:#888}
	</style>


	<script src="<%=request.getContextPath()%>/js/socket.io/socket.io.js"></script>
        <script src="<%=request.getContextPath()%>/js/moment.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>

	<script>

        var userName = '${userName}';

		var socket =  io.connect('http://localhost:9092');

		socket.on('connect', function() {
			$('#console').prepend('<span class="connect-msg">Client has connected to the server!</span>');
		});

		socket.on('chatevent', function(data) {
		
			output(data);
		});

		socket.on('disconnect', function() {
			$('#console').prepend('<span class="disconnect-msg">The client has disconnected!</span>');
		});

                function sendDisconnect() {
                        socket.disconnect();
                }

		function sendMessage() {
                        var message = $('#msg').val();
                        $('#msg').val('');

                        var jsonObject = {userName: userName,
										  type:0,
                                          message: message};
                        socket.emit('chatevent', jsonObject);
		}

		function output(data) {
            var currentTime = "<span class='time'>" +  moment().format('HH:mm:ss') + ":</span><br/>";
			if(userName == data.userName){
				var element = $("<div style='text-align:right'>" + currentTime + userName+": " + data.message + "</div>");
				$('#console').append(element);
			}else{
                var element = $("<div>" + currentTime + data.userName+": " + data.message + "</div>");
				$('#console').append(element);
			}
		}

        $(document).keydown(function(e){
            if(e.keyCode == 13) {
                $('#send').click();
            }
        });
	</script>
</head>

<body>

	<h1>Netty-socketio Demo Chat</h1>

	<br/>

	<div id="console" class="well">
	</div>

        <form class="well form-inline" onsubmit="return false;">
           <input id="msg" class="input-xlarge" type="text" placeholder="Type something..."/>
           <button type="button" onClick="sendMessage()" class="btn" id="send">Send</button>
           <button type="button" onClick="sendDisconnect()" class="btn">Disconnect</button>
        </form>



</body>

</html>
