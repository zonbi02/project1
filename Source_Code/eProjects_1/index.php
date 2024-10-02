
<?php
require "header.php";
require_once('utyls/utility.php');   
require_once('db/dbhelper.php');

$sql = "select * from vw_show_product where id_sp < 5";      
$uList = executeResult($sql);      
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind&display=swap" rel="stylesheet">


  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="style_shared/shared.css">
  <link rel="stylesheet" type="text/css" href=" style_Animation/style_button_1.css">
  <link rel="stylesheet" href="style_index/chung.css">
  <link rel="stylesheet" href="style_index/slide.css">
  <style type="text/css">
    

  </style>

</head>

<body style="font-family: 'Hind', sans-serif;" >
      <div class="slideshow-container">
        <div class="mySlides fade">
          <a href="">
            <img
              src="style_sp/img-all/img-009.jpg"
              height="500px" width="100%">
          </a>
        </div>
        <div class="mySlides fade">
          <a href="">
            <img
              src="style_sp/img-all/slide_img_2.png"
              height="500px" width="100%">
          </a>
        </div>
        <div class="mySlides fade">
          <a href="">
            <img
              src="style_sp/img-all/slide_img_3.png"
              height="500px" width="100%">
          </a>
        </div>
        <br>
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
          <span class="dot" onclick="currentSlide(3)"></span>
        </div>
        
      </div>
      <br> 
        <div class="WELCOME">
          <div class="WELCOME-1">
            <h2 class="e05">HELLO THERE!</h2>
            <h2 class="e04">WELCOME TO COSY</h2><br>
            <h4 class="e05">COOL YOUR SPACE WITH INNOVATIVE AIR CONDITIONERS</h4>
            <p>Here you can purchase different kinds of brands of air conditioners with suitable prices. We provide you large variety of air conditioners.Cosy employ our own installation teams who only work for Cosy. We buy direct from the manufacturer. We quote, We install, We guarantee it!
            </p>
            <p>This guarantees you a quality assured job installed to the standards and guaranteed by Cosy. At Cosy, we go well beyond just quoting a shelf product or merely quoting from a plan. Cosy holds Standards Licence and is passionate about quality. As such, we are wholly committed to providing our customers with what they want… the best energy solutions available for their home environment!
            </p>
          </div>
          <div class="WELCOME-2" >
            <div class="img-00">
              <img src="https://d33wubrfki0l68.cloudfront.net/a4a940d77680645fcbaa2afd8aafb497b7f2d5d0/ee527/images/cont_img-003.png" class="img-010">
            </div>
            <h2 class="e04"><center>100% SATISFACTION GUARANTEE</center></h2>
          </div>  
        </div>


      <div class="s01">
       <div class="left">
          <div class="tyles">
            <div class="tyle"   ><h5 class="texts">most popular products</h5></div>
            <div class="hinh_binh_hanh"></div>
          </div>
          <div class="head1"></div>
          <?php
                $sql = "select  * from vw_show_product where id_sp =29  ;";
                $std = executeResult($sql, true);
                echo '
         <div class="b01">
           <div class="c01">      
              <div class="img_product-2" ><img src="'.$std['img_1'].'"class="img-sp-2"></div>
           </div>
           
             <div class="c02">
            <div class ="d05">
               <a href="product.php?id='.$std['id_sp'].'" class="d02">
                <div >
                <h3>'.$std['name_products'].'</h3>
                <div class="capacity ">
                <p>cooling capacity : '.$std['cooling_capacity'].'</p>
                <P>heating capacity : '.$std['heating_capacity'].'</P>
                </div></br>

                <h3>price : '.$std['price'].'$</h3>
                </div>
                </a>
               
                
            
            
            </div>
             
           </div>
         </div>';?>
       </div>
       <div class="right">
          <div class="tyles" >
            <div class="tyle"  ><h5 class="texts">WHY CHOOSE US</h5></div>
            <div class="hinh_binh_hanh"></div>
          </div>
          <div class="head1"></div>
          <ul class="e06">
            <li>24 HOUR TURNAROUND QUOTE</li>
              <li>FAST SERVICE, NO MUCKING AROUND</li>
              <li>NO HIDDEN COST</li>
              <li>100% SATISFACTION</li>
              <li>ALWAYS ON TIME</li>
              <li>RELIABLE QUICK RESPONSE</li>
              <li>SERVICE SPECIALISTS</li>
              <li>EXCEPTIONAL QUALITY INSTALLATION</li>
          </ul>
       </div>
      </div>


      <div class="s02">
        <div class="b02">
          <div class="tyles" style=" ">
            <div class="tyle" style=""  ><h5 class="texts">Some other featured products</h5></div>
            <div class="hinh_binh_hanh"></div>
          </div>
          <div class="head1"></div>
          </div>
        <div class="c03">
            <?php
        $index = 0;
        foreach($uList as $item) {    
        echo '<a href="product.php?id='.$item['id_sp'].'" class="d02">
            <div class="img_product-1" ><img src="'.$item['img_1'].'"class="img-sp-1"></div>
            <div class ="d05">
            <h4>'.$item['name_products'].'</h4></br>
            <p>price : '.$item['price'].'$</p>
            </div>
            </a>';};
           
              ?>
            
           </div>
      </div>
      <div class=" view">
        
            <a href="all_product.php" class="btn link-2">
            <span class="btn-label">see more</span>
            </a>
       
      </div>
      <?php
        require "footer.php";

      ?>

  <script>
    let slideIndex = 1;
    var timer = null;
    showSlides(slideIndex);

    /* function plusSlides(n) {
      showSlides(slideIndex += n);
      clearTimeout(timer);
    }
*/
    function currentSlide(n) {
      showSlides(slideIndex = n);
      clearTimeout(timer);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      if (n == undefined) { n = ++slideIndex }
      if (n > slides.length) { slideIndex = 1 }
      if (n < 1) { slideIndex = slides.length }
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " active";
      timer = setTimeout(showSlides, 5000);
    }

  </script>

</body>

</html>
