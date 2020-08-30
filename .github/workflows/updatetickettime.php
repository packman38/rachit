<?php
session_start();
//$_SESSION["UID"]="1";
include_once('../../assets/Database/DBMySql.php');$db=new DBMySql;
$BID='1';if(isset($_GET['BID'])){$BID=$_GET['BID']; }

$Time='09:00:00';if(isset($_GET['Time'])){$Time=$_GET['Time']; }


$sql="update `bookings` set `MovieTime` = '".$Time."' where BID=".$BID;
$db->NonQuery($sql);
$Users=$db->GetResult('Select * from bookings where BID='.$BID);
$arr=array();
while($row= $Users->fetch_assoc()){
    array_push($arr,$row);
}
echo json_encode($arr);

?>