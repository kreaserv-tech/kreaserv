          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  <p class="centered">
                    <a href="javascript:void(0);">
                      <img src="<?=base_url()?>assets/images/logo.png" class="" width="90px">
                    </a>
                  </p>
                  <h5 class="centered"></h5>
                  <li class="mt">
                      <a href="<?=base_url()?>index.php/admin" class="active" id="menu_home">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  <li>
                      <a href="<?=base_url()?>index.php/admin/work" id="work" >
                          <i class="fa fa-book"></i>
                          <span>Work</span>
                      </a>
                  </li>
                  <li>
                      <a href="<?=base_url()?>index.php/admin/blog" id="blog" >
                          <i class="fa fa-book"></i>
                          <span>Blog</span>
                      </a>
                  </li>

                  <li>
                      <a href="<?=base_url()?>index.php/auth/logout" id="logout" >
                          <i class="fa fa-book"></i>
                          <span>Logout</span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
          
          <script>
            $('.sidebar-menu li a').removeClass('active');
            $('#menu_<?=strtolower($this->uri->segment(2, 0))?>').addClass('active');
          </script>