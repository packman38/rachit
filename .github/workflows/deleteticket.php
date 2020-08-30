<?php
session_start();
include_once('../../assets/Database/DBMySql.php');$db=new DBMySql;
$BID='';if(isset($_GET['BID'])){$BID=$_GET['BID']; }

if($BID!='')$db->NonQuery("delete from bookings where BID=".$BID);

$sql="Select * from bookings;";
$Users=$db->GetResult($sql);
$arr=array();
while($row= $Users->fetch_assoc()){
    array_push($arr,$row);
}
echo json_encode($arr);

?>