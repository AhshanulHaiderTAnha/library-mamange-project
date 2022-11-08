<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="ISTT">
  <meta name="author" content="Akash Bhadange">

  <title> ISTT Library Managment</title>

  <link rel="stylesheet" href="{{asset('Frontend/css/bootstrap.min.css')}} ">

  <link rel="stylesheet" href="{{asset('Frontend/css/style.css')}} ">

  <link rel="stylesheet" href="{{asset('Frontend/css/style.css')}} ">

  <link rel="stylesheet" href="{{asset('Frontend/css/themify-icons.css')}} ">

  <link rel="stylesheet"  type='text/css' href="{{asset('Frontend/css/dosis-font.css')}} ">

  <!-- Bootstrap -->

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->

    </head>
    <body id="page-top" data-spy="scroll" data-target=".side-menu">
      <nav class="side-menu">
        <ul>
          <li class="hidden active">
            <a class="page-scroll" href="#page-top"></a>
          </li>
          <li>
            <a href="#home" class="page-scroll">
              <span class="menu-title">Home</span>
              <span class="dot"></span>
            </a>
          </li>
          <li>
            <a href="#speakers" class="page-scroll">
              <span class="menu-title"> Privacy Policy</span>
              <span class="dot"></span>
            </a>
          </li>          
          <li>
            <a href="#schedule" class="page-scroll">
              <span class="menu-title">Condition</span>
              <span class="dot"></span>
            </a>
          </li>
        </ul>
      </nav>
      <div class="container-fluid">
        <!-- Start: Header -->
        <div class="row hero-header" id="home">
          <div class="col-md-7">
          
            <img src="{{asset('/Frontend/img/istt.jpg')}}" class="logo">
            <h1> Institute of Science Trade & Technology </h1>
            <h3>A Large Library with Large Book Collection </h3>
            
            <a href="{{ route('login') }}" class="btn btn-lg btn-red">Log In your Account<span class="ti-arrow-right"></span></a>

          </div>
          <div class="col-md-5 hidden-xs">

            <img src="{{asset('/Frontend/img/rocket.png'  )}} " class="rocket animated bounce" >
          </div>
        </div>
        <!-- End: Header -->
      </div>
      <div class="container">
        <!-- Start: Desc -->
        <div class="row me-row content-ct">
          <h2 class="row-title">Why This Library  Is Super Cool ? </h2>
          <div class="col-md-4 feature">
            <span class="ti-ticket"></span>
            <h3>Avaible Book Collection</h3>
            <p>The Institute of Science, Trade and Technology is a professional and technical based higher educational Institution in Bangladesh. It is an affiliated college of National University of Bangladesh.</p>
          </div>
          <div class="col-md-4 feature">
            <span class="ti-microphone"></span>
            <h3>Good envoirment</h3>
            <p>The Institute of Science, Trade and Technology is a professional and technical based higher educational Institution in Bangladesh. It is an affiliated college of National University of Bangladesh.</p>
          </div>
          <div class="col-md-4 feature">
            <span class="ti-world"></span>
            <h3>Avaible Sit </h3>
            <p>The Institute of Science, Trade and Technology is a professional and technical based higher educational Institution in Bangladesh. It is an affiliated college of National University of Bangladesh.</p>
          </div>
        </div>
        <!-- End: Desc -->

        <!-- Start: Speakers -->
        <div class="row me-row content-ct speaker" id="speakers">
          <h2 class="row-title" > </h2>ISTT Director </h2>
          <div class="col-md-4 col-sm-6 feature">
          <img src="{{asset('/Frontend/img/speaker-1.png')}}" class="speaker-img">
            <h3>Simon Collins</h3>
            <p>Simon is designer and partner at Fictivekin and has worked in a variety of situations for bands, record labels, governments, polar explorers, and most other things...</p>
            <ul class="speaker-social">
              <li><a href="#"><span class="ti-facebook"></span></a></li>
              <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
              <li><a href="#"><span class="ti-linkedin"></span></a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-6 feature">
          <img src="{{asset('/Frontend/img/speaker-2.png')}}" class="speaker-img">
            <h3>Stephanie Troeth</h3>
            <p>Stephie is a user experience researcher and designer. In over 15 years of working on the web, she has worn many hats, including a product lead for a tech startup in publishing...</p>
            <ul class="speaker-social">
              <li><a href="#"><span class="ti-facebook"></span></a></li>
              <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
              <li><a href="#"><span class="ti-linkedin"></span></a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-6 feature">
            <img src="{{asset('/Frontend/img/speaker-3.png')}} " class="speaker-img">
            <h3>Harry Roberts</h3>
            <p>Harry is a freelance designer, developer, writer, speaker and front-end architect from the UK, previously working as Senior UI Developer for Sky. He Tweets at...</p>
            <ul class="speaker-social">
              <li><a href="#"><span class="ti-facebook"></span></a></li>
              <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
              <li><a href="#"><span class="ti-linkedin"></span></a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-6 feature">
            <img src="{{asset('/Frontend/img/speaker-4.png')}}  " class="speaker-img">
            <h3>Geri Coady</h3>
            <p>Harry is a freelance designer, developer, writer, speaker and front-end architect from the UK, previously working as Senior UI Developer for Sky. He Tweets at...</p>
            <ul class="speaker-social">
              <li><a href="#"><span class="ti-facebook"></span></a></li>
              <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
              <li><a href="#"><span class="ti-linkedin"></span></a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-6 feature">
            <img src="{{asset('/Frontend/img/speaker-5.png')}}  " class="speaker-img">
            <h3>Andy Budd</h3>
            <p>Harry is a freelance designer, developer, writer, speaker and front-end architect from the UK, previously working as Senior UI Developer for Sky. He Tweets at...</p>
            <ul class="speaker-social">
              <li><a href="#"><span class="ti-facebook"></span></a></li>
              <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
              <li><a href="#"><span class="ti-linkedin"></span></a></li>
            </ul>
          </div>
          <div class="col-md-4 col-sm-6 feature">
            <img src="{{asset('/Frontend/img/speaker-6.png')}}  " class="speaker-img">
            <h3>Christian Lauke</h3>
            <p>Harry is a freelance designer, developer, writer, speaker and front-end architect from the UK, previously working as Senior UI Developer for Sky. He Tweets at...</p>
            <ul class="speaker-social">
              <li><a href="#"><span class="ti-facebook"></span></a></li>
              <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
              <li><a href="#"><span class="ti-linkedin"></span></a></li>
            </ul>
          </div>
        </div>
        <!-- End: Speakers -->
      </div>
  
      <div class="container-fluid footer">
        
        <div class="row footer-credit">
          <div class="col-md-6 col-sm-6">
            <p>&copy; 2020, <a href="www.istt.edu.bd">www.istt.edu.bd</a> | All rights reserved by Ahshanul haider .</p>
          </div>
          <div class="col-md-6 col-sm-6"> 
            <ul class="footer-menu">
              <li><a href="#">About Us</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Terms &amp; Condition</a></li>
            </ul>
          </div>
        </div>
      </div>
      
      <script src="{{asset('Frontend/js/bootstrap.min.js')}} "></script>
      <script src="{{asset('Frontend/js/ytplayer.min.js')}} "></script>
      <script src="{{asset('Frontend/js/jquery.easing.min.js')}} "></script>
      <script src="{{asset('Frontend/js/scrolling-nav.js')}} "></script>
      <script src="{{asset('Frontend/js/validator.js')}} "></script>

      

    </body>
    </html>