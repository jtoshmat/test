<?php require_once 'template/header.php'?>

<div class="container">
    <form class="form-login" method="post" action="backend/login.php">
        <h2 class="form-login-heading">Please sign in</h2>
        <?php
        if(isset($_REQUEST['error'])) {
            echo "<div class='alert alert-danger'>Error:{$_REQUEST['error']}</div>";
        }
        if(isset($_REQUEST['message'])) {
            echo "<div class='alert alert-success'>{$_REQUEST['message']}</div>";
        }

        ?>
        <label class="sr-only" for="inputEmail">Email address</label>
        <input name="username" type="email" autofocus="" required="" placeholder="Email address" class="form-control" id="username">
        <label class="sr-only" for="inputPassword">Password</label>
        <input name="password" type="password" required="" placeholder="Password" class="form-control" id="password">
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button type="submit" class="btn btn-lg btn-primary btn-block">Sign in</button>
    </form>

</div>


<?php require_once 'template/footer.php'?>