<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Kreaserv</title>
	<?php include_once('includes/head.php'); ?>
</head>
<body>

	<div class="col-lg-4 text-center" id="logo">
		<a href="<?=base_url()?>">kreaserv.</a>
	</div>
	<div class="container">

		<div class="main-center col-lg-12 text-center vertical-center">
			<a href="<?=base_url()?>index.php/work" class="work col-lg-6 text-center">Work</a>
			<a href="<?=base_url()?>index.php/blog" class="blog col-lg-6 text-center">Blog</a>
		</div>
	</div>



	<?php include_once('includes/footer.php'); ?>
	<style>
	footer { position: absolute;bottom: 0;width: 100%;}
	</style>

	<script src="<?=base_url()?>assets/js/jquery.js"></script>
	<script src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
</body>
</html>