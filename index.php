<?php
	 
	//连接到数据库
	$con=mysqli_connect("localhost","root","root");
	if($con)
	{
			//连接数据库
			mysqli_select_db( $con,"web");
			mysqli_set_charset($con,'utf8');
			//echo json_encode($_POST['name']);
			
		
		
			if($_POST['name'] =='8')
			{
			$sql = "select * from login where loginer='".$_POST['loginer']."'";
			$result = mysqli_query($con,$sql);
			$result2 = mysqli_fetch_all($result,MYSQLI_ASSOC);//查询需要写
			echo json_encode($result2);	
			}
		
		
		
		
		
		
		if( $_POST['name']== '1'){
			$sql = "select * from tag";
			$result = mysqli_query($con,$sql);
			$result1 = mysqli_fetch_all($result);//查询需要写
			echo json_encode($result1);
			}
		
	
		
		
		if($_POST['name'] =='2'){
			//echo json_encode($_POST['tag']);
			$sql = "update tag set tag ='".$_POST['tag']."' where uid=".$_POST['uid'];
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
		if($_POST['name'] =='3'){
			$sql = "delete from tag where uid =".$_POST['uid'];
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
		if($_POST['name'] =='0'){
			$sql = "insert into tag(tag,time) value('".$_POST['tag']."','".$_POST['time']."')";
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
	}
	
?>