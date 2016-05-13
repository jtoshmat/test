<?php require_once 'template/header.php'?>

<div class="container">
    <form class="form-login" method="post" action="backend/register.php">
        <h2 class="form-login-heading">Registration form</h2>
        <?php
        if(isset($_REQUEST['error'])) {
            echo "<div class='alert alert-danger'>Error:{$_REQUEST['error']}</div>";
        }
        if(isset($_REQUEST['message'])) {
            echo "<div class='alert alert-success'>{$_REQUEST['message']}</div>";
        }

        ?>
        <label class="sr-only" for="inputEmail">Email address</label>
        <input name="email" type="email" autofocus="" required="required" placeholder="Email address" class="form-control" id="email">

        <label class="sr-only" for="inputName">Your Name</label>
        <input name="name" type="text" autofocus="" required="required" placeholder="Your Name" class="form-control" id="name">

        <label class="sr-only" for="inputUsername">Email address</label>
        <input name="username" type="email" autofocus="" required="" placeholder="Username" class="form-control" id="username">

        <label class="sr-only" for="inputPassword">Password</label>
        <input name="password" type="password" required="required" placeholder="Password" class="form-control" id="password">

        <button type="submit" class="btn btn-lg btn-primary btn-block">Sign up</button>
    </form>

</div>
<?php require_once 'template/footer.php'?>