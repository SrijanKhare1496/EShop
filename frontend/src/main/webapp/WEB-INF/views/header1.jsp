<%@ page language="java" contentType="text/html"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="resources/css/header.css" rel="stylesheet" >

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  

  
   </head>
<body>
<nav class="navbar navbar-dark navbar-static-top custom-bg">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/home'/>">
				<!-- <img src="resources/images/logo.png"> --><font face="Papyrus" size=5><b><span class="glyphicon glyphicon-shopping-cart"></span>E-shop</b></font>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			
			
			<ul class="nav navbar-nav navbar-left ">
			<%-- <c:if test="${!sessionScope.loggedIn}"> --%>
				<li><a href="<c:url value='/home'/>"> Home</a></li>
				<li><a href="<c:url value='/aboutus'/>">AboutUs</a></li>	
            	
			</ul>	
			
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${pageContext.request.userPrincipal.name==null }">
            <li><a href="<c:url value='/register'/>">Register</a></li>
            <li><a href="<c:url value='/login1'/>">Login</a></li>
            </c:if>
            
            <li><a href="<c:url value='/contactus'/>">ContactUs</a></li>
               
        
				<li class="dropdown">
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
		  			<a class="dropdown-toggle" data-toggle="dropdown">WELCOME:${pageContext.request.userPrincipal.name}<strong class="caret"></strong></a>
		  			</c:if>
		  				<ul class="dropdown-menu">
		  					<li>
		  					<c:if test="${pageContext.request.userPrincipal.name!= null}">
							<a href="/frontend/logout"><span class="glyphicon">&#xe163;&nbsp;</span>LogOut</a>
							
								</c:if>
		  					</li>
		  					 <li class="divider"> </li> 
		  				
		  				</ul>
		  			</li>
		  			
</ul>

	
	
				
			</div>
		</div>
	</nav>

<script>$('ul.nav li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
});</script>


<a id="back2Top" title="Back to top" href="#"><center>&#10148;</center></a>

<script>
  /*Scroll to top when arrow up clicked BEGIN*/
$(window).scroll(function() {
    var height = $(window).scrollTop();
    if (height > 100) {
        $('#back2Top').fadeIn();
    } else {
        $('#back2Top').fadeOut();
    }
});
$(document).ready(function() {
    $("#back2Top").click(function(event) {
        event.preventDefault();
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });

});
 /*Scroll to top when arrow up clicked END*/

</script>




