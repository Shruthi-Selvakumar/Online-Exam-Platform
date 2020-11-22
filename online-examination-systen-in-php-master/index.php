<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Online Quiz Application</title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>  
 <link rel="stylesheet" href="css/main.css?version=1">  

 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>

<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<script>
function validateForm() 
{
  var y = document.forms["form"]["name"].value;	var letters = /^[A-Za-z]+$/;if (y == null || y == "") 
  {
    alert("Name must be filled out.");
    return false;
  }
  var x = document.forms["form"]["email"].value;var atpos = x.indexOf("@");
  var dotpos = x.lastIndexOf(".");
  if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
  {
    alert("Not a valid e-mail address.");return false;
  }
  var a = document.forms["form"]["password"].value;
  if(a == null || a == "")
  {
    alert("Password must be filled out");return false;
  }
  if(a.length<5 || a.length>25)
  {
    alert("Passwords must be 5 to 25 characters long.");
    return false;
  }
  var b = document.forms["form"]["cpassword"].value;
  if (a!=b)
  {
    alert("Passwords must match.");
    return false;
  }
}
</script>


</head>

<body>

<div class="header">
<div class="row">
<div class="col-lg-9">
<span class="logo">Online Quiz Application</span></div>
<div class="col-md-2 ">
<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Log-In</b></span></a></div>
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:black">Log-In</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" >

<fieldset>
<div class="form-group">
  <label class="col-md-3 control-label" for="email"></label>  
  <div class="col-md-6">
  <input id="email" name="email" placeholder="Enter your Email-ID" class="form-control input-md" type="email">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="password"></label>
  <div class="col-md-6">
    <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">   
  </div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Log-In</button>
		</fieldset>
</form>
      </div>
    </div>
  </div>
</div>


<div class="col-md-1 ">
<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-Log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Sign-Up</b></span></a></div>
<div class="modal fade" id="myModal1">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:black">Sign-Up</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" >
<fieldset>

<div class="form-group">
  <label class="col-md-12 control-label" for="name"></label>  
  <div class="col-md-12">
  <input id="name" name="name" placeholder="Enter Your Name" class="form-control input-md" type="text">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12 control-label title1" for="email"></label>
  <div class="col-md-12">
    <input id="email" name="email" placeholder="Enter Your Email-ID" class="form-control input-md" type="email">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12 control-label" for="password"></label>
  <div class="col-md-12">
    <input id="password" name="password" placeholder="Enter Your password" class="form-control input-md" type="password">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-12control-label" for="cpassword"></label>
  <div class="col-md-12">
    <input id="cpassword" name="cpassword" placeholder="Confirm Password" class="form-control input-md" type="password">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
    <input  type="submit" class="sub" value="Sign-Up" class="btn btn-primary"/>
  </div>
</div>

</fieldset>
</form>
      </div>
    </div>
  </div>
</div>

</div>
</div>

<div class="bg1">
<div class="col-md-5">
<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<span class="title1"><b>contact</b></span></a></div>
<div class="modal fade" id="myModal2">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:black">About</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" >
<fieldset>

<div class="form-group">
  <div class="col-md-12">
    <h2>Online Quiz Portal By - <h2>
        <div class="col-md-12">
        <h6> Meghana Rao - BL.EN.U4CSE18071 <h6>
        <h6>Navya KNSS - BL.EN.U4CSE18079<h6>
        <h6>R Harish - BL.EN.U4CSE18097<h6>
        <h6>Raghu Ram Chadalawada - BL.EN.U4CSE18098<h6>
        <h6>S Shruthi - BL.EN.U4CSE18104 <h6>
    </div>
  </div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>

<div class="col-md-2">
<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>&nbsp;<span class="title1"><b>About</b></span></a></div>
<div class="modal fade" id="myModal3">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:black">About</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" >
<fieldset>

<div class="form-group">
  <div class="col-md-12">
    <h2>About - <h2>

    </div>
  </div>
</div>
</fieldset>
</form>


</div>
</div>
</div>

</body>
</html>

