<%-- 
    Document   : login
    Created on : Nov 5, 2018, 3:39:04 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
<!--	<link rel="stylesheet" href="./css/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="./css/login.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body class="text-center">
	<div class="container">
		<h1><a class="blog-header-logo text-dark" href="index.html">PTIT</a></h1>
                <form action="../LoginServlet" class="form-signin" method="post">
			<h1 class="h3 mb-3 font-weight-normal">Đăng nhập</h1>
			<label for="inputEmail" class="sr-only">Username</label>
                        <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Username" value="B15DCCN660" required autofocus >
			<label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" value="vuong19971015" required>
			<div class="checkbox mb-3">
				<label>
					<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-outline-primary btn-block return" type="submit">Đăng nhập</button>
			<a href="index.html" role="button" class="btn btn-lg btn-outline-primary btn-block return">Quay lại</a>
			<p class="mt-5 mb-3">&copy; 2017-2018</p>
		</form>
	</div>
</body>
</html>