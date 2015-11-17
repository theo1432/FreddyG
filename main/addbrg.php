<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Aplikasi Surat Jalan</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		
	</head>
	<body>
		<div class="container">
			<!-- Top Navigation -->
			
			<header>
				<h1>PT Lambang Cahaya Berkat<span>Aplikasi Surat Jalan</span></h1>	
				<nav class="codrops-demos" align="center">
				
					<ul id="css3" >
						<li class="menu"><a href="#">Pengiriman</a>
							<ul>
								<li><a href="vlpengiriman.php">View List Pengiriman</a></li>
								<li><a href="addpengiriman.html">Add Data Pengiriman</a></li>
								
							</ul>
						</li>
						<li class="menu"><a href="#">Penerimaan</a>
							<ul>
								<li><a href="vlpenerimaan.html">View List Penerimaan</a></li>
								<li><a href="addpenerimaan.html">Add Data Penerimaan</a></li>
					
			
							</ul>
						</li>
						<li class="menu"><a href="#">Sistem</a>
							<ul>
								<li><a href="vacc.html">View All Accounts</a></li>
								<li><a href="cpacc.html">Change Password</a></li>
								
							</ul>
						</li>
                        <li class="menu"><a href="#">Data</a>
							<ul>
								<li><a href="vbrg.php">View All Barang</a></li>
								<li><a href="addbrg.php">Add Data Barang</a></li>
								<li><a href="vdist.php">View All Distributor</a></li>
								<li><a href="adddist.php">Add Data Distributor</a></li>
								
							</ul>
						</li>
                        <li class="menu"><a href="logout.php">Logout</a>
						
						</li>
					</ul>
				</nav>
			</header>
			<div class="component">
				<h2>Tambahkan Data Barang</h2>
				<br>
				<?php
include "../koneksi.php";

if (isset($_POST['Input'])) {
	$kdbrg = $_POST['kdbrg'];
	$nmbrg = $_POST['nmbrg'];
	
	
	if (strlen ($kdbrg) < 1 ) {
		die ("Masukkan Kode Barang");	
	}
	if (strlen ($nmbrg) < 1 ) {
		die ("Masukkan Nama Barang");	
	}
	
	

	//insert ke tabel
	$query = "INSERT INTO tbl_barang VALUES('$kdbrg','$nmbrg')";
	$sql = mysql_query ($query) or die (mysql_error());
	
		if ($sql) {
			echo "<h2><font color=blue>New Data Inserted</font></h2>";	
		} else {
			echo "<h2><font color=red>Data Not Inserted</font></h2>";	
		}
	
	
}
?>
<div id="content">
	
	
	<FORM ACTION="" METHOD="POST" NAME="input" enctype="multipart/form-data">
		<table cellpadding="0" cellspacing="0" border="0" width="700">
			<tr>
				<td width="200"><b>Kode Barang</b></td>
				<td>: </td>
				<td><b><input type="text" name="kdbrg" size="50" maxlength="100"></b></td>
			</tr>
			
			<tr>
				<td width="100px"><b>Nama Barang</td>
				<td width="20px"> : </td></b></td>
				<td> <input type="text" name="nmbrg" size="50" maxlength="100"> </td>
			</tr>
			
			
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td><td>&nbsp;</td>
				<td>&nbsp;&nbsp;<input type="submit" name="Input" value="Tambah Barang">&nbsp;
				<input type="reset" name="reset" value="Reset"></td>
			</tr>
		</table>
	</FORM>
</div>
				
			</div>
			
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
	</body>
</html>