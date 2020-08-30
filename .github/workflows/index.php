<?php
if(session_status()==1)session_start();
//include('assets/database/DBMySql.php');$db=new DBMySql();
//$UID='1';if(isset($_POST['UID'])){$UID=$_POST['UID']; }
//$Users=$db->GetResult('Select * from users where UID='.$UID);
//$arr=array();
//while($row= $Users->fetch_assoc()){
//    array_push($arr,$row);
//}
//echo json_encode($arr,JSON_PRETTY_PRINT);

?>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>MovieTicketBooking</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Hero-Technology.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-Payment-Form.css">
</head>

<body>
        <?php include ("menu.php");?>

    <div class="container">
        <div class="carousel slide" data-ride="carousel" id="carousel-1">
            <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="assets/img/1.jpg" alt="Slide Image"></div>
                <div class="item"><img src="assets/img/2.jpg" alt="Slide Image"></div>
                <div class="item"><img src="assets/img/3.jpg" alt="Slide Image"></div>
                <div class="item"><img src="assets/img/4.jpg" alt="Slide Image"></div>
                <div class="item"><img src="assets/img/5.jpg" alt="Slide Image"></div>
                <div class="item"><img src="assets/img/6.jpg" alt="Slide Image"></div>
                <div class="item"><img src="assets/img/7.jpg" alt="Slide Image"></div>
            </div>
            <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel-1" role="button"
                    data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a></div>
            <ol class="carousel-indicators">
                <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-1" data-slide-to="1"></li>
                <li data-target="#carousel-1" data-slide-to="2"></li>
                <li data-target="#carousel-1" data-slide-to="3"></li>
                <li data-target="#carousel-1" data-slide-to="4"></li>
                <li data-target="#carousel-1" data-slide-to="5"></li>
                <li data-target="#carousel-1" data-slide-to="6"></li>
            </ol>
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="col-md-6">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-caret-square-o-left"></i> New Movies</h3>
                </div>
                <div class="panel-body">
                    <div class="media">
                        <div class="media-left"><a><img class="media-object" src="assets/img/screen.png" width="100"></a></div>
                        <div class="media-body">
                            <h4>Upcomin Shows</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus nisl ac diam feugiat, non vestibulum libero posuere. Vivamus pharetra leo non nulla egestas, nec malesuada orci finibus. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-map-marker"></i> Theaters </h3>
                </div>
                <div class="panel-body">
                    <div class="media">
                        <div class="media-left"><a><img class="media-object" src="assets/img/video-camera.png" width="100"></a></div>
                        <div class="media-body">
                            <h4>Cinemas in City</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus nisl ac diam feugiat, non vestibulum libero posuere. Vivamus pharetra leo non nulla egestas, nec malesuada orci finibus. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>