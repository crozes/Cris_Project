<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>myProducts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="cssFa/fontawesome-free-5.5.0-web/css/all.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/myStyle.css" />
    <script src="js/bootstrap.js"></script>
    <script src="js/jQuery.js"></script>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
<a class="navbar-brand text-light" href="index.php">myStore</a>
  <form class="form-inline">
    <input id="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <i class="fas fa-search text-light"></i>
  </form>
  <div>
    <a href="shoppingcart.php" class="headerButton"><i class="fa fa-shopping-cart ml-3 mr-3 text-light" aria-hidden="true"><span class="badge badge-danger mr-2 ml-2" id="cart-number">0</span></i></a>
    <a href="login.php" class="btn btn-secondary btn-lg" role="button" aria-pressed="true">LogIn</a>
    <a href="signup.php" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Sign Up</a>
  </div>
</nav>