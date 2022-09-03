<?php include 'inc/header.php'; ?>
<?php 
$login = Session::get("cuslogin");
if ($login == false) {
    header("Location:login.php");
}
 ?>
<style type="text/css">
.payment{width: 500px; min-height: 200px; text-align: center; border: 1px solid #ddd; margin: 0 auto; padding:50px;}	
.payment h2{border-bottom: 1px solid #ddd; margin-bottom: 40px; padding-bottom: 10px;}	
.payment a{background: #3C3B40; border-radius: 3px; color:#fff; font-size:22px; padding:5px 30px;}
.back a{width:150px; margin: 5px auto 0; padding: 7px 0; text-align: center; display: block; background: #555; border:1px solid #333; color: #fff; border-radius: 3px; font-size: 25px; }

</style>
 
<div class="main">
	<div class="content">
		<div class="section group">
		<div class="payment">
			<h2>Payment Option</h2>
			<a href="paymentoffiline.php">Cash On Delivery</a>
			</br>
		</br>
	<div>
	<form action="https://uat.esewa.com.np/epay/main" method="POST">
    <input value="100" name="tAmt" type="hidden">
    <input value="90" name="amt" type="hidden">
    <input value="5" name="txAmt" type="hidden">
    <input value="2" name="psc" type="hidden">
    <input value="3" name="pdc" type="hidden">
    <input value="EPAYTEST" name="scd" type="hidden">
    <input value="ee2c3ca1-696b-4cc5-a6be-2c40d929d453" name="pid" type="hidden">
    <input value="http://merchant.com.np/page/esewa_payment_success?q=su" type="hidden" name="su">
    <input value="http://merchant.com.np/page/esewa_payment_failed?q=fu" type="hidden" name="fu">

    <input value="Pay with Esewa" type="submit" class="btn btn-primary"> 
    
    </form>
</div>
		</div>

		<div class="back">
			<a href="cart.php">Previous</a>
		</div>				
		</div>
	</div>
<?php include 'inc/footer.php'; ?>
