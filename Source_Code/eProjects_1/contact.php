<?php
session_start();
require_once('utyls/utility.php');     
require_once('db/dbhelper.php');

$customer_name = $email = $phone =$idea = "";     
if(!empty($_POST)) {
    $customer_name = getPost('customer_name');   
    $email = getPost('email');
    $phone = getPost('phone');
    $idea = getPost('idea');

    $sql = "insert into feedback(customer_name, email,phone,idea ) values ('$customer_name', '$email', '$phone','$idea')";  
    execute($sql);                    
    header('Location: contact.php');     
    die();
}
?>
<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Tạo Contact Form</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
     <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="style_compare_vs_contact/lienhe.css">
 </head>
 <body>
  <section>
   <div class="container">
     <div class="containerinfo">
       <div>
         <h2>Contact Info</h2>
         <ul class="info">
           <li>
             <span><i class="fa fa-map-marker" aria-hidden="true"></i></span>
             <span>54 Le Thanh Nghi<br />
               Hai Ba Trung District<br />
               Hanoi City
             </span>
           </li>
           <li>
             <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
             <span>aptech1@aprotrain.com</span>
           </li>
          <li>
             <span><i class="fa fa-phone-square" aria-hidden="true"></i></span>
             <span>1800-1141</span>
           </li>
         </ul>
       </div>
       <ul class="sci">
         <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
         <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
         <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
         <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
         <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
       </ul>
    </div>
    <form method="post">
    <div class="containerForm">
           <h2>Send Message</h2>
           <div class="formBox">
               <div class="inputBox w50">
                   <input type="text" name="customer_name" required>
                   <span>first and last name</span>
               </div>
               <div class="inputBox w50">
                   <input type="text" name="email" required>
                   <span>Email</span>
               </div>
               <div class="inputBox w50">
                   <input type="text" name="phone" required>
                   <span>phone number</span>
               </div>
               <div class="inputBox w100">
                   <textarea name="idea" required></textarea>
                   <span>Your Contributions</span>
               </div>
               <div class="inputBox w100">
                   <input type="submit" value="To send">                
                   <a href="index.php" style="margin-left: 100px;">home</a>

               </div>
               
           </div>
       </div>
    </form>   
</div>
</section>
<div class="question"></div>

 </body>
 <script>
      function come_back(){
          history.back();
      }
  </script>
 </html>