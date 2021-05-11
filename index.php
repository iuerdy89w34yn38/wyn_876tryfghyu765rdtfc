<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>

  <title><?php echo $sitename ?></title>

  <?php if(empty($_GET['page_name'])) $link ='home';  ?>
  
  
  <style>

    ul > li > a > p > img{
      display:none;
    }

    ul > li > a > img{
      display:none;
    }

    .homecard{
      max-height: 410px;
      overflow: hidden;
    }

  </style>



</head>

<body class="body-wrapper" style="background: #000">

  <div class="main_wrapper" style="background: #000;">

    <?php include 'include/header.php'; ?>

    <div class="banner">

      <div id="demo-1" data-zs-src='[

      <?php

      $result =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $rowcount=mysqli_num_rows($result);
      $rows =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row=mysqli_fetch_array($rows)){

        $name = $row['name']; 
        $img = $row['img']; 
        $ordr = $row['ordr']; 
        $id = $row['id']; 
        $n++;
        ?>
        "images/slider/<?php echo $img ; ?>"
        <?php if($n<$rowcount) echo "," ;  } ?>
        ]' 
        data-zs-overlay="dots">
        <div class="sover">
          <div style="padding-top: 15%;"></div>
          <center>
            <form action="search.php" method="get">
              <h2 class="htext"> <?php echo $name ?></h2>
              <br><br>

            </form>
          </center>
        </div>

      </div> 

    </div> <!--banner ends-->


    <div class="container text-center">
      <div id="ctl00_cphContentBody_dvPopularCuisine" class="cusinies-banners-wrap">

        <br><br>
        <div class="container-wrap  container-padding p-0">
          <h2 class="top-five-picks-heading-wrap text-center">Products Category</h2>
          <br><br>



          <?php

          $rows =mysqli_query($con,"SELECT * FROM productcat  ORDER BY ordr  LIMIT $pclimit" ) or die(mysqli_error($con));
          $n=1;

          while($row=mysqli_fetch_array($rows)){
            $slug = $row['slug']; 
            $pslug = $row['slug']; 
            $name = $row['name']; 
            $img = $row['img']; 
            $desp = $row['desp']; 

            $ordr = $row['ordr']; 
            $feat = $row['feat']; 
            $id = $row['id']; 
            $parentid = $row['id']; 

            ?>
            <div class="cusinies-banner-image-wrap">
              <a href="products-<?php  echo $slug ?>">
                <figure class="imghvr-push-up">
                  <img src="images/products/<?php echo $img ?>">
                  <br>
                  <br>
                  <figcaption>
                    <h3><?php echo  $name ?></h3>
                  </figcaption>
                </figure>
              </a>

            </div>           

          <?php   } ?>


        </div>
      </div>



    </div>
    <br><br>


    <br><br>

    <center><h2>Top Recommended Products</h2></center>


    <br><br>

    <div class="container">
      <div class="row">


        <?php

        $rows =mysqli_query($con,"SELECT * FROM product WHERE pid!=30  ORDER BY RAND() LIMIT 8" ) or die(mysqli_error($con));
        $n=0;

        while($row=mysqli_fetch_array($rows)){

          $proname = $row['name'];
          $proslug = $row['slug'];
          $prodesp = $row['desp'];
          $proprice = $row['price'];
          $proid = $row['id'];
          $proimg = $row['img1'];
          if(empty($desp)) $desp='...';

          $rowsx =mysqli_query($con,"SELECT * FROM reviews where proid='$proid'  ORDER BY datec" ) or die(mysqli_error($con));
          while($rowx=mysqli_fetch_array($rowsx)){
           $revid = $rowx['id']; 
           $revactid = $rowx['actid']; 
           $rating = $rowx['rating']; 
           $review = $rowx['review']; 
           $datec = $rowx['datec'];


           $rowsx1 =mysqli_query($con,"SELECT * FROM users where id='$revactid'  ORDER BY datec" ) or die(mysqli_error($con));
           while($rowx1=mysqli_fetch_array($rowsx)){
             $revactpic = $rowx1['img']; 
             $revactname = $rowx1['name']; 
           }

         }


         ?>

         <div class="col-md-3">
          <div class="card homecard">
            <a href="dproducts-<?php echo $proslug ?>">
              <div class="">
                <center>
                  <img src="images/products/<?php echo $proimg ?>" style="height: 250px">
                </center>
              </div>
              <div class="cardbody">
                <h4><?php echo $proname ?></h4>
                <span>Rs. <?php echo number_format($proprice) ?>/-</span>
                  <?php  $avgrt =mysqli_query($con,"SELECT AVG(rating) FROM reviews where proid='$proid'  ORDER BY datec" ) or die(mysqli_error($con)); 
                  while($avg=mysqli_fetch_array($avgrt)){
                   $avgrate = round($avg['AVG(rating)'],1);}
                   $avgct =mysqli_query($con,"SELECT id  FROM reviews where proid='$proid'" ) or die(mysqli_error($con));   $countrate=mysqli_num_rows($avgct);
                   ?>
                   <div id="rating_div" class="w3-container">
                    <div class="star<?php echo rand(1,1000) ?> ">
                      <span><strong>Rating:</strong></span>
                      <span class="fa fa-star-o" data-rating="1" ></span>
                      <span class="fa fa-star-o" data-rating="2" ></span>
                      <span class="fa fa-star-o" data-rating="3" ></span>
                      <span class="fa fa-star-o" data-rating="4" ></span>
                      <span class="fa fa-star-o" data-rating="5" ></span>
                      <input type="hidden" name="rating" class="rating-value" value="<?php echo $avgrate ?>">
                      <span><?php echo $avgrate ?>   (<?php echo $countrate ?>) </span>
                    </a>

                  </div>
                </div>

                <?php   if(!empty($revactname)){ ?>

                  <img src="images/users/<?php echo $revactpic ?>" width="25" height="25" alt="Sally Doe" class="avatarimg">
                  By: <b> <?php echo $revactname ?> </b> 
                  <span style="float: right;"> <?php echo $datec
                  ?> </span>

                <?php  } ?>
              </div>
            </div>
            <br>
          </div>

        <?php } ?>






        <?php

        $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
        $n=0;

        while($row=mysqli_fetch_array($rows)){

          $post = $row['post']; 
          $img = $row['img']; 



        }
        ?>


</a>
</div>
</div>
<br><br>
<div style="background: #fff">
        <div class="container">

          <div class="row">
            <div class="col-md-6" style=" ">
             <?php echo $post ?> 

           </div>

           <div class="col-md-6" style="padding: 20px">


            <center>
              <img src="images/<?php echo $img ; ?>" style="width: 100%" >

              <br>

            </center>

          </div>

        </div>



   

  </div>
  </div>


    <br><br>







    <br><br>
    <center><h2>Try it Now!</h2></center>


    <?php include 'include/brands.php'; ?>
    <br><br>
   



    <?php include 'include/footer.php'; ?>

  </div>
</body>

</html>

