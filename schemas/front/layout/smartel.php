<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="<?= PATH ?>/ico/favicon.png">

    <title>Supr FRONT TEST</title>
    
    <link href="/style/front/css/fontello.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="/style/front/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/style/front/css/navbar.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="/style/front/css/carousel.css" rel="stylesheet">
    
    <link href="/style/front/css/filter/fsetting.css" rel="stylesheet">
    <link href="/style/front/css/filter/fstyle.css" rel="stylesheet">
    <link href="/style/front/css/popUp/popUp.css" rel="stylesheet">
    
    <link href="/style/front/css/nivoSlider/nivo-slider.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/style/front/css/front.css" rel="stylesheet">
    <link href="/style/front/css/settings.css" rel="stylesheet">

    <link href="/style/front/css/products.css" rel="stylesheet">
    
    <script src="/style/front/js/jquery/jquery.v2.1.3.js"></script>
    <script src="/style/front/js/jquery/jquery.migrate.js"></script>
    <script src="/style/front/js/jquery/jquery.form.js"></script>
    <script src="/style/front/js/jquery/jquery.easing.1.3.js"></script>
    
    <script src="/style/front/js/jquery.ba-hashchange.min.js"></script>
    <script src="/style/front/js/jquery.cookie.js"></script>
    <script src="/style/front/js/scrollPagination.js"></script>
    
    <script src="/style/front/js/filter/jquery.mixitup.js"></script>
    <script src="/style/front/js/popUp/bpopup.js"></script>
    <script src="/style/front/js/browser.js"></script>
    
    <!-- nivoSlider -->
    <script src="/style/front/js/nivoSlider/jquery.nivo.slider.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      
      <div id="wrapper">
          <header>
                <div id="logo">
                    <a href="/">
                        <div class="block-logo-img"></div>
                        <span class="logo-desc">разумная электроника</span>
                    </a>
                </div> <!-- #logo -->
                
                <nav id="main-menu">
                    <?php 
                        $this->getBox('home/menu'); // navigation
                    ?>
                </nav> <!-- #main-menu -->
                
                <div id="hedare-phones">
                    <a href="#"><i class="operators kiyv"></i>+3(8068)808-72-97<span>(Киев)</span></a>
                    <ul class="list-phones">
                        <li class="first"><i class="operators life"></i><a href="#">+3(8068)808-72-97<span>(Донецк)</span></a></li>
                        <li class="first"><i class="operators mts"></i><a href="#">+3(8068)808-72-97<span>(Ужгород)</span></a></li>
                    </ul>
                </div> <!-- #hedare-phones -->
          </header>
          
          
          <?php 
            $this->getBox('home/subnav'); // navigation
          ?>
          
          <div id="content" class="wrapper">
              
              <?php if(\init::app() -> getHomePage()): ?>
                <?php echo $content; ?>
              <?php else: ?>
                <div class="container">
                    <?php echo $content; ?>
                </div>
              <?php endif; ?>
              
          </div>
      </div>
      <!-- FOOTER -->
      <footer>
          <div class="top-links">
            <div class="container">  
              <div class="row">
                  <div class="col-lg-2">
                      <span class="title">Section 1</span>
                      <ul>
                          <li>
                              <a href="#">Test 1</a>
                          </li>
                          <li>
                              <a href="#">Test 2</a>
                          </li>
                          <li>
                              <a href="#">Test 3</a>
                          </li>
                          <li>
                              <a href="#">Test 4</a>
                          </li>
                      </ul>
                  </div>
                  <div class="col-lg-2">
                      <span class="title">Section 1</span>
                      <ul>
                          <li>
                              <a href="#">Test 1</a>
                          </li>
                          <li>
                              <a href="#">Test 2</a>
                          </li>
                          <li>
                              <a href="#">Test 3</a>
                          </li>
                          <li>
                              <a href="#">Test 4</a>
                          </li>
                      </ul>
                  </div>
                  <div class="col-lg-2">
                      <span class="title">Section 1</span>
                      <ul>
                          <li>
                              <a href="#">Test 1</a>
                          </li>
                          <li>
                              <a href="#">Test 2</a>
                          </li>
                          <li>
                              <a href="#">Test 3</a>
                          </li>
                          <li>
                              <a href="#">Test 4</a>
                          </li>
                      </ul>
                  </div>
              </div>
            </div>    
          </div>
          <div id="copyright">
            <div class="container">  
              <div class="row">
                  <div class="col-lg-12">
                      @2015-Copyright!
                  </div>
              </div>
            </div>    
          </div>
      </footer>
      
        <!-- popUp -->  
        <div class="box-popUp"></div>
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="/style/front/js/bootstrap.min.js"></script>
        <script src="/style/front/js/holder.js"></script>
        
        <!-- filters -->
        <script src="/style/front/js/scroll.js"></script>
        <!-- products -->
        <script src="/style/front/js/products.js"></script>
        <script src="/style/front/js/init.js"></script>
  </body>
</html>
