<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RnB_Project</title>
</head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<script src="assets/js/login.js"></script>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<body>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
		
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					
						<form name="login_form" id="login_form" class="form-horizontal"
						 role="form" method="post" action="">
							<input type="hidden" name="login_formaction" value="signin">
							
						
						<div class="form-group">
							<label for="signin_id" class="col-md-3 control-label">UserId</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="id"
									name="id" placeholder="UserId">
							</div>
						</div>

						<div class="form-group">
							<label for="signin_pw" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Password">
							</div>
						</div>


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
									Don't have an account! 
									
										<a href="/dev/signup">Sign up Here</a>
								</div>
							</div>
						</div>
					



				</div>
			</div>
		</div>
	</div>
		
</body>
</html>