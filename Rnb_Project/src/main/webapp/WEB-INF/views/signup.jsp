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
	<script src="assets/js/signup.js"></script>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<body>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		
		<div id="signupbox" style="margin-top: 50px"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="signup-alert"
						class="alert alert-danger col-sm-12"></div>

					
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
								<input type="text" class="form-control" id="id"
									name="id" placeholder="UserId">
							</div>
						</div>
						<div class="form-group">
							<label for="signup_pw" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Password">
							</div>
						</div>

						<div class="form-group">
							<label for="signup_name" class="col-md-3 control-label">
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="name"
									name="name" placeholder="Name">
							</div>
						</div>
						<div class="form-group">
							<label for="signup_phone" class="col-md-3 control-label">
								Phonenumber</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="phonenumber"
									name="phonenumber" placeholder="Phonenumber">
							</div>
						</div>
						<div class="form-group">
							<label for="signup_age" class="col-md-3 control-label">
								Age</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="age"
									name="age" placeholder="Age">
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