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
				<h2>Lihat Semua Data Barang</h2>
				<br>
				<FORM ACTION="" METHOD="POST" NAME="input" enctype="multipart/form-data">
			Cari Nama Barang
				<input type="text" name="cari" size="50" maxlength="100"> 
				<input type="submit" name="cri" value="Search"></form>
				<?php
					
					include "../koneksi.php";
					echo"<table>
								<thead>
									<tr>";
						echo"<th>Kode Barang</th>";
						echo"<th>Nama Barang</th>";
						echo"<th> </th></tr></thead>";
					if (isset($_POST['cri'])) {
					$cari = mysql_real_escape_string ($_POST['cari']);
						$query = "SELECT * FROM 'tbl_barang' order by kode_barang where nama_barang like '%".$cari."%'";
					
					}
					else{
						$query = "SELECT * FROM tbl_barang order by kode_barang";
					
					}
						$sql = mysql_query ($query);
					while ($hasil = mysql_fetch_array($sql)) {
						
						$kode = $hasil['kode_barang'];
						$nama = $hasil['nama_barang'];

						
						echo"<tbody><tr><td class='user-name'>".$kode."</td><td class='user-email'>".$nama."</td><td>
							<table>
								<tr>
									<td><a href='updatebrg.php?&kode_barang=$kode'>Update</a></td></tr>
									<tr><td><a href='deletebrg.php?&kode_barang=$kode'>Delete</a></td>
								</tr>
							</table></tr>";
						
						}echo "</tbody></table>	";
					
					$num_results = mysql_num_rows($sql); if ($num_results < 1){ echo "No items found.<br><br>"; }
						
					if (!$hasil) {   die('Invalid query: ' . mysql_error());}
					
				?>
				
			</div>
			
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
	</body>
</html>