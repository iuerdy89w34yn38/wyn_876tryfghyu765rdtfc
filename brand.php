<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>

  <title>Brands - <?php echo $sitename ?> </title>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['brand_name'])) $page = $_GET['brand_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['brand_name'])) $page = Null ?>
  
<style>

    .simg{
      width: 200px;
      height: 160px
    }
    .hbg{
    width: auto;
    height:auto;
    background: linear-gradient(90deg, #49c32c, #105d05);
    position: absolute;
    left: 0px;
    padding: 10px 10px 0px 7%;
    color: #ffffff;
    
    }
    .pbg{
        background: #ffffff;
    padding: 3rem 4rem;
    box-shadow: 0px 0px 30px rgba(115, 128, 157, 0.1);
    -webkit-box-shadow: 10px 10px 50px rgba(115, 157, 116, 0.51);
    border-radius: 1.25rem;
    
    }
</style>
</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
  
  <?php
  $rows =mysqli_query($con,"SELECT * FROM pages where slug='brands' " ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
  
}
?>

  
  <div class="banner">
    <img src="images/covers/<?php echo $pagecover ?>" class="img-responsive" width="100%"> 
  </div> <!--banner ends-->


<br>



  <div class="container pbg">

    
    <div class="latest-projects text-center">
    
    <h1><?php echo $pagename ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
    <span>
      <?php echo $pagepost ?>
    </span>
    
    <div class="clearfix">&nbsp;</div>
    <div class="row">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM brands  ORDER BY ordr" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $url = $row['url'];
      $img = $row['img'];
      $id = $row['id'];
      
  


      ?>

    
    <div class="col-md-6">
        <div class="item-inner">
            
  
    <div class="item col-md-6 text-right">
              <div class="img">
                  
                                <center>

                <figure id="">
                 <img  class="simg" src="images/brands/<?php echo $img ?>" alt="" id="img1c" />
                </figure>
                                </center>

              </div>
            
            
               <br>
                     
              <br>
              
             </div>
             
             
               <div class="item col-md-6">
                   <br>
                   <br>
                      <h4 class="heading1" style="    text-align: left;"><?php echo $name ?></h4>
                     
    </div>
                
          <!--//project-item-->
        </div><!--//item-inner-->
    </div><!--//item-->
    
    
    




  <?php } ?>


  </div>
  

  </div>
  

  </div>
  


    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

