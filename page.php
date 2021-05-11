<html>
<head>
<?php include 'include/connect.php'; ?>
<?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
<?php if(!empty( $_GET['pages_name'])) $page = $_GET['pages_name'] ?>
<?php if(empty( $_GET['page_name'])) $link = 'Null' ?>
<?php if(empty( $_GET['pages_name'])) $page = Null ?>
<?php

$rows =mysqli_query($con,"SELECT * FROM pages where slug='page-$link'  ORDER BY ordr" ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
  $pageordr = $row['ordr'];
?>

<meta name="keywords" content="<?php echo $pagemetak ?>">
<meta name="description" content="<?php echo $pagemetad ?>">

<title>
  <?php echo $pagename ?> - Food Kitchen
</title>

<?php } ?>

  <?php include('include/head.php') ?>


<style type="text/css">
  
  #coverimg{
    width: 100%;
    height: 150px;

  }

</style>

</head>
<body onload="showtoast()"  class="page-header-fixed bg-1 layout-boxed">

<div class="modal-shiftfix">
<?php include('include/header.php') ?>
        <img  src="images/covers/<?php echo $pagecover ?>"  style="width: 100%;">

<?php if (!empty($link)) { ?>




<div class="container">

<br><br>

    <div class="row">

      <div class="col-md-12">
        <?php echo $pagepost ?>
    </div>
</div>


</div>

<?php } ?>
<?php include('include/footer.php') ?>

</body>
</html> 