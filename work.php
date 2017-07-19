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
		
        <nav class="col-lg-12 tiny-menu text-center" style="margin-top:100px;">
            <a href="<?=base_url()?>index.php/work" class="col-lg-2 col-lg-offset-4 active">Work</a>
            <a href="<?=base_url()?>index.php/blog" class="col-lg-1">Blog</a>
        </nav>

		<div class="content-container col-lg-8 col-lg-offset-2 clearfix">

			<?php foreach ($articles as $item) { ?>
				<a class="thumbnail clearfix" style="text-decoration:none;color:inherit;" href="<?=base_url()?>index.php/work/article/<?=$item->id?>">
				<div class="item col-lg-12 clearfix">
					<div class="item-image text-center col-lg-4 col-sm-12 col-xs-12">
						<!-- <img src="<?=base_url()?>assets/uploads/<?=$item->main_image?>" class="col-lg-12 col-sm-12 col-xs-12 thumbnail lazy" style="margin-bottom:0;"> -->

						<img data-original="<?=base_url()?>assets/uploads/<?=$item->main_image?>" class="col-lg-12 col-sm-12 col-xs-12 thumbnail lazy" style="margin-bottom:0;">
					</div>

					<div class="item-content col-lg-8 col-sm-12 col-xs-12">
						<h1 class="item-title"><?=$item->title?></h1>
						<p class="item_keywords" style="margin:0; padding:0;">
							<?php 
		                        $tags = explode(',' , $item->keywords);
		                        foreach ($tags as $t){
		                            $t = trim($t);
		                            echo "<span class='tag'>#{$t}</span>";
		                        }
		                    ?>
						</p>
						<p class="item-description"><?=$item->description?></p>
					</div>
				</div>
				</a>
			<?php } ?>

		</div>
	</div>

	<?php include_once('includes/footer.php'); ?>

	<script src="<?=base_url()?>assets/js/jquery.js"></script>
	<script src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js"></script>
	<script>
		$(function(){
			$("img.lazy").lazyload({
			    threshold : 200,
			    effect: 'fadeIn'
			});
		})
	</script>

</body>
</html>