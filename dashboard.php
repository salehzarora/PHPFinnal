<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Workers Dashboard UI</title>
 
  <link rel="stylesheet" href="css/workers.css">
  <link rel="stylesheet" href="css/dashboard.css">
  <link rel="stylesheet" href="css/dashboard2.css">
  <link rel="stylesheet" href="css/dashboard3.css">
  <link rel="stylesheet" href="css/refreshbutton.css">







  <?php 
$a=6;

include 'workerSideBar.php'; 
include 'includes/dashboard.inc.php'; 



?>


<script>
window.onload = function () {
 

	
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
    backgroundColor: "#ffffff",


	
	data: [{
		
        indexLabelFontColor: "black",
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",

		yValueFormatString: "#,##0",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();





var chart2 = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
	theme: "light2",
	
	axisY: {
		suffix: "%",
		scaleBreaks: {
			autoCalculate: true
		}
	},
	data: [{
		type: "column",
		yValueFormatString: "₪#,##0",
		indexLabel: "{y}",
		indexLabelPlacement: "inside",
		indexLabelFontColor: "white",
		dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
	}]
});
chart2.render();
 
}

 
 </script>





</head>
<body style="background-color: #101827">



<!-- partial:index.partial.html -->








<!-- partial:index.partial.html -->
<div class="app">
		
		<div class="app-header-navigation">
			<div class="tabs">
				<a href="#" class="active">
					Top products
				</a>
				<a href="#" >
					Payments
				</a>
				<a href="#">
					Cards
				</a>
			</div>
		</div>
		
		<div class="app-header-mobile">
			<button class="icon-button large">
				<i class="ph-list"></i>
			</button>
		</div>

	</header>

	<div class="app-body">
				
		<div class="app-body-main-content">
			<section class="service-section">
				<h2>Top products</h2>


	<form id="contact-form" role="form" action="includes/dashboard.inc.php" method="post">

		<div class="buttons">
		<button class="btn-green" name="submit">
			<img class="icon" src="https://htmlacademy.ru/assets/icons/reload-6x-white.png"> Refresh </button>
		</div>
	</form> 
				
				<div class="service-section-header">
					
					</div>
				
				<div class="tiles"  style="height: 500px; width: 370%;">
					<article class="tile" >
					<div class="tile-header"">
							<i></i>
							<h3>
								<span>Top 5 products Sold </span>
								<span>by units</span>
							</h3>
						</div>

					<div id="chartContainer" style="height: 470px; width: 100%;"></div>

							

					</article>
					<article class="tile" >
						

					<div class="tile-header">
							<i></i>
							<h3>
								<span>Top 5 products Sold</span>
								<span>by price</span>
							</h3>
						</div>
 			
					<div id="chartContainer2" style="height: 370px; width: 100%;"></div>


				</div>
				
			</section>
			<section class="transfer-section"  style="height: 500px; width: 370%;">
				<div class="transfer-section-header" >
					<h2>Latest transfers</h2>
					
				</div>
				<div class="transfers">
					<div class="transfer">
						<div class="transfer-logo">
							<img src="https://assets.codepen.io/285131/apple.svg" />
						</div>
						<dl class="transfer-details">
							<div>
								<dt>Apple Inc.</dt>
								<dd>Apple ID Payment</dd>
							</div>
							<div>
								<dt>4012</dt>
								<dd>Last four digits</dd>
							</div>
							<div>
								<dt>28 Oct. 21</dt>
								<dd>Date payment</dd>
							</div>
						
							<div>
							<dt>- $ 550</dt>
							<dd>income</dd>
							</div>

							
						</dl>
					</div>
					<div class="transfer">
						<div class="transfer-logo">
							<img src="https://assets.codepen.io/285131/pinterest.svg" />
						</div>
						<dl class="transfer-details">
							<div>
								<dt>Pinterest</dt>
								<dd>2 year subscription</dd>
							</div>
							<div>
								<dt>5214</dt>
								<dd>Last four digits</dd>
							</div>
							<div>
								<dt>26 Oct. 21</dt>
								<dd>Date payment</dd>
							</div>
						</dl>
						<div class="transfer-number">
							- $ 120
						</div>
					</div>
					<div class="transfer">
						<div class="transfer-logo">
							<img src="https://assets.codepen.io/285131/warner-bros.svg" />
						</div>
						<dl class="transfer-details">
							<div>
								<dt>Warner Bros.</dt>
								<dd>Cinema</dd>
							</div>
							<div>
								<dt>2228</dt>
								<dd>Last four digits</dd>
							</div>
							<div>
								<dt>22 Oct. 21</dt>
								<dd>Date payment</dd>
							</div>
						</dl>
						<div class="transfer-number">
							- $ 70
						</div>
					</div>
				</div>
			</section>
		</div>


 		<br> <br> <br>


		<div class="app-body-sidebar">
			<section class="payment-section">
				<h2>New Users</h2>
				<div class="payment-section-header">
					
				</div>

				<?php 
				


				$sql5 = "SELECT * FROM `users` ORDER BY `Date` DESC, `time` DESC LIMIT 4  ";
				$result5 = mysqli_query($conn,$sql5);
				$resultCheck2 = mysqli_num_rows($result5);
				
				if($resultCheck2 > 0 )
				{
					while($row2 = mysqli_fetch_assoc($result5))
					{ ?>
				<div class="payments">
					<div class="payment">
							<img src="images/face.png" style="height: 100px; width: 50%;">
						<div class="payment-details">
							<h3><?php echo  $row2['usersName'] ;?></h3>
							<div>
								<span style="font-size:18px;color:grey"><?php echo $row2['Date']; ?><br><?php echo $row2['time']; ?> </span>
								
							</div>
						</div>
					</div>
					
				<?php } } ?>

				</div>
				
			</section>
		</div>
	</div>
</div>
</div>
<!-- partial -->
  <script src='https://unpkg.com/phosphor-icons'></script><script  src="./script.js"></script>

  <!-- Dashboards -->
  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>



</body>
</html>
