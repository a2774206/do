<?php
	 
	//连接到数据库
	$con=mysqli_connect("localhost","root","root");
	if($con)
	{
			//连接数据库
			mysqli_select_db( $con,"web");
			mysqli_set_charset($con,'utf8');
			//echo json_encode($_POST['name']);
			if($_POST['name'] =='login')
			{
			$sql = "select * from login where loginer=".$_POST['loginer'];
			$result = mysqli_query($con,$sql);
			$result2 = mysqli_fetch_all($result);//查询需要写
			echo json_encode($result2);
			}
		

	}
	?>

