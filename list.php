<?php
	 
	//连接到数据库
	$con=mysqli_connect("localhost","root","root");
	if($con)
	{
			//连接数据库
			mysqli_select_db( $con,"web");
			mysqli_set_charset($con,'utf8');
			//echo json_encode($_POST['name']);
			
				//1:chaxun
		if( $_POST['name']== '1'){
			$sql = "select * from xq where uid=".$_POST['uid'];
			
			$result = mysqli_query($con,$sql);
			$result1 = mysqli_fetch_all($result);//查询需要写
			echo json_encode($result1);
			}
		if($_POST['name'] =='2'){
			//echo json_encode($_POST['tag']);
			$sql = "update xq set attr ='".$_POST['attrs']."' where id=".$_POST['id'];
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
		if($_POST['name'] =='6'){
			//echo json_encode($_POST['tag']);
			$sql = "update xq set beizhu ='".$_POST['beizhu']."' where id=".$_POST['id'];
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
		if($_POST['name'] =='3'){
			$sql = "delete from xq where id =".$_POST['id'];
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
		if($_POST['name'] =='0'){
			$sql = "insert into xq(uid,attr,beizhu) value('".$_POST['uid']."','".$_POST['attr']."','".$_POST['beizhu']."')";
			$result = mysqli_query($con,$sql);
			echo json_encode($result);
		}
		
		if( $_POST['name']== '10'){
			
			$sql = "select * from xq where uid=".$_POST['uid']." and beizhu like '%".$_POST['attr']."%'";
			$result = mysqli_query($con,$sql);
			$result8 = mysqli_fetch_all($result);//查询需要写
			echo json_encode($result8);
		}
	}
	
?>