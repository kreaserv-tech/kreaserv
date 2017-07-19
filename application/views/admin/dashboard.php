<!DOCTYPE html>
<html lang="en">
<head>
    <?php include_once( 'includes/head.php'); ?>
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
                <h1>dashboard.</h1>
                <hr>
                <div class="row mt">
                    <div class="col-lg-12">
                        <!-- <div id="site_users_chart"></div> -->

                        <div class="col-lg-6">
                            <div id="new_users_chart"></div>
                        </div>

                        <div class="col-lg-6">
                            <div id="posts_chart"></div>
                        </div>
                        </style>

                    </div>
                </div>
            </section>
            <!-- /wrapper -->
        </section>
        <!-- /MAIN CONTENT -->

        <!--main content end-->
        <!--footer start-->
        <footer class="site-footer">
            <div class="text-center">
                2015 - <span class="logo">nightlybuilds.</span>
                <a href="blank.html#" class="go-top">
                    <i class="fa fa-angle-up"></i>
                </a>
            </div>
        </footer>
        <!--footer end-->
    </section>

    <?php include_once( 'includes/site_bottom_scripts.php'); ?>
</body>

</html>