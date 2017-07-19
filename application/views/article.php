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
            <a href="<?=base_url()?>index.php/work" class="col-lg-2 col-lg-offset-4 <?=($page == 'work') ? ('active') : ('') ?>">Work</a>
            <a href="<?=base_url()?>index.php/blog" class="col-lg-1 <?=($page == 'blog') ? ('active') : ('') ?>">Blog</a>
        </nav>


        <!-- content section !-->
        <div class="col-lg-10 content-container article">
            <article class="col-lg-12">

                <?php if(isset($gallery)){ ?>
                    <div class="owl-carousel col-lg-12">
                        <div><img src="<?=base_url()?>assets/uploads/<?=$main_article->main_image?>" class="thumbnail"></div>

                        <?php foreach($gallery as $gallery_image) { ?>
                            <div><img src="<?=base_url()?>assets/uploads/<?=$gallery_image->url?>" class="thumbnail"></div>
                        <?php } ?>
                    </div>
                <?php } else { ?>
                    <div class="col-lg-12 text-center"><img src="<?=base_url()?>assets/uploads/<?=$main_article->main_image?>" style="width:100%" alt=""></div>
                <?php } ?>
                <div class="clearfix"></div>

                <div class="spacer"></div>
                <div class="item-title col-lg-12"><?=$main_article->title?></div>
                <p class="item-info"><?=date("F j, Y, g:i a",strtotime($main_article->created_date))?></p>
                <div class="item_keywords">
                    <?php 
                        $tags = explode(',' , $main_article->keywords);
                        foreach ($tags as $t){
                            $t = trim($t);
                            echo "<span class='tag'>#{$t}</span>";
                        }
                    ?>
                </div>

                <div class="clearfix"></div>
                <div class="item-description col-lg-12">
                    <?=$main_article->content?>
                </div>
            </article>
        </div>


        <!-- sidebar section !-->
        <div class="col-lg-2 sidebar">
            <?php foreach($sidebar_articles as $article) { ?>
                <div class="col-lg-12 col-sm-4 col-xs-6">
                    <a href="<?=base_url().'index.php/'.$page.'/article/'.$article->id?>" style="color:inherit;text-decoration:none;">
                        <img src="<?=base_url()?>assets/uploads/<?=$article->main_image?>" style="width:100%;" class="thumbnail">
                        <div class="sidebar-title"><?=$article->title?></div>
                    </a>
                </div>
            <?php } ?>
        </div>
	</div>


    <?php include_once('includes/footer.php'); ?>

    <script src="<?=base_url()?>assets/js/jquery.js"></script>
    <script src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<?=base_url()?>assets/js/owl-carousel/owl.carousel.css">
    <script src="<?=base_url()?>assets/js/owl-carousel/owl.carousel.min.js"></script>
    <script>
    $(function(){
        $('.owl-carousel').owlCarousel({
            loop:true,
            margin:10,
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    nav:true
                },
                600:{
                    items:1,
                    nav:false
                },
                1000:{
                    items:1,
                    nav:true,
                    loop:false
                }
            }
        })
    });
    </script>
</body>
</html>