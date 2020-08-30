<?php
session_start();
//$_SESSION["UID"]="1";
include_once('../../assets/Database/DBMySql.php');$db=new DBMySql;
$UserName='Rachit';if(isset($_GET['UserName'])){$UserName=$_GET['UserName']; }
$Mobile='9988776655';if(isset($_GET['Mobile'])){$Mobile=$_GET['Mobile']; }
$Time='09:00:00';if(isset($_GET['Time'])){$Time=$_GET['Time']; }
$MovieName='Avengers';if(isset($_GET['MovieName'])){$MovieName=$_GET['MovieName']; }

if((int)$db->NonQuery("SELECT COUNT(*) FROM `bookings` WHERE `MovieName` = '".$MovieName."'")<=20)
{
    $sql="INSERT INTO `bookings`(`UserName`,`MovieName`,`MovieTime`,`Mobile`,BookingTime) VALUES('".$UserName."','".$MovieName."','".$Time."','".$Mobile."',NOW());";
    $db->NonQuery($sql);
    $Users=$db->GetResult('Select * from bookings');
    $arr=array();
    while($row= $Users->fetch_assoc()){
        array_push($arr,$row);
    }
}
else
{
    $arr=array('Error');

}

echo json_encode($arr);

?>