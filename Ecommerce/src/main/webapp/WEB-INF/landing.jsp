<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file = "header.jsp"  %>

<!DOCTYPE html>
<html>
<body>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
    
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2" ></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      

      </div>

      <div class="item active">
        <img src="images\products\3.jpg" alt="books2" width="460" height="345" style="margin: 0 auto">
      </div>
    
      <div class="item">
        <img src="images\products\1.jpg" alt="Flower" width="460" height="345" style="margin: 0 auto">
      </div>

      <div class="item">
        <img src="images\products\8.jpg" alt="Flower" width="460" height="345" style="margin: 0 auto">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<!--  Start of the container which holds all the values -->
<div class="container">


<!--  Start of the row -->
<div class="row">

    


<!--  This div will store the carousel for the home needs category -->
<div class="col-sm-6">
<h3>Deals of the Day</h3>
<p>Todays deals that are the best offer you can get.</p>

<!-- Start of the carousel -->
<div id="DealsPdtCarousel" class="carousel slide" data-ride="carousel">


<!-- The list of carousel indicators. This stores the number of slides and how the slides are arranged. -->
<ol class="carousel-indicators">
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">
<c:if test = "${ i.index == '0' }">
  <li  data-target="#DealsPdtCarousel" data-slide-to="${i.index}" class = "active" ></li>
</c:if>


<c:if test = "${ i.index != '0' }">
  <li data-target="#DealsPdtCarousel" data-slide-to="${i.index}" ></li>
</c:if>


  </c:forEach>
</c:if>
</ol>

<!-- This div stores the details of the inner carousel -->
<div class="carousel-inner" role="listbox">

<!-- 
Details of the item. 
 The details are, 
 1. Item, the details that are stored in the item. 
 2. The caption for the carousel.
-->
<c:if test="${!empty productsDealsList}">
<c:forEach items="${productsDealsList}" var="productDeal" varStatus="i">

<c:if test="${i.index == '0'}">
<div class="item active">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>
</c:if>
<c:if test="${i.index != '0'}">
<div class="item">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>

</c:if>


</c:forEach>
</c:if>
</div>
<!-- The details of the buttons for left and right. 
1. The type of button that is used. 
2. How the data moves when the button is pressed. 
-->
<a class="left carousel-control" href="#DealsPdtCarousel" role="button" data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  <span class="sr-only">Previous</span>
</a>

<a class="right carousel-control" href="#DealsPdtCarousel" role="button" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  <span class="sr-only">Next</span>
</a>
</div>
<!--  Above div -- End of the carousel -->
</div>
<!--  Above div -- End of the column in bootstrap home needs category -->
     
     
     
<!--  This div will store the carousel for the Electronics category --> 
<div class="col-sm-6">
<h3>Featured Deals</h3> 
<p>Featured deals that have been used by customers.</p>

<!-- Start of the carousel -->
<div id="FeaturePdtCarousel" class="carousel slide" data-ride="carousel">


<!-- The list of carousel indicators. This stores the number of slides and how the slides are arranged. -->
<ol class="carousel-indicators">
<c:if test="${!empty productsFeatureList}">
<c:forEach items="${productsFeatureList}" var="productDeal" varStatus="i">
<c:if test = "${ i.index == '0' }">
  <li  data-target="#FeaturePdtCarousel" data-slide-to="${i.index}" class = "active" ></li>
</c:if>


<c:if test = "${ i.index != '0' }">
  <li data-target="#FeaturePdtCarousel" data-slide-to="${i.index}" ></li>
</c:if>


  </c:forEach>
</c:if>
</ol>

<!-- This div stores the details of the inner carousel -->
<div class="carousel-inner" role="listbox">

<!-- 
Details of the item. 
 The details are, 
 1. Item, the details that are stored in the item. 
 2. The caption for the carousel.
-->
<c:if test="${!empty productsFeatureList}">
<c:forEach items="${productsFeatureList}" var="productDeal" varStatus="i">

<c:if test="${i.index == '0'}">
<div class="item active">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><strike>&#8377;<c:out value="${productDeal.mrp}" /></strike><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>
</c:if>
<c:if test="${i.index != '0'}">
<div class="item">
<a href = "/Ecommerce/all_show_product?id=${productDeal.id}"><img class = img-responsive src="images\products\<c:out value="${productDeal.id}" />.jpg" alt="${productDeal.name}"> </a>
<div class="carousel-caption">
<h3><c:out value="${productDeal.name}" /></h3>
<p><c:out value="${productDeal.description}" /> <br /><del>&#8377;<c:out value="${productDeal.mrp}" /></del><br />&#8377;<c:out value="${productDeal.offerprice}" /></p>
</div>
<div >
</div>
</div>

</c:if>


</c:forEach>
</c:if>
</div>
<!-- The details of the buttons for left and right. 
1. The type of button that is used. 
2. How the data moves when the button is pressed. 
-->
<a class="left carousel-control" href="#FeaturePdtCarousel" role="button" data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  <span class="sr-only">Previous</span>
</a>

<a class="right carousel-control" href="#FeaturePdtCarousel" role="button" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  <span class="sr-only">Next</span>
</a>
</div>
<!--  Above div -- End of the carousel -->
</div>
<!--  Above div -- End of the column in bootstrap electronics category -->
</div>
<!-- End of the row -->
 </div>
<!--  End of the container -->
      
</body>
</html>
<%@include file = "footer.jsp"  %>