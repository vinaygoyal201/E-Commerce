<?php include "include/db.php"; ?>
<!DOCTYPE html>
<html>
	<head>
		<title>Online Shopping</title>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/styles.css">
		<link rel="stylesheet" href="css/font-awesome.css">
		<link rel="stylesheet" href="css/lightbox.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/lightbox.js"></script>
	</head>
	<body>
		<?php include 'include/header.php'; ?>
		<div class="container">
			<div class="row">
				<?php
					if(isset($_GET['category'])){
						$sql="SELECT * FROM products WHERE prod_cat='$_GET[category]'";
						$run= mysqli_query($conn,$sql);
						while($rows=mysqli_fetch_assoc($run))
						{
							$discounted_price=$rows['prod_price']-$rows['prod_disc'];
							$prod_title=str_replace(' ','-',$rows['prod_title']);
							echo "
								<div class='col-md-3'>
									<div class='col-md-12 single-item noPadding'>
										<div class='top'>
											<img src='$rows[prod_image]' class='img-responsive'>
										</div>
										<div class='bottom'>
											<h3 class='item-title'><a href='product.php?prod_title=$prod_title&prod_id=$rows[prod_id]'>$rows[prod_title]</a></h3>
											<div class='pull-right cutted-price text-muted'><del>$ $rows[prod_price]/=</del></div>
											<div class='clearfix'></div>
											<div class='pull-right discounted-price'>$ $discounted_price/=</div>
										</div>
									</div>
								</div>
							";
						}
					}
					
				?>
			</div>
		</div>
		<div class="clearfix"></div>
		<br><br><br><br>
		<?php include 'include/footer.php' ?>
	</body>
</html>