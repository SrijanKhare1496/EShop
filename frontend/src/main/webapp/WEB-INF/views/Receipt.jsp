<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">



<style>

body{margin-top:20px;}
.text-danger strong {
        	color: #9f181c;
		}
		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}
		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}
		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}
		.receipt-main::after {
			background: #414143 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}
		.receipt-main thead {
			background: #414143 none repeat scroll 0 0;
		}
		.receipt-main thead th {
			color:#fff;
		}
		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}
		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}
		.receipt-right p i {
			text-align: center;
			width: 18px;
		}
		.receipt-main td {
			padding: 9px 20px !important;
		}
		.receipt-main th {
			padding: 13px 20px !important;
		}
		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}
		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}	
		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}
		.receipt-header-mid .receipt-left h1 {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
		}
		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}
		
		#container {
			background-color: #dcdcdc;
		}
                                    </style></head>

<br><br>
<font face="trebuchet ms" size="15px"><center><mark>-Thankyou For Shopping With Us-</mark></center></font>
<hr>

<div class="row">
		
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="receipt-left">
							INVOICE ID: ORD00${orderDetail.orderId}
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<div class="receipt-right">
							<h5>E-shop.com</h5>
							<p>+91 7999892861 <i class="fa fa-phone"></i></p>
							<p>E.shop@gmail.com <i class="fa fa-envelope-o"></i></p>
							<p>INDiA <i class="fa fa-location-arrow"></i></p>
						</div>
					</div>
				</div>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
						<i><small><u>This invoice belongs to our most beloved customer:</u></small></i><br>
							<h5>${userDetail.customerName} </h5>
							<p><b>Mobile :</b>${userDetail.mobile }</p>
							<p><b>Email :</b> ${userDetail.email }</p>
							<p><b>Address :</b> ${userDetail.address }</p>
							</div>
							<hr>
							<div>
							<p><b> Date :</b> ${orderDetail.orderDate}</p>
						</div>
					</div>
									</div>
            </div>
			
            <div>
                <table class="table table-bordered">

                    <thead>
     
                        <tr>
                            <th>Product Description</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${cartItems }" var="cartItem">
						<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
                    
                        <tr>
                            <td class="col-md-6">${cartItem.prodName}</td>
                            <td class="col-md-2">${cartItem.quantity }</td>
                            <td class="col-md-2">&#8377;${cartItem.price }</td>
                             <td class="col-md-2">&#8377;${cartItem.quantity * cartItem.price }</td>
                        </tr>
                    
                           </form>
                           </c:forEach>
                     
						
						
						
<tr>
	<td colspan="3">total Purchased Amount</td>
	<td colspan="2">&#8377;${totalPurchaseAmount}</td>
</tr>
<tr>
	<td colspan="3">Offers Applied</td>
	<td colspan="2">&#8377;${totalPurchaseAmount-totalPurchasedAmount}</td>
</tr>
<tr>
	<td colspan="3">Final Price</td>
	<td colspan="2">&#8377;${totalPurchasedAmount}</td>
</tr>

			
						
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
					
							<h5 style="color: rgb(140, 140, 140);">Thanks for shopping.!</h5>
						</div>
					</div>
					
					<div class="col-md-12 text-right">						
						<form>
					<input type="button" class="btn btn-info" value="Print this page" onClick="window.print()">
						</form>

					</div>
					
				</div>
            </div>
			
        </div>    
	</div>
	
	<%@include file="footer.jsp" %>