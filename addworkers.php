<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Products Dashboard UI</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/workers.css">
<link rel="stylesheet" href="css/addworkerbutton.css">




</head>
<body style="background-color: #101827" >



<?php
$a=2;

include 'workerSideBar.php';
?>




  <div class="app-content">
    <div class="app-content-header">
      <h1 class="app-content-headerText">Add Workers</h1>
      <button class="mode-switch" title="Switch Theme">
        <svg class="moon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" width="24" height="24" viewBox="0 0 24 24">
          <defs></defs>
          <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z"></path>
        </svg>
      </button>
    </div>



             <!-- Add Worker Button  -->

             <form role="form" action="includes/workers.inc.php" method="post">
            <input placeholder="userID" type="text" name="userid" required="">
            <input placeholder="Salary" type="text" name="salary" required="">
            <button type="submit" name="add">Submit</button>
          </form>


        
            <!--     -->





    
    
    <div class="app-content-actions">
      <div class="app-content-actions-wrapper">
        
        <button class="action-button list active" title="List View">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list"><line x1="8" y1="6" x2="21" y2="6"/><line x1="8" y1="12" x2="21" y2="12"/><line x1="8" y1="18" x2="21" y2="18"/><line x1="3" y1="6" x2="3.01" y2="6"/><line x1="3" y1="12" x2="3.01" y2="12"/><line x1="3" y1="18" x2="3.01" y2="18"/></svg>
        </button>
        <button class="action-button grid" title="Grid View">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg>
        </button>
      </div>
    </div>

  
    <div class="products-area-wrapper tableView">
      <div class="products-header">

        <div class="product-cell image">
          Items
          <button class="sort-button">
          </button>
        </div>
        <div class="product-cell category">Category<button class="sort-button">
          </button></div>
        <div class="product-cell status-cell">Status<button class="sort-button">
          </button></div>
        <div class="product-cell sales">Salary<button class="sort-button">
          </button></div>
        <div class="product-cell stock"><button class="sort-button">
          </button></div>
        <div class="product-cell price"> Finsh<button class="sort-button">
          </button></div>
    

                        <?php

                    $sql = "SELECT * FROM users;";
                    $result = mysqli_query($conn , $sql);
                    $resultCheck = mysqli_num_rows($result);

                    if($resultCheck > 0 )
                    {
                        while($row = mysqli_fetch_assoc($result))
                        { ?>
            </div>


            
                                <!-- userID -->

      <div class="products-row">
        <button class="cell-more-button">
          <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical"><circle cx="12" cy="12" r="1"/><circle cx="12" cy="5" r="1"/><circle cx="12" cy="19" r="1"/></svg>
        </button>
          <div class="product-cell image">
            <img src="images/face.png" alt="product">
            <span><?php echo $row['usersId'] ; ?></span>
          </div>


                                <!-- UserName -->
        <div class="product-cell category"><span class="cell-label">Name:</span><?php echo $row['usersName'] ; ?></div>
        <div class="product-cell status-cell">

        
                                <!-- isWorker -->
          <span class="cell-label">Status:</span>
          <span class="status <?php  if($row['isWorker']== 1){ echo "active";}else echo "disabled";?>" ><?php  if($row['isWorker']== 1){
            echo "Staff";
          }else echo "none" ; ?></span>
        </div>


        <div class="product-cell sales"><span class="cell-label">Sales:</span>
      
              <!-- Remove from staff -->

        <div class="product-cell stock"><span class="cell-label">Salary</span> <?php echo $row['Salary'] ?></div>

        </div>
      

                    <!--      -->
     
        <div class="product-cell stock"><span class="cell-label"></div>

        <form role="form" action="includes/workers.inc.php" method="post">

        <button type="submit" name="remove">Finsh</button>
        <input type="hidden" name="userid" value="<?php echo $row['usersId']; ?>">
        </form>

      </div>
      <div class="products-row">
        <button class="cell-more-button">
          <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical"><circle cx="12" cy="12" r="1"/><circle cx="12" cy="5" r="1"/><circle cx="12" cy="19" r="1"/></svg>
        </button>

        <?php }}?>
          
      </div>
    </div>
  </div>
</div>
<!-- partial -->
  <script  src="script/workers.js"></script>


</body>
</html>
