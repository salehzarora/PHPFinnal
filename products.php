

<?php
session_start();
include 'navbar.php';
include_once 'includes/gymdb.inc.php';


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="stylesheet" href="css/productCards.css" media="screen">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="screen">



    

</head>
<body style="background-color: #eee">


       
     
       


<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card mt-5">
                    <div class="card-header">
                        <h4>products</h4>
                    </div>
</div>
</div>
</div>


                    sort by:
                    <div class="card-body">
                        
                        <form action="sortedProducts.php" method="GET">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="input-group mb-3">
                                        <select name="sort_numeric" class="form-control">
                                            <option value="">--Select Option--</option>
                                            <option value="low-high" > > Low - High</option>
                                            <option value="high-low"   > High - Low</option>
                                        </select>
                                        <button type="submit" class="input-group-text btn btn-primary" id="basic-addon2">
                                            Filter
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
</div>


<div class="container d-flex justify-content-center mt-50 mb-50">
<div class="row">

<?php

$sql = "SELECT * FROM `product` ORDER BY id DESC;;";
$result = mysqli_query($conn , $sql);
$resultCheck = mysqli_num_rows($result);

if($resultCheck > 0 )
{
    while($row = mysqli_fetch_assoc($result))
    { ?>
            
           <div class="col-md-4 mt-2">
            
                
                <div class="card">
                                    <div class="card-body">
                                        <div class="card-img-actions">
                                            
                                                <img src="<?php echo $row['img'] ; ?>" class="card-img img-fluid" width="96" height="350" alt="">
                                              
                                           
                                        </div>
                                    </div>

                                    <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h6 class="font-weight-semibold mb-2">
                                                <a href="#" class="text-default mb-2" data-abc="true"><?php echo $row['name'] ;?> </a>
                                            </h6>

                                            <a href="#" class="text-muted" data-abc="true"><?php echo $row['category'] ;?></a>
                                        </div>
                                                                    <?php 
                                                    if(isset($_SESSION["isVIP"])){

                                                                $discount=12/100 * $row['price'];
                                                                $newprice=$row['price']-$discount;


                                    ?>

                                    <h3 class="mb-0 font-weight-semibold">₪<?php echo $newprice;?></h3>


                                   

                                        <h8 style="color:grey">it was :₪<?php echo $row['price'] ;?> </h8>

                                        <div>
                                           <i class="fa fa-star star"></i>
                                         You got VIP discount
                                           <i class="fa fa-star star"></i>
                                        </div>
                                        <?php 
                                        }else{ ?>


                                                <h3 class="mb-0 font-weight-semibold">₪<?php echo $row['price'] ;?> </h3>

                                                <div>
                                                <i class="fa fa-star star"></i>
                                                12% Discount for VIP subscribers
                                                <i class="fa fa-star star"></i>
                                                </div>

                                <?php } ?>
                                        <form id="contact-form" role="form" action="includes/productcart.inc.php" method="post">
                                        <button type="submit" class="btn bg-cart" name="submit"><i class="fa fa-cart-plus mr-2" ></i>
                                        <span class="button__text">
                                         <span>Add to cart</span>

                                         <?php 
                                                    if(isset($_SESSION["isVIP"])){ ?>

                                        <input type="hidden" name="Price" value="<?php echo $newprice; ?>">
                                            <?php }else{?>
                                        <input type="hidden" name="Price" value="<?php echo $row['price']; ?>">
                                                <?php  } ?>
                                        <input type="hidden" name="Item_Name" value="<?php echo $row['name'];?>">
                                        <input type="hidden" name="productid" value="<?php echo $row['id'];?>">

                                        </span>
                                        </button>
                                        </form>
                                    </div>
                                </div>
          
          
          
          
          
          
          
          
    </div>
                         
                         <?php
    }
}?>



                            
          




  





</body>
</html>