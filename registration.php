

<?php
session_start();
?>



<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style type="text/css">
  .register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
</style>
<body>

<?php
include '../include/connection.inc.php';
if(isset($_POST['submit'])){
  $username = mysqli_real_escape_string($con, $_POST['username']);
  $email = mysqli_real_escape_string($con, $_POST['email']);
  $mobile = mysqli_real_escape_string($con, $_POST['mobile']);
  $password = mysqli_real_escape_string($con, $_POST['password']);
  $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);

  $pass = password_hash($password,PASSWORD_BCRYPT);
  $cpass = password_hash($cpassword,PASSWORD_BCRYPT);

  $emailquery = "select * from register where email='$email'";
  $query=mysqli_query($con,$emailquery);
  $emailcount=mysqli_num_rows($query);
  if($emailcount>0){
  ?>
    <script type="text/javascript">
      alert("Email already exist");
    </script>
    <?php
}else{
  if($password===$cpassword){
    $insertquery= "INSERT INTO register(username, email, mobile, password, cpassword) VALUES ('$username','$email','$mobile','$pass','$cpass')";
  $iquery=mysqli_query($con, $insertquery);
  if($iquery){
    ?>
    <script type="text/javascript">
      alert("Registration successful");
    </script>
    <?php
  }else{
    ?>
    <script type="text/javascript">
      alert("Not successful");
    </script>
    <?php
  }
}else{
?>
    <script type="text/javascript">
      alert("Password are not matching");
    </script>
    <?php
}
}


 }
?>






<div class="container register">
  <div class="row">
    <div class="col-md-3 register-left">
      <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
      <h3>Welcome</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
      <a href="login.php" style="color: white;">Already a user?<input type="submit" name="" value="Login"/></a><br/>
    </div>
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']);?>" method="POST" class="col-md-9 register-right">
  <div class="col-md-9 register-right">
    <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
    <h3 class="register-heading">BECOME A CUSTOMER</h3>
    <div class="row register-form">
    <div class="col-md-6">
    <div class="form-group">
    <input type="text" name="username" class="form-control" placeholder="User Name *" required>
  </div>
  <div class="form-group">
    <input type="email" name="email" class="form-control" placeholder="Your Email *" required>
  </div>
  <div class="form-group">
    <input type="text" name="mobile" class="form-control" placeholder="Your Phone *" required>
  </div>    
  </div>
  <div class="col-md-6">
  <div class="form-group">
    <input type="password" name="password" class="form-control" placeholder="Password *" required>
  </div>
  <div class="form-group">
    <input type="password" name="cpassword" class="form-control"  placeholder="Confirm Password *" required>
  </div>
    <input type="submit" name="submit" class="btnRegister"  value="Register"/>
  </div>
  </div>
  </div>
  </div>
  </div>
</form>
  </div>
</div>
</body>
</html>
