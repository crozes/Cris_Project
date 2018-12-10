<?php include 'header.php' ?>
    <div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-4">Sign up</h1>
        <p class="lead">Blablabla</p>
    </div>
    </div>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-lg-5">
                <form class="form-signup" method="POST" action="#">
                    <div class="input-group mb-3">
                        <label for="firstName" class="sr-only">First Name</label>
                        <input type="text" id="firstName" class="form-control" placeholder="First Name" required="" autofocus="">
                    </div>
                    <div class="input-group mb-3">
                        <label for="firstName" class="sr-only">Last Name</label>
                        <input type="text" id="firstName" class="form-control" placeholder="Last Name" required="" autofocus="">
                    </div>
                    <div class="input-group mb-3">
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                    </div>
                    <div class="input-group mb-3">
                      <label for="inputPassword" class="sr-only">Password</label>
                      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                    </div>
                    <div class="input-group mb-3">
                      <label for="inputPassword2" class="sr-only">Repeat Password</label>
                      <input type="password" id="inputPassword2" class="form-control" placeholder="Repeat Password" required="">
                    </div>
                    <button type="submit" class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
                    <p class="mt-5 mb-3 text-muted">You have already an account? <a href="login.php">Sign In</a></p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>