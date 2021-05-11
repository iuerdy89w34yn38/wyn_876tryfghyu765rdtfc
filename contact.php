<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['dservice_name'])) $page = $_GET['dservice_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['dservice_name'])) $page = Null ?>
 
<?php include 'include/head.php'; ?>

<title> Contact Us - <?php echo $sitename ?> </title>


<style>

.facont{
    background:#ffa037;
    padding: 10px 20px;
    border-radius: 2px;
    color: #fff;
}  

</style>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
  <br>

 
  <?php

  $rows =mysqli_query($con,"SELECT * FROM contact where id=1 " ) or die(mysqli_error($con));
  

  while($row=mysqli_fetch_array($rows)){

    $pagepost = $row['post'];
    $pagecover = $row['cover'];

  }

  ?>
     
     <div class="container pbg">
      
      <div class=" " >
          <h1>Contact Us</h1>
            <?php //echo $pagepost ?>
             
         </div>
     
    <div class="row" class="pbg">
              <div class="col-md-12">
                  <div class="googlemap">

                    <div>
         
           <?php echo $gmaps ?>
         
     </div> <!--banner ends-->


                
                     </div>
                 </div>
             </div>
             
    <div class="row" class="pbg">
              <div class="col-md-3">
              </div>
              <div class="col-md-6">
                  <div class="">
                        <table class="" style="width: 100%">
                            <tbody>
                                <tr>
                                    <td>
                                       <b> Email:   </b>
                                    </td>
                                    <td>
                                        <a href="mailto:<?php echo $sitemail ?>"><?php echo $sitemail ?></a>  
                                    </td>
                               

                                    <td>
                                        <b> Phone: </b>  
                                    </td>
                                    <td>
                                        <?php echo $sitephone ?>:  
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="text-center">
                                        <br>
                                        <br>
                                        <a href="<?php echo $facebook ?>"><i class="fa fa-facebook facont"></i></a>
                                        <a href="<?php echo $twitter ?>"><i class="fa fa-twitter facont"></i></a>
                                        <a href="<?php echo $insta ?>"><i class="fa fa-instagram facont"></i></a>
                                        <a href="<?php echo $youtube ?>"><i class="fa fa-youtube facont"></i></a>

                                        <br>
                                        <br>

                                    </td>
                                </tr>
                            </tbody>
                        </table>

                
                     </div>
                 </div>
             </div>
             
             <hr>
            
     <div class="row ">

      <div class="col-md-12">
             <div class="row">
        <div class="card">
            <div class="card-body">
                 <form action="" method="post">
                         <div class="form-row">
                            <div class="col-md-6">
                         <div class="form-row">
                             <div class="form-group col-md-12">
                               <input id="Full Name" name="name" placeholder="Full Name" class="form-control" type="text">
                             </div>
                             <div class="form-group col-md-12">
                               <input type="email" name="email" class="form-control" id="inputEmail4" placeholder="Email">
                             </div>
                           </div>
                         <div class="form-row">
                             <div class="form-group col-md-12">
                                 <input id="Phone No." name="phone" placeholder="Phone No." class="form-control" required type="text">
                             </div>
                             <div class="form-group col-md-12">
                                 <input id="Subject" name="subject" placeholder="Subject" class="form-control" required type="text">
                             </div>
                         </div>
                     </div>
                         <div class="col-md-6">
                             <div class="form-group col-md-12">
                                       <textarea id="comment" name="msg" cols="40" rows="10" placeholder="Your Message"class="form-control"></textarea>
                             </div>
                         </div>
                         
                         <div class="col-md-12">
                            <center>
                             <button name="submit" type="submit" class="btn bgcolor">Submit</button>
                         </center>
                         </div>
                     </form>
                 </div>

                     <?php
                     if(isset($_POST['submit'])) {
                     // EDIT THE 2 LINES BELOW AS REQUIRED
                     $email_to = $sitemail;
                     $email_subject = "Website Contact";

                     function died($error) {
                     // your error code can go here
                     echo "We are very sorry, but there were error(s) found with the form you submitted. ";
                     echo "These errors appear below.<br /><br />";
                     echo $error."<br /><br />";
                     echo "Please go back and fix these errors.<br /><br />";
                     die();
                     }
                     
                     $name = $_POST['name']; // required
                     $subject = $_POST['subject']; // required
                     $email = $_POST['email']; // required
                     $phone = $_POST['phone']; // not required
                     $msg = $_POST['msg']; // required
                     
                     $email_message = "Form details below.\n\n";


                     function clean_string($string) {
                     $bad = array("content-type","bcc:","to:","cc:","href");
                     return str_replace($bad,"",$string);
                     }



                     $email_message .= "Name: ".clean_string($name)."\n";
                     $email_message .= "Email: ".clean_string($email)."\n";
                     $email_message .= "Telephone: ".clean_string($phone)."\n";
                     $email_message .= "Subject: ".clean_string($subject)."\n";
                     $email_message .= "Message: ".clean_string($msg)."\n";


                     // create email headers
                     $headers = 'From: '.$email_from."\r\n".
                     'Reply-To: '.$email_from."\r\n" .
                     'X-Mailer: PHP/' . phpversion();
                     @mail($email_to, $email_subject, $email_message, $headers);
                     ?>

                     <!-- include your own success html here -->
                     <br>
                     <center>
                         <h4>
                     Thank you for contacting us.
                     <br>
                     We will be in touch with you very soon.
                     </h4>
                     </center>

                     <?php

                     }
                     ?>
            </div>
        </div>
             </div>
    </div>
         <div class="clearfix">&nbsp;</div>
     </div>
     </div>



    <?php include 'include/footer.php'; ?>



</div>
</body>

</html>

