<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>
  <?php include 'include/carthead.php'; ?>

  <link rel="stylesheet" type="text/css"  href="admin757/dt/jquery.dataTables.min.css" />
  <link rel="stylesheet" type="text/css"  href="admin757/dt/buttons.dataTables.min.css" />


  <title>Profile  - <?php echo $sitename ?> </title>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['order_name'])) $page = $_GET['order_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['order_name'])) $page = Null ?>
  
  <style type="text/css">
    .orow{
      cursor: pointer;
    }
    .orow:hover{
      cursor: pointer;
      background: #ffa037;
    }
  </style>
</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
<br>



    <?php if (!empty($page)) {

      ?>

      <div class="container-fluid main-content">
        <div class="row">
          <!-- Basic Table -->
          <div class="col-lg-1">
          </div>
          <div class="col-lg-10">
            <div class="widget-container fluid-height clearfix overflow">
              <div class="heading" style="text-transform: capitalize;">
                <a target="_blank" href="prints-<?php echo $page ?>" class="">
                <div class="print" style=" padding: 10px;outline: 1px solid #ffa037"> 
                   <i class="fa fa-print"></i> Print</div>
                    </a>

              </div>
              <div class="widget-content padded clearfix">



                <?php 
                $rows =mysqli_query($con,"SELECT * FROM shop where  id='$page' LIMIT 1" ) or die(mysqli_error($con));
                $rowcount=mysqli_num_rows($rows);
                $n=0;      $stotal=0;

                while($row=mysqli_fetch_array($rows)){
                  $oid = $row['id']; 
                  $actid = $row['actid']; 
                  $pid = $row['pid']; 
                  $qty = $row['qty']; 
                  $size = $row['size']; 
                  $cstatus = $row['status']; 
                  $datec = $row['datec']; 
                  $pdate = $row['pdate']; 
                  $edate = $row['edate']; 
                  $ddate = $row['ddate']; 
                  $expdate = $row['expdate']; 
                  $expreason = $row['expreason']; 

                  $bfirstname = $row['bfname'];
                  $blastname = $row['blname'];
                  $bpostalcode = $row['bpostal'];
                  $baddress1 = $row['baddress1'];
                  $baddress2 = $row['baddress2'];
                  $bcity = $row['bcity'];
                  $bcountry = $row['bcountry'];
                  $bphone = $row['bmobile'];
                  $bemail = $row['bemail'];
                  $sfirstname = $row['sfname'];
                  $slastname = $row['slname'];
                  $spostalcode = $row['spostal'];
                  $saddress1 = $row['saddress1'];
                  $saddress2 = $row['saddress2'];
                  $scity = $row['scity'];
                  $scountry = $row['scountry'];
                  $sphone = $row['smobile'];
                  $semail = $row['semail'];
                  $inst = $row['inst'];
                  
                  



              $rowsx =mysqli_query($con,"SELECT name,price,img1 FROM product where id='$pid' " ) or die(mysqli_error($con));
              while($rowx=mysqli_fetch_array($rowsx)){

                $price = $rowx['price'];  
                $proname = $rowx['name']; 
                $image = $rowx['img1']; 
                $total = $qty*$price;
                $stotal = $stotal+$total;


                    
                    ?>
                    <table class="table" style="font-weight: 600;    background: #ffa037;    color: white;">
                      
                     <tr>
                      <td colspan="2" class="text-center">Order ID: <?php echo $page ?></td><td>Product ID: <?php echo $pid ?></td><td colspan="3">Customer ID: <?php echo $actid ?></td><td>Date: <?php echo $datec ?> </td>
                    </tr>

                  </table>
                  <table class="table">
                   <tr>
                    <td class="text-right">Image: </td><td><img src="images/products/<?php echo $image ?>" class="minicartimg"></td>
                    <td class="text-right">Name: </td><td><?php echo $proname ?></td> 
                    <td class="text-right">Size: </td><td> <?php echo $size ?> </td>
                  </tr>
                  <tr>


                   <td class="text-right">Qty</td> <td> <?php echo $qty ?> </td>
                   <td class="text-right">Price</td><td><?php echo number_format($price) ?></td>
                   <td class="text-right">Total Price</td><td> Rs.  <?php echo number_format($stotal) ?>/- </td>
                 </tr>
               </table>

             <?php } } ?>





             <div class="col-md-6"> 
              
              <h4>Billing Details:</h4>


              <strong>
                Name:
              </strong>
              <?php if(!empty($bfirstname)) echo $bfirstname ; ?> -

              <?php if(!empty($blastname)) echo $blastname ; ?>
              <br><br>
              
              <strong>
                Address:
              </strong> 

              <?php if(!empty($baddress1)) echo $baddress1 ; ?> ,

              <?php if(!empty($baddress2)) echo $baddress2 ; ?>
              <br>
              <?php if(!empty($bcountry)) { echo $bcountry ; }?>

              <?php if(!empty($bcity)) {  echo $bcity ; }?> 
              
              <?php if(!empty($bpostalcode)) echo $bpostalcode ; ?>
              <br>
              <strong>
              Contact:    </strong>
              <br>
              <?php if(!empty($bphone)) echo $bphone ; ?>
              <br>
              <?php if(!empty($bemail)) echo $bemail ; ?>
            </div>

            <div class="col-md-6"> 

              <h4>Shipping Details:</h4>
              
              <strong>
                Name:
              </strong> 
              <?php if(!empty($sfirstname)) echo $sfirstname ; ?>

              <?php if(!empty($slastname)) echo $slastname ; ?>
              
              <br>
              <br>
              
              <strong>
                Address:
              </strong> 
              
              <?php if(!empty($saddress1)) echo $saddress1 ; ?>

              <?php if(!empty($saddress2)) echo $saddress2 ; ?>
              <br>
              <?php if(!empty($scountry)) { echo $scountry ; }?>


              <?php if(!empty($scity)) {  echo $scity ; } ?>

              <?php if(!empty($spostalcode)) echo $spostalcode ; ?>


              <br>
              
              <strong>
                Contact:
              </strong> 
              
              <br>
              <?php if(!empty($sphone)) echo $sphone ; ?>
              <br>
              <?php if(!empty($semail)) echo $semail ; ?>   


            </div>

            <div class="col-md-3">
              <br>

              <h4>Special Instructions: </h4>
            </div>
            <div class="col-md-8">
              <br>  
              <?php echo $inst ?>
            </div>

            <br>
          </div>



          <div class="container">
            <table class="table">
              <tfoot><tr>
                <td class="text-center">Order Status:  <span style="text-transform: uppercase;"> <?php echo $cstatus ?> </span> </td>
                
                <td class="text-center">Cart Entry:  <span> <?php echo $datec ?> </span> </td>
                
              </tr>
            </tfoot>
          </table>
          <table class="table">
            <tfoot><tr>

              <?php if(!empty($pdate)){ ?>
                <td class="text-center">Cart Confirm Date:  <span> <?php echo $pdate ?> </span> </td>
              <?php } ?>
              <?php if(!empty($edate)){ ?>
                <td class="text-center">Dispatched Date:  <span> <?php echo $edate ?> </span> </td>
              <?php } ?>
              <?php if(!empty($ddate)){ ?>
                <td class="text-center">Delivered Date:  <span> <?php echo $ddate ?> </span> </td>
              <?php } ?>
            </tr>
          </tfoot>
        </table>


        <?php if(empty($expdate)){ ?>

        <?php }else{ ?>


        <table class="table">
              <tfoot><tr>
                
                <td class="text-center">Cancel / Expire Date:  <span> <?php echo $expdate ?> </span> </td>

                <td class="text-left">Reason :  <span style="text-transform: capitalize;"> <?php echo $expreason ?> </span> </td>

                
              </tr>
            </tfoot>
          </table>

        <?php } ?>
      </div>
    </div>
  </div>
</div>
</div>

<?php } ?>

</div>

</body>


    <br><br>



  </div>

    <br><br>
  <div class="space"></div>

<?php include 'include/footer.php'; ?>
<script src="admin757/dt/jszip.min.js"></script>
<script src="admin757/dt/pdfmake.min.js"></script>
<script src="admin757/dt/vfs_fonts.js"></script>
<script src="admin757/dt/jquery.dataTables.min.js"></script>
<script src="admin757/dt/dataTables.buttons.min.js"></script>
<script src="admin757/dt/buttons.flash.min.js"></script>
<script src="admin757/dt/buttons.html5.min.js"></script>
<script src="admin757/dt/buttons.print.min.js"></script>>

<script type="text/javascript">
  $(document).ready(function() {
    $('#example').DataTable( {
      dom: 'Bfrtip',
      buttons: [
      'copy', 'csv', 'excel', 'pdf', 'print'
      ]
    } );
  } );
</script>


</body>

</html>

