<html>
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
		<?php
			include "../koneksi.php";

			if (isset($_GET['kode_barang'])) {
				$kode = $_GET['kode_barang'];
			} else {
				die ("Error. No item Selected! ");	
			}

			$query = "SELECT kode_barang, nama_barang FROM tbl_barang WHERE kode_barang='".$kode."'";
			$sql = mysql_query ($query);
			$hasil = mysql_fetch_array ($sql);
			$kode = $hasil['kode_barang'];
			$nama = $hasil['nama_barang'];
			

			if (isset($_POST['Edit'])) {
				$kode = $_POST['kode'];
				$nama = $_POST['nama'];
				
				
				
			$query2 = "UPDATE tbl_barang SET kode_barang='".$kode."',nama_barang='".$nama."' WHERE kode_barang='".$kode."'";
				$sql2 = mysql_query ($query2);
			if ($sql2) {
				echo "<h2><font color=blue>Edit Success!</font></h2>";	
			} else {
				echo "<h2><font color=red>Edit Failed</font></h2>";	
					
			}
			
			}
			?>
			
		<div id="content">
			<h2>Dota 2 Trading Forum | Admin | Edit Items</h2>
			
				<FORM ACTION="" METHOD="POST" NAME="input" enctype="multipart/form-data">
				<table cellpadding="0" cellspacing="0" border="0" width="700">
					
					<tr>
						<td>&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width="100px"><b>Kode Barang</td>
						<td width="20px"> : </td></b>
						<td> <input type="text" name="kode" size="50" maxlength="100" value="<?=$kode?>"> </td>
					</tr>
					
					
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td width="100px"><b>Nama Barang</td>
						<td width="20px"> : </td></b>
						<td> <input type="text" name="nama" size="50" maxlength="100" value="<?=$nama?>"> </td>
					</tr>
					<tr>	
						<td>&nbsp;&nbsp;</td>
					</tr>
					
					<tr>
						<td>&nbsp;</td><td>&nbsp;</td>
						<td>&nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Data">&nbsp;<input type="reset" name="reset" value="Reset"></td>
					</tr>
				</table>
			</FORM>
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
	</body>
</html>
