<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.death1{
overflow-y: auto;
list-style: none;	    
}
.death1>li{
	//border-bottom: 1px solid;
	//border-right:  1px solid;
	    
}

.movieHeader h3 {
	height: 50px;
    margin: -10px -10px 20px -10px;
    padding: 10px;
    background-color: white;	
}

.col-md-2 {
    width: 18.666667%;
    border: 1px solid #cccccc;
    background-color: #f7f7f7;
    padding: 10px;
    margin: 0 5px;
}

.thumbnail {
    margin-bottom: -1px;
}
.death1>li {
    margin-left: -40px;
}
.death1>li {
	border-bottom: 1px solid #cccccc;
}
</style>

<script>
$(function(){
	$("#step2").hide();
	$("#step3").hide();
	$("#step1 li").click(function() {
		$("#step2").show();
	});
	$("#step2 li").click(function() {
		$("#step3").show();
	});
		
});
</script>
<div class="container">
	<div class="row">
		<div class="col-md-2" style = "float: left;">
			    <div class="thumbnail">
			      <img src="${stillcut.stillcutList[0].s_image}" alt="${stillcut}">
		        	<h4><strong>${movie.movie_name}</strong></h4>
			    </div>
			  </div>
			  
		<div id="step1" class="col-md-2" style = "float: left;">
			 <div class="movieHeader"><h3>영화관</h3>
			 	<div class="theaterList">
			 		<ul class="death1">
			 	<c:forEach var="local" items="${movie.multiplex}">
			 			<li><a href="#">${local.mp_city}</a></li>
			 			</c:forEach>
			 		</ul>
			 	</div> 
			 </div>
			 </div>
		<div id="step2" class="col-md-2" style = "float: left;">
			 <div class="movieHeader"><h3></h3>
			 	<div class="theaterList">
			 		<ul class="death1">
			 	<c:forEach var="local" items="${movie.multiplex}">
			 			<li><a href="#">${local.mp_cinema}</a></li>
			 			</c:forEach>
			 		</ul>
			 	</div> 
			 </div>
			 </div>
		<div id="step3" class="col-md-2" style = "float: left;">
			 <div class="movieHeader"><h3></h3>
			 	<div class="theaterList">
			 		<ul class="death1">
			 	<c:forEach var="ms" items="${movie.movie_schedule}">
			 			<li><a href="#">${ms.ms_time}</a></li>
			 			</c:forEach>
			 		</ul>
			 	</div> 
			 </div>
			 </div>
	   
	 </div>
	 </div>



	 
	 