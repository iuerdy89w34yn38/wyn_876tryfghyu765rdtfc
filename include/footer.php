<br>
<br>
<br>

	<footer class="footer-v1">


  <div class="menuFooter clearfix" style="background: #000">
    <div class="container">
      <div class="row clearfix">
		<div class="col-sm-6 col-xs-12">
        	<p><img src="images/<?php echo $sitelogo; ?>" alt="" class="fimg"/></p>
        	<p><?php echo $fpost ;?></p>
        </div>
        <div class="col-sm-3 col-xs-12 borderLeft">
          <h5>Quick Links</h5>
          <ul class="menuLink">
          <?php

          $rows =mysqli_query($con,"SELECT name,slug,res FROM pages where foot=1  ORDER BY ordr" ) or die(mysqli_error($con));
                    
            while($row=mysqli_fetch_array($rows)){
              
              $slug = $row['slug']; 
              $name = $row['name']; 
              $res = $row['res']; 

              ?>
            <li <?php if($slug=='videos') echo ' style="display:none;" ' ; ?> ><a href="<?php echo $slug ?>"><?php echo $name ?></a></li>
                    <?php } ?>
          </ul>
        </div><!-- col-sm-3 col-xs-6 -->


        
        <div class="col-sm-3 col-xs-6 borderLeft">
          <div class="footer-address">
            <div class="socialArea">
          </div>
           <p>
                            <strong><i class="fa fa-map-marker"></i> Address:</strong> <br>
                            <?php echo $siteaddress ?> 
              </p>
                        <p>
                        	<strong><i class="fa fa-phone"></i> Call Us:</strong> <br> 
                            <?php echo $sitephone ?> 
                           
                        </p>
                        
                        <p>
                        	<strong><i class="fa fa-envelope"></i> Email:</strong> <br> 
                            <?php echo $sitemail ?> 
                            
                        </p>
            
          </div>
        </div><!-- col-sm-3 col-xs-6 -->

      </div><!-- row -->
    </div><!-- container -->
  </div><!-- menuFooter -->

  <div class="footer clearfix hidden" >
    <div class="container">
      <div class="row clearfix">
        <div class="col-sm-6 col-xs-12 copyRight">
          <p>© 2020 <?php echo $sitename ?> </p>
        </div><!-- col-sm-6 col-xs-12 -->
        <div class="col-sm-6 col-xs-12 privacy_policy">
         	&nbsp;
        </div><!-- col-sm-6 col-xs-12 -->
      </div><!-- row clearfix -->
    </div><!-- container -->
  </div><!-- footer -->
</footer>



<!-- JQUERY SCRIPTS -->
<script src="plugins/jquery/jquery-1.11.1.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/flexslider/jquery.flexslider.js"></script>
<script src="plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>


<script type="text/javascript" src="js/jquery.zoomslider.js"></script>

<script src="plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
<script src="plugins/pop-up/jquery.magnific-popup.js"></script>
<script src="plugins/animation/waypoints.min.js"></script>
<script src="plugins/count-up/jquery.counterup.js"></script>
<script src="plugins/animation/wow.min.js"></script>
<script src="plugins/animation/moment.min.js"></script>
<script src="plugins/calender/fullcalendar.min.js"></script>
<script src="plugins/owl-carousel/owl.carousel.js"></script>
<script src="plugins/timer/jquery.syotimer.js"></script>
<script src="plugins/smoothscroll/SmoothScroll.js"></script>
<script src="js/custom.js"></script>
<!--<script src="js/fa.min.js"></script> -->

<script type="text/javascript" src="js/stars.js"></script>




<?php if(!empty($msg)){ ?>
  <?php include 'include/snackbar.php'; ?>
<?php } ?>

