
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>navbar</title>
    <link rel="stylesheet" href="css/navbar2.css" media="screen">
<link rel="stylesheet" href="css/search.css" media="screen">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" media="screen">

    <script class="u-script" type="text/javascript" src="jq/navbar.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="jq/nicenavbar.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.14.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
   
   
  </head>
  <body ><header class="u-black u-clearfix u-header u-header" ><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse">
            <a class="u-button-style u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-nav-link" href="#">
</g></svg>
            </a>
          </div>       
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled"><li class="u-nav-item"><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10"><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
</li>
</li></ul>
</div>
</li><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
</li>
</li></ul>
</div>
</li><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
</li>
</li></ul>
</div>
</li></ul>
</div>


<div class="bbbootstrap">
<div class="container">
<form>

<span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input type="text" id="Form_Search" value="" placeholder="Search for your best result in our community" role="searchbox" class="InputBox " autocomplete="off"><input type="submit" id="Form_Go" class="Button" value="GO">





</form>
</div>
</div>


</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>


            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="home.php" class="u-image u-logo u-image-1" data-image-width="280" data-image-height="280">
          <img src="navbar/images/GymBox_logo_100-black.webp" class="u-logo-image u-logo-image-1">
        </a>
        
        <a href="login.php" class="u-image u-logo u-image-2" data-image-width="512" data-image-height="512">
          <img src="navbar/images/62888a807cf85.png"  class="u-logo-image u-logo-image-2">
          </a><span class="u-file-icon u-icon u-icon-1"><img src="images/879815.png" alt=""></span>
          <h6 class="u-text u-text-default u-text-1">
          <?php
            if(isset($_SESSION["useruid"])){
              echo "<li><a href='includes/logout.inc.php'>log out</a></li>";
            }
            else{
               echo "<li><a href='login.php'>join now</a></li>";
            } ?>
          </h6>
        </a>
      </div>
    
    
    
    </header> 
    
    

  
