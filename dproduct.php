<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <?php include('include/connect.php') ?>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['dproduct_name'])) $page = $_GET['dproduct_name'] ?>
  <?php if(!empty( $_GET['dproduct_name'])) $proslug = $_GET['dproduct_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'products' ?>
  <?php if(empty( $_GET['dproduct_name'])) $page = Null ?>
  <title>Product Page - <?php echo $proslug ?> </title>

  <?php include 'include/head.php'; ?>


  <?php 

  if(isset($_POST['addrev'])){

      $msg="Unsuccessful" ;
      
       $proid=$_POST['proid'];
       $rating=$_POST['rating'];
       $review1=$_POST['review'];
       $review=str_replace("'", "''", $review1);


       
  $data=mysqli_query($con,"INSERT INTO reviews (proid,actid,review,rating)VALUES ('$proid','$actid','$review','$rating')")or die( mysqli_error($con) ); 

  $msg="Added" ;



  }

?>

  <?php 


  if(isset($_POST['uprev'])){

      $msg="Unsuccessful" ;
      
       $id=$_POST['uprev'];
       $proid=$_POST['proid'];
       $rating=$_POST['rating'];
       $review1=$_POST['review'];
       $review=str_replace("'", "''", $review1);


       
  $sql = "UPDATE reviews SET `rating` = '$rating',`review` = '$review' WHERE `id` =$id";
  mysqli_query($con, $sql) ;


  $msg="Added" ;



  }

?>

  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.2.2/flexslider-min.css">



  <style type="text/css">
    *,:before,:after { box-sizing: border-box; }

    html, body { height: 100%; }

    .flexslider {
      height: 100%;
      margin: 0;
      padding: 0;
      background: none;
      border: 0;
      overflow: hidden;
      box-shadow: none;
      .flex-viewport { height: 100%; }
      .flex-control-nav { bottom: 20px; }
      .slides {
        height: 100%;
        li { 
          height: 100%;
        }
      }
    }

    .slide-image{
      max-height: 400px;
      overflow: hidden;
      width: 500px;
    }
    .slideimg{
      height: 100%;

    }

  </style>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
    <?php include 'include/header.php'; ?>
    <br>

    <div class="container">
      <div class="row">
        <div class="col-md-9">


          <?php

          $rows =mysqli_query($con,"SELECT * FROM product where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
          $n=0;

          while($row=mysqli_fetch_array($rows)){


           $proid = $row['id']; 
           $slug = $row['slug']; 
           $name = $row['name']; 
           $metak = $row['metak']; 
           $metad = $row['metad']; 
           $ordr = $row['ordr']; 
           $id = $row['id']; 
           $subid = $row['pid']; 
           $catid = $row['mid']; 
           $bid = $row['brand']; 
           $feat = $row['feat']; 
           $desp = $row['desp']; 
           $price = $row['price']; 
           $sale = $row['sale']; 
           $saleprice = $row['saleprice']; 
           $sizesm = $row['sizesm']; 
           $sizemd = $row['sizemd']; 
           $sizelg = $row['sizelg']; 
           $img1 = $row['img1']; 
           $img2 = $row['img2']; 
           $img3 = $row['img3']; 
           $img4 = $row['img4']; 
           $img5 = $row['img5']; 


           if(empty($desp)) $desp='...';




           ?>

           <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-10">
              <section class="story section--slider-thingy">
                <div class="flexslider">
                  <ul class="slides">
                   <?php for($nt=1;$nt<=$pimglimit;$nt++){ ?>
                    <?php if(!empty($row["img$nt"])){?>

                      <li class="slide text-center">
                        <center>

                          <div class="slide-image text-center">
                            <img src="images/products/<?php echo $row["img$nt"] ?>" class="slideimg" alt="placeholder image">
                          </div>
                        </center>

                      </li>
                    <?php } } ?>


                  </ul>
                </div>
              </section>
            </div>
          </div>

          <div class="row">
          <div class="col-md-5">

          <br>

          <h2>                  <?php echo  $name ?>
        </h2>
        <span>Price: <b>Rs. <?php echo number_format($price) ?>/- </b></span>
        <span>

          <?php  $avgrt =mysqli_query($con,"SELECT AVG(rating) FROM reviews where proid='$proid'  ORDER BY datec" ) or die(mysqli_error($con)); 
          while($avg=mysqli_fetch_array($avgrt)){
           $avgrate = round($avg['AVG(rating)'],1);}
           $avgct =mysqli_query($con,"SELECT id  FROM reviews where proid='$proid'" ) or die(mysqli_error($con));   $countrate=mysqli_num_rows($avgct);
            ?>
          <div id="rating_div" class="w3-container">
        <div class="star<?php echo rand(1,1000) ?> ">
          <span><strong>Rate:</strong></span>
          <span class="fa fa-star-o" data-rating="1" ></span>
          <span class="fa fa-star-o" data-rating="2" ></span>
          <span class="fa fa-star-o" data-rating="3" ></span>
          <span class="fa fa-star-o" data-rating="4" ></span>
          <span class="fa fa-star-o" data-rating="5" ></span>
          <input type="hidden" name="rating" class="rating-value" value="<?php echo $avgrate ?>">
          <span><?php echo $avgrate ?>   (<?php echo $countrate ?>) </span>

                </div>
          </div>

        </span>
      </div>
      <form action="" method="POST">
<style type="text/css">
  .qbtn{
    color:#000;
  }
</style>
   


            
                
                        <?php if(!empty($actid)) { ?>
                             <div class="col-md-3 text-right">
        <br>
                <input type="button" id="less" value="-" class="btn qbtn" name="">
                <input type="number" class="btn qbtn" style="width: 80px" id="quan" name="qty" min="1" value="1">
                <input type="button" value="+" class="btn qbtn" id="add" name="">


              </div>

      <div class="col-md-4">
                <br>

          <button type="submit" name="addcart" style="width: 100%; color: #fff" class="btn pbtn bgcolor" value="<?php echo $id ?>"> <i class="fa fa-plus"></i> Add to Cart </button>

      </div>

        <?php }else{ ?>

          <!-- Button trigger modal -->
<button type="button" class="btn pbtn bgcolor" style="width: 100%; color: #fff" data-toggle="modal" data-target="#lm">
 <i class="fa fa-sign-in"></i>   Order Now
</button>



        <?php } ?>  

                
    </form>
</div>


          <br>
          <br>
          <h4>Product Detail:</h4>

          <br>
          <?php echo  $desp ?>

        <?php } ?>
        <hr>
        <h4>User's Reviews:</h4>
        <br>
        <div class="col-sm-12">

        <?php
          $rows =mysqli_query($con,"SELECT * FROM reviews where proid='$proid'  ORDER BY datec" ) or die(mysqli_error($con));
          while($row=mysqli_fetch_array($rows)){
           $revid = $row['id']; 
           $revactid = $row['actid']; 
           $rating = $row['rating']; 
           $review = $row['review']; 
           $datec = $row['datec'];

          $rowsx =mysqli_query($con,"SELECT * FROM users where id='$revactid'  ORDER BY datec" ) or die(mysqli_error($con));
          while($rowx=mysqli_fetch_array($rowsx)){
           $revactpic = $rowx['img']; 
           $revactname = $rowx['name']; }

           ?>
          <div class="row">

            <div class="col-sm-3">
             <img src="images/users/<?php echo $revactpic ?>" style="width: 100px" />
             <br> 


             <strong><?php echo $revactname ?></strong><br> <span><?php echo $datec ?></span>

             <br>


           </div>

           <div class="col-sm-9">
          


    <div id="rating_div" class="w3-container">
        <div class="star<?php echo rand(1,1000) ?> ">
          <span><strong>Rate:</strong></span>
          <span class="fa fa-star-o" data-rating="1" ></span>
          <span class="fa fa-star-o" data-rating="2" ></span>
          <span class="fa fa-star-o" data-rating="3" ></span>
          <span class="fa fa-star-o" data-rating="4" ></span>
          <span class="fa fa-star-o" data-rating="5" ></span>
          <input type="hidden" name="rating" class="rating-value" value="<?php echo $rating ?>">
        </div>
  </div>


            <p>
              <?php echo $review ?>
            </p>
          </div>    
        </div>
        <br><br>


<?php } ?>

      <?php if(!empty($actid)){ ?>
        <?php 
         $rows =mysqli_query($con,"SELECT * FROM reviews where proid='$proid' AND actid='$actid'  ORDER BY datec" ) or die(mysqli_error($con));
          while($row=mysqli_fetch_array($rows)){
           $newrevid = $row['id']; 
           $newrevactid = $row['actid']; 
           $newrating = $row['rating']; 
           $newreview = $row['review']; 
           $newdatec = $row['datec'];

        ?>

   <form action="" method="post">
      <div class="row ratinguser">
   
        <div class="col-md-12">
          <h2>Update Your Rating:</h2>


        </div>
      </div>
      <div class="row">

        <div class="col-md-1">
          <br>
          <img src="images/users/<?php echo $actpic ?>" style="width: 40px;">
        </div>
        <div class="col-md-4">
          <br>
          <input type="text" name="name" value="<?php echo $actname ?>" readonly class="form-control">
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
          Rating:

   <!--Rating Section -->
  <div id="rating_div" class="w3-container">
        <div class="star-rating">
          <span class="fa divya fa-star-o" data-rating="1" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="2" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="3" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="4" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="5" style="font-size:20px;"></span>
          <input type="hidden" name="rating" class="rating-value" value="<?php echo $newrating ?>">
          <input type="hidden" name="proid" value="<?php echo $proid ?>">
        </div>
  </div>


          
        </div>
        <br>
        <br>

        </div>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
          <span>Review:</span>
          <textarea rows="5" class="form-control" name="review"><?php echo $newreview ?></textarea>
          
        </div>

        </div>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10 text-center">
          <br><br>
          <button type="submit" name="uprev" class="btn bgcolor " style="color: #fff" value="<?php echo $newrevid ?>"> Update </button>
          
        </div>

        </div>
      </form>

<?php }

if(empty($newrevid)){ ?>
    <form action="" method="post">
      <div class="row ratinguser">
   
        <div class="col-md-12">
          <h2>Add Your Rating:</h2>


        </div>
      </div>
      <div class="row">

        <div class="col-md-1">
          <br>
          <img src="images/users/<?php echo $actpic ?>" style="width: 40px;">
        </div>
        <div class="col-md-4">
          <br>
          <input type="text" name="name" value="<?php echo $actname ?>" readonly class="form-control">
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
          Rating:

   <!--Rating Section -->
  <div id="rating_div" class="w3-container">
        <div class="star-rating">
          <span class="fa divya fa-star-o" data-rating="1" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="2" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="3" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="4" style="font-size:20px;"></span>
          <span class="fa fa-star-o" data-rating="5" style="font-size:20px;"></span>
          <input type="hidden" name="rating" class="rating-value" value="1">
          <input type="hidden" name="proid" value="<?php echo $proid ?>">
        </div>
  </div>


          
        </div>
        <br>
        <br>

        </div>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
          <span>Review:</span>
          <textarea rows="5" class="form-control" name="review"></textarea>
          
        </div>

        </div>
      <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10 text-center">
          <br><br>
          <input type="submit" name="addrev" class="btn bgcolor " style="color: #fff">
          
        </div>

        </div>
      </form>
    <?php }  }else {?>
<hr>
<br>
      <a href="login">LogIn / SignUp </a> To Add Your Review...
<br>
    <?php } ?>

    </div>
  </div>





  <div class="col-md-3">

    <h2>Related Products:</h2>
    <br>

    <?php

    $rows =mysqli_query($con,"SELECT * FROM product WHERE ( pid!=30 && id!=$proid) ORDER BY RAND() LIMIT 5" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $slug = $row['slug'];
      $desp = $row['desp'];
      $price = $row['price'];
      $id = $row['id'];
      $img = $row['img1'];
      if(empty($desp)) $desp='...';
      
      


      ?>


      <div class="card">
        <a href="dproducts-<?php echo $slug ?>">
          <img src="images/products/<?php echo  $img ?>" class="cardimg">
        </a>
        <div class="cardbody">
        <a href="dproducts-<?php echo $slug ?>">

          <h4><?php echo  $name ?></h4>
        </a>
        <span>Price: <b>Rs. <?php echo number_format($price) ?>/- </b></span>

          
          <?php  $avgrt =mysqli_query($con,"SELECT AVG(rating) FROM reviews where proid='$id'  ORDER BY datec" ) or die(mysqli_error($con)); 
          while($avg=mysqli_fetch_array($avgrt)){
           $avgrate = round($avg['AVG(rating)'],1);}
           $avgct =mysqli_query($con,"SELECT id  FROM reviews where proid='$id'" ) or die(mysqli_error($con));   $countrate=mysqli_num_rows($avgct);
            ?>
          <div id="rating_div" class="w3-container">
        <div class="star<?php echo rand(1,1000) ?> ">
          <span><strong>Rate:</strong></span>
          <span class="fa fa-star-o" data-rating="1" ></span>
          <span class="fa fa-star-o" data-rating="2" ></span>
          <span class="fa fa-star-o" data-rating="3" ></span>
          <span class="fa fa-star-o" data-rating="4" ></span>
          <span class="fa fa-star-o" data-rating="5" ></span>
          <input type="hidden" name="rating" class="rating-value" value="<?php echo $avgrate ?>">
          <span>           <?php echo $avgrate ?>   (<?php echo $countrate ?>) </span>

        </div>
  </div>
           
           

          </div>
        </div>
        <br>
      <?php   } ?>


    </div>
  </div>
</div>



<br><br>
<?php include 'include/footer.php'; ?>


<script src="js/flex.js"></script>
<script type="text/javascript">
  $(".flexslider").flexslider({
    animation: "slide", 
    slideshow: true,
    touch: true,
    keyboard: true,
    pauseOnHover: true
  });
</script>





    <script type="text/javascript">
      $('#less').click( function(){

        qt = $('#quan').val();
        newqt = qt-1;
        $('#quan').val(newqt)
      })

      $('#add').click( function(){

        qt = $('#quan').val();
        nqt = parseInt(qt);
        newqt = nqt + 1 ;
        $('#quan').val(newqt)
      })


    </script>





<script>
var $star_rating = $('.star-rating .fa');
var SetRatingStar = function() {
  return $star_rating.each(function() {
    if (parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
      return $(this).removeClass('fa-star-o').addClass('fa-star');
    } else {
      return $(this).removeClass('fa-star').addClass('fa-star-o');
    }
  });
};

$star_rating.on('click', function() {
  $star_rating.siblings('input.rating-value').val($(this).data('rating'));
  return SetRatingStar();
});

SetRatingStar();
$(document).ready(function() {
});



</script>

</div>
</body>

</html>

