<?php
		include "koneksi.php";
		session_start();
		
		$user = $_POST['user'];
		$password = SHA1($_POST['password']);
		$_SESSION['user']=$user;
?>

<?php
	$login = mysql_query("select * from tbl_pengguna where user = '" .$user ."'");
	
	
	$result = mysql_fetch_array($login);
		
		if($user==$result['user'] && $password==$result['password'] && $result['privilege']=='Main'){

			header('Location: main\indexmain.php');
		}
		else if($user==$result['user'] && $password==$result['password'] && $result['privilege']=='Penerimaan'){

			header('Location: penerimaan\indexpenerimaan.php');
		}
		else if($user==$result['user'] && $password==$result['password'] && $result['privilege']=='Pengiriman'){

			header('Location: pengiriman\indexpengiriman.php');
		}
		else{
			echo "<script>alert('Password Anda salah !')</script>";
			echo "<meta http-equiv='refresh' content='0;index.php'>";
		
			
		}
	
?>