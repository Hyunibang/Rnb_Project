<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<script src="assets/js/login.js"></script>
	<!-- 
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	-->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<body>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
					<!-- 
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<a href="#">Forgot password?</a>
					</div>
					-->
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					
						<form name="login_form" id="login_form" class="form-horizontal"
						 role="form" method="post" action="">
							<input type="hidden" name="login_formaction" value="signin">
							
								<!-- 						
						<div style="margin-bottom: 25px" class="input-group">
							
								<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> 
								<input id="signin_id" type="text" class="form-control" 
								name="signin_id" placeholder="User Id">
						</div>
								-->
						<div class="form-group">
							<label for="signin_id" class="col-md-3 control-label">UserId</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="signin_id"
									name="signin_id" placeholder="UserId">
							</div>
						</div>

						<!-- 
						<div style="margin-bottom: 25px" class="input-group">
							
								<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span>
								<input id="signin_pw" type="password" class="form-control" 
								name="signin_pw" placeholder="Password">
						</div>
						-->
						<div class="form-group">
							<label for="signin_pw" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" id="signin_pw"
									name="signin_pw" placeholder="Password">
							</div>
						</div>
<!-- 
						<div class="input-group">
							<div class="checkbox">
								<label> <input id="login-remember" type="checkbox"
									name="remember" value="1"> Remember me
								</label>
							</div>
						</div>
-->

						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-md-offset-3 col-md-9">
							<!-- <input type="submit" value="Login"> -->
						 	<a href="#" onClick="signinCheck()"
									class="btn btn-success">Login</a> 
							</div>
						</div>
												
					</form>

						<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									Don't have an account! <a href="#"
										onClick="$('#loginbox').hide(); $('#signupbox').show()">
										Sign Up Here </a>
								</div>
							</div>
						</div>
					



				</div>
			</div>
		</div>
		<div id="signupbox" style="display: none; margin-top: 50px"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
					<div
						style="float: right; font-size: 85%; position: relative; top: -10px">
						<a id="signinlink" href="#"
							onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
							In</a>
					</div>
				</div>
				<div class="panel-body">
				
					<form name="sign_form" id="sign_form" class="form-horizontal"
						role="form" action="" method="post">
						<input type="hidden" name="sign_formaction" value="signup">
						<input type="hidden" name="gender" value="Test"> 
						<input type="hidden" name="animation_count" value="0"> <input
							type="hidden" name="movie_count" value="0">
						<div id="signupalert" style="display: none"
							class="alert alert-danger">
							<p>Error:</p>
							<span></span>
						</div>


						<div class="form-group">
							<label for="signup_id" class="col-md-3 control-label">UserId</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="signup_id"
									name="signup_id" placeholder="UserId">
							</div>
						</div>
						<div class="form-group">
							<label for="signup_pw" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" id="signup_pw"
									name="signup_pw" placeholder="Password">
							</div>
						</div>

						<div class="form-group">
							<label for="signup_name" class="col-md-3 control-label">
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="signup_name"
									name="signup_name" placeholder="Name">
							</div>
						</div>
						<div class="form-group">
							<label for="signup_phone" class="col-md-3 control-label">
								Phonenumber</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="signup_phone"
									name="signup_phone" placeholder="Phonenumber">
							</div>
						</div>
						<div class="form-group">
							<label for="signup_age" class="col-md-3 control-label">
								Age</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="signup_age"
									name="signup_age" placeholder="Age">
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<a href="#" onClick="signupCheck()"
									class="btn btn-success">Sign up</a>
							</div>
						</div>
						
					</form>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>