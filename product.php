<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php';
  
        
        function truncateString($str, $chars, $to_space, $replacement="...") {
   if($chars > strlen($str)) return $str;

   $str = substr($str, 0, $chars);
   $space_pos = strrpos($str, " ");
   if($to_space && $space_pos >= 0) 
       $str = substr($str, 0, strrpos($str, " "));

   return($str . $replacement);
}

?>

  <title>Products Categories - <?php echo $sitename ?> </title>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['product_name'])) $page = $_GET['product_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'products' ?>
  <?php if(empty( $_GET['product_name'])) $page = Null ?>

</head>

<body class="body-wrapper">
    
  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>

  <?php if(!empty( $_GET['product_name'])){ ?>
 
  <div class="container">

    
    <div class="latest-products text-center">
    
    <h2 style="text-transform: capitalize;"><?php echo $page ?> Categories</h2>
    
    <div class="clearfix">&nbsp;</div>
    
    

                    <div class="row ">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM productsubcat where pslug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $slug = $row['slug'];
      $desp = $row['desp'];
      $id = $row['id'];
      $img = $row['img'];
      if(empty($desp)) $desp='...';

      ?>

                   <div class="item col-md-4">
                       <div class="item-inner">
                                     <br>



                             <div class="img">
                                <center>

                               <figure id="fig1">
                                <a href="sproducts-<?php echo $slug ?>">
                                 <img  class="simg" src="images/products/<?php echo $img ?>" alt="" id="img1" />
                               </a>
                               </figure>
                             </center>

                             </div>
                             
                                     <h4 class="heading1"><?php echo $name ?></h4>
                             <br>

                               
                               
                       </div>
                       </div>
                                  
                    <?php $n++; $img='Null'; } ?>
                    
            </div>
            </div>
                      
        </div><!--//products-->
    </div><!--//containers-->
<?php } ?>


    <br>
    <br>




  <?php if(empty($_GET['product_name'])){ ?>
 
  <div class="container">

    
    <div class="latest-products text-center">
    
    <h2>Product Categories</h2>
    
    <div class="clearfix">&nbsp;</div>
    
    

                    <div class="col-md-12 ">
                      <div class="posts-list">
<?php $rows =mysqli_query($con,"SELECT * FROM productcat ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;
                while($row=mysqli_fetch_array($rows)){
                    $name = $row['name'];
                     $slug = $row['slug'];
                     $id = $row['id'];
                     $img = $row['img'];
            
                  ?>
              <div class="col-md-4">
                <div class="partnersLogo clearfix">
                  <a href="products-<?php echo $slug ?>"><img src="images/products/<?php echo $img ?>"></a>
                  <p style="color:black;"><?php echo $name ?></p>
                </div>
              </div>
              
              <?php } ?>
              
              </div>
          </div>
      </div>
  </div>

<?php } ?>


    <br>
    <br>
    <br>
    
    <?php include 'include/brands.php'; ?>




    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

