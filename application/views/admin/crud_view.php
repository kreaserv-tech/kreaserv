<!DOCTYPE html>
<html lang="en">
<head>
    <?php include_once( 'includes/head.php'); ?>
    <?php 
    foreach($css_files as $file): ?>
        <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
     
    <?php endforeach; ?>
    <?php foreach($js_files as $file): ?>
     
        <script src="<?php echo $file; ?>"></script>
    <?php endforeach; ?>
</head>

<body>

    <section id="container">
        <!--header end-->

        <!--sidebar start-->
        <aside>
            <?php include_once( 'includes/sidebar.php'); ?>
        </aside>
        <!--sidebar end-->

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper site-min-height">

            <h1><?=strtolower($this->uri->segment(2, 0))?>.</h1>
            <hr>
            <div class="row mt">
              <div class="col-lg-12">
                <?php echo $output; ?>
              </div>
            </div>

            </section>
            <!-- /wrapper -->
        </section>
        <!-- /MAIN CONTENT -->

        <!--main content end-->
        <!--footer start-->
        <!--footer end-->
    </section>

    <?php include_once( 'includes/site_bottom_scripts.php'); ?>
</body>

</html>