<?php
require "header.php";

require_once('utyls/utility.php');   
require_once('db/dbhelper.php');


$List = $List1 =  '';
if(isset($_GET['submit'])){
    if(!empty($_GET['id_1']) && !empty($_GET['id_2'])) {
      $id_1 = $_GET['id_1'];
      $id_2 = $_GET['id_2'];
      
      $sql1= "select * from vw_show_product where id_sp = '$id_1'";

      $sql2= "select * from vw_show_product where id_sp = '$id_2'";

      $List = executeResult($sql1, true);
      

      $List1 = executeResult($sql2, true);
    } else {
      echo '<script type="text/javascript">alert( "Please select Both Products.")   </script>   ';
    }
  }

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style_compare_vs_contact/compare.css">
    <link rel="stylesheet" type="text/css" href="style_shared/shared.css">

</head>
<body style="background-color:    #E8E8E8;">
<div id="compare_comtainer" >

      <center> <h4 style="margin-top: 20px;">Note: the page only works after user selects both products and presses 'compare' button</h4></center>
        <div class="compare-dropmenu_bar">

        
            <form action="" method="get">
            <?php 
                      $index = 0;
                      $num = 0;
                $sql= "select * from vw_show_product;";
                $result = mysqli_query($conn,$sql);
                $result1 = mysqli_query($conn,$sql);             
            ?>
         <label>First product:</label>
                <select name="id_1">
                    <option value="">---------------Select Product---------------</option>
                <?php
                    while ($row = mysqli_fetch_assoc($result)){
                        echo '<option value="'.$row['id_sp'].'"><span>'.(++$index).'</span>'.$row['name_products'].'</option>';
                    } 
                ?>
                </select>
            
<br></br>


            <label>Second one:</label>
                <select name="id_2">
                    <option value="">---------------Select Product---------------</option>
                    <?php
                    while ($row = mysqli_fetch_assoc($result1)){
                        echo '<option value="'.$row['id_sp'].'"><span>'.(++$num).'</span>'.$row['name_products'].'</option>';
                    } 
                ?>
                </select>
            
            <input type="submit" name="submit" value="compare" style="width: 70px;height: 40px; margin-top: 20px;display: block;">
</form>

        </div>

        <div class="compare_image_bar">
            <div class="image1">
                <center>
                <img id="image1" src="<?=$List['img_1']?> " ></center>
            </div>
            <div class="image1">
                <center>
                <img id="image2" src="<?=$List1['img_1']?>"></center>
            </div>
        </div>

        <div class="compare_detail_box" style="margin-top: 100px;margin-bottom: 10px;">
            <div class="Detail_C1">
                <table id="table01">
                    <tr>
                        <td>
                            <div class="style-s1">Name</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Made in</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Brand</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Type</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Cooling Capacity</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Heating Capacity</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Power Input</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Price</div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="Detail_C2">
                <table id="table02">
                    <tr>
                        <td>
                            <div class="BGstyle01 style-s1" id="name1"><p><?=$List['name_products']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="name1"><p><?=$List['made_in']?></p></div>
                        </td>
                    </tr>
                    <!-- brand  -->
                    <tr>
                        <td>
                            <div class="BGstyle01" id="brand1"><p><?=$List['brand']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="type1"><p><?=$List['type']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle01" id="cool1"><p><?=$List['cooling_capacity']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="heat1"><p><?=$List['heating_capacity']?></p></div>
                        </td>
                    </tr>
                    <!-- power_input -->
                    <tr>
                        <td>
                            <div class="BGstyle01" id="power1"><p><?=$List['Power_Input']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="price1"><p><?=$List['price']?></p></div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="Detail_C3">
                <table id="table03">
                    <tr>
                        <td>
                            <div class="BGstyle01 style-s1" id="name2"><p><?=$List1['name_products']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="name1"><p><?=$List1['made_in']?></p></div>
                        </td>
                    </tr>
                    <!-- brand -->
                    <tr>
                        <td>
                            <div class="BGstyle01" id="brand2"><p><?=$List1['brand']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="type2"><p><?=$List1['type']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle01" id="cool2"><p><?=$List1['cooling_capacity']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="heat2"><p><?=$List1['heating_capacity']?></p></div>
                        </td>
                    </tr>
                    <!-- power_input -->
                    <tr>
                        <td>
                            <div class="BGstyle01" id="power2"><p><?=$List1['Power_Input']?></p></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="BGstyle02" id="price2"><p><?=$List1['price']?></p></div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</div>
</body>
    <?php
        require "footer.php";

      ?>
</html>