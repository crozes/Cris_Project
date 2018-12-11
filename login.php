<?php
    include 'config.php';
    session_start();
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $myuseremail = mysqli_real_escape_string($conn,$_POST['email']);
        $mypassword = mysqli_real_escape_string($conn,$_POST['password']);

        $sql = "SELECT * FROM Users WHERE UsersMail = '$myuseremail' and UsersPass = '$mypassword';";
        echo $sql;
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);

        $count = mysqli_num_rows($result);

        if($count == 1) {
            $_SESSION['login_user'] = $row["UsersFirstName"];
            header("location: index.php");
        }else {
            $error = '<div class="alert alert-danger" role="alert">
                        Email or Password not good !
                    </div>';
        }
    }
    
?>
<?php include 'header.php' ?>
    <div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-4">Sign in</h1>
        <p class="lead">Blablabla</p>
    </div>
    </div>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-lg-5">
                <?php if($error != ''){echo $error;} ?>
                <form class="form-signin" action="login.php" method="POST">
                    <div class="input-group mb-3">
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required="" autofocus="">
                    </div>
                    <div class="input-group mb-3">
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required="">
                    </div>
                    <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                    <p class="mt-5 mb-3 text-muted">Don't have an account? <a href="signup.php">Sign up</a></p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>