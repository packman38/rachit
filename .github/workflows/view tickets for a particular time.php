<?php
session_start();
//$_SESSION["UID"]="1";
include_once('../../assets/Database/DBMySql.php');$db=new DBMySql;
$Time='';if(isset($_GET['Time'])){$Time=$_GET['Time']; }


$sql="Select * from bookings;";
if($Time!='')$sql="Select * from bookings where MovieTime='".$Time."'";
$Users=$db->GetResult($sql);
$arr=array();
while($row= $Users->fetch_assoc()){
    array_push($arr,$row);
}
echo json_encode($arr);

?>