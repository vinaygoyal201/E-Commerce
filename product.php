<?php include "include/db.php"; ?>
<!DOCTYPE html>
<html>
	<head>
		<title>Product details</title>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/styles.css">
		<link rel="stylesheet" href="css/font-awesome.css">
		<link rel="stylesheet" href="css/lightbox.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/lightbox.js"></script>
		<style>
			.btn{
				height:70px;
				font-size:40px;
			}
		</style>
	</head>
	<body>
		<?php include 'include/header.php'; ?>
		
		<div class="container">
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="index.php">Home</a></li>
					<?php
						if(isset($_GET['prod_id'])){
							$sql="SELECT * FROM products WHERE prod_id='$_GET[prod_id]'";
							$run= mysqli_query($conn,$sql);
							while($rows=mysqli_fetch_assoc($run)){
								$prod_cat=ucwords($rows['prod_cat']);
								$prod_title=ucwords($rows['prod_title']);
								$prod_id=$rows['prod_id'];
								echo "
									<li><a href='category.php?category=$rows[prod_cat]'>$prod_cat</a></li>
									<li class='active'>$prod_title</li>
								";
					?>
					
				</ol>
			</div>
			<div class="row">
				<?php
							echo "
								<div class='col-md-8'>
									<h3 class='pp-title' >$prod_title</h3>
									<img src='$rows[prod_image]' class='img-responsive' style='width:100%; height:425px;'>
									<h4 class='pp-desc-head'>Description</h4>
									<div class='pp-desc-details'>
										$rows[prod_desc]
									</div>
								</div>
							";
						}
					}
				?>
				<aside class="col-md-4">
					<a href="buy.php?chk_prod_id=<?php echo $prod_id; ?>" class="btn btn-success btn-lg btn-block">Buy</a>
					<br>
					<ul class="list-group">
						<li class="list-group-item">
							<div class="row">
								<div class="col-md-2 col-md-offset-1"><i class="fa fa-truck fa-2x"></i></div>
								<div class="col-md-9">Delivered within 5 days</div>
							</div>
						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-md-2 col-md-offset-1"><i class="fa fa-refresh fa-2x"></i></div>
								<div class="col-md-9">Easy return in 7 days</div>
							</div>
						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-md-2 col-md-offset-1"><i class="fa fa-phone fa-2x"></i></div>
								<div class="col-md-9">Call at 1234567890</div>
							</div>
						</li>
						
					</ul>
				</aside>
			</div>
			
			<div class="page-header">
				<h4>Related items</h4>
			</div>
			<section class="row">
				<?php
					$rel_sql="SELECT * FROM products ORDER BY rand() LIMIT 4";
					$rel_run=mysqli_query($conn,$rel_sql);
					while($rel_rows=mysqli_fetch_assoc($rel_run)){
						$discounted_price=$rel_rows['prod_price']-$rel_rows['prod_disc'];
						$prod_title=str_replace(' ','-',$rel_rows['prod_title']);
						echo "
							<div class='col-md-3'>
								<div class='col-md-12 single-item noPadding'>
									<div class='top'>
										<img src='$rel_rows[prod_image]' class='img-responsive'>
									</div>
									<div class='bottom'>
										<h3 class='item-title'><a href='product.php?prod_title=$prod_title&prod_id=$rel_rows[prod_id]'>$rel_rows[prod_title]</a></h3>
										<div class='pull-right cutted-price text-muted'><del>$ $rel_rows[prod_price]/=</del></div>
										<div class='clearfix'></div>
										<div class='pull-right discounted-price'>$ $discounted_price/=</div>
									</div>
								</div>
							</div>
						";
					}
				?>
				
				
			</section>
		</div>
		<br><br><br><br>
		<?php include 'include/footer.php'; ?>
	</body>
</html>