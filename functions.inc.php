<?php
include 'include/connection.inc.php';
function pr($arr){
	echo '<pre>';
	print_r($arr);
}
function prx($arr){
	echo '<pre>';
	print_r($arr);
	die();
}
function get_products($con,$table){
	$sql="select * from $table";
	$res=mysqli_query($con,$sql);
	$data=array();
	while($row=mysqli_fetch_assoc($res)){
		$data[]=$row;
	}
	return $data;
}
function get_details($con,$table,$id){
	$sql="select * from $table where id='$id'";
	$res=mysqli_query($con,$sql);
	$data=array();
	while($row=mysqli_fetch_assoc($res)){
		$data[]=$row;
	}
	return $data;
}
function get_element($con,$table,$keyword1,$keyword2){
	$sql="select * from $table where keyword1='$keyword1' && keyword2='$keyword2'";
	$res=mysqli_query($con,$sql);
	$data=array();
	while($row=mysqli_fetch_assoc($res)){
		$data[]=$row;
	}
	return $data;
}
?>