<?php
session_start();
include_once('../../assets/Database/DBMySql.php');$db=new DBMySql;

$db->NonQuery("delete from `bookings` where `Status`='Expired';");

$sql="Select * from bookings";
$Users=$db->GetResult($sql);
$arr=array();
while($row= $Users->fetch_assoc()){
    array_push($arr,$row);
}
echo json_encode($arr);

?>