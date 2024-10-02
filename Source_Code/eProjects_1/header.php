<?php

session_start();
require_once('utyls/utility.php');   
require_once('db/dbhelper.php');
$conn = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
mysqli_set_charset($conn, 'utf8');

$limit = 12;
$page = getGet('page');
if($page <=0 || empty($page)) {
    $page = 1;
}

$index = ($page - 1) * $limit;



if(isset($_GET['s'])) {
	$s = $_GET['s'];
	$sql = "select * from products where id_sp like '%$s%' limit $index, $limit";
} else {
	$sql = "select * from products limit $index, $limit";     
}

?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="style_head_vs_last/header.css">
	<link rel="stylesheet" href="style_head_vs_last/footer.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="https://cunghocweb.com/data-out/js/jquery.js"></script>
	<title></title>
</head>
<body>
	<header class="header" id="myHeader">
		<div class="logo">
			<img src="style_head_vs_last/background/logo_cosi.png" style="width: 233px; height: 60px;">
		</div>
		<div class="menu">
			<li><a class="" href="index.php"><i class="fa fa-home" style="color: black; font-size: 20px"></i>Home</a></li>
			<li></li>
			<li><a href="">brand <i class="fa fa-caret-down"></i></a>
				<ul class="brand">
					<?php 
					  $index = 0;
        		$sql= "select * from brand;";
        		$result = mysqli_query($conn,$sql);
        		while ($row = mysqli_fetch_assoc($result)){
					echo '<a href="brand.php?id_brand='.$row['id_brand'].'"><li><span>'.(++$index).'</span>'.$row['brand'].'</li></a>';
        		}               
        	?>
					
				</ul>
			</li>
			<li></li>
			<li><a href="">type <i class="fa fa-caret-down"></i></a>
			<ul class="type">
				<?php 
					  $index = 0;
        		$sql= "select * from type;";
        		$result = mysqli_query($conn,$sql);
        		while ($row = mysqli_fetch_assoc($result)){
					echo '<a href="all_product.php?id_type='.$row['id_type'].'"><li><span>'.(++$index).'</span>'.$row['type'].'</a></li>';
        		}               
        	?>
					
					
			</ul>
			</li>
			<li></li>
			<li><a href="all_Product.php">Product</a></li>
			<li></li>
			<li><a href="compare.php">compare</a></li>
			<li></li>
			<li><a href="contact.php">contact</a></li>
			<li>
              <a href="login.php" style="width: 10px; color: black; float: right">Login</a>
            </li>
		</div>
		<div class="any">	    
				<form action="all_Product.php" class="search-box" method="get">
         		  <input type="text" placeholder="search" name="s">
				  <button class="search-button" type="submit">
          	      <i class="fa fa-search" aria-hidden="true"></i>
                  </button>
                </form>        
		</div>
	</header>
	

</body>
<script type="text/javascript">
        window.onscroll = function() {aFunction()};
        
        var header = document.getElementById("myHeader");
        var sticky = header.offsetTop;
        
        function aFunction() {
          if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
          } else {
            header.classList.remove("sticky");
          }
        }
        
 </script>
</html>