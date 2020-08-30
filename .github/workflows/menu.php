<?php if(session_status()==1)session_start(); ?>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header"><a class="navbar-brand" href="#"><i class="fa fa-video-camera"></i> Movie Ticket Booking</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggle collapsed"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li role="presentation"><a href="index.php">Home </a></li>
                <?php if(!isset($_SESSION['UID'])){?>
                <li role="presentation"><a href="login.php">Login </a></li>

                <?php }else {?>
                
                <li role="presentation"><a href="tickets.html">Tickets</a></li>
                <li role="presentation"><a href="assets/phpscript/logout.php">Logout</a></li>
                <?php } ?>
            </ul>
    </div>
    </div>
</nav>