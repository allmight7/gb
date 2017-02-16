<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#item-img-overlay span {
	width:280px;
	height:180px;
}
#img-responsive {
	width:280px !important;
	heihgt:180px !important;
}
#item-img-wrap {
	width:280px !important;
	height:180px !important;
}
</style>
<script type="text/javascript">
$(function() {
	var address = location.href.split("p_type=")[1];
	$("#active"+address).addClass("active");
});

function imgFind(p_type) {
	location.href='product_list?p_type='+p_type;
	
}

</script>
<div class="container">
	<div class="row">
		 <div class="col-md-12 ">
		 	 <div class="row"> 
                    <ul class="portfolio-filters list-inline ">
                        <li id="active1" class="filter" data-filter="popcorn"><a href="javascript:imgFind(1)" id="popcorn">팝콘</a></li>
                        <li id="active2" class="filter" data-filter="beverage"><a href="javascript:imgFind(2)" id="berverage">음료</a></li>
                        <li id="active3" class="filter" data-filter="combo"><a href="javascript:imgFind(3)">콤보</a></li>
                        <li id="active4" class="filter" data-filter="movieTicket"><a href="javascript:imgFind(4)">영화관람권</a></li>
                    </ul><!--.portfolio-filter nav-->
                    
        <div id="popcorn" class="row">    
		<div class="col-md-12">
			<c:forEach var="product" items="${proList}" varStatus="status">
			  <div class="col-sm-6 col-md-3 product" id="product-${product.p_no}">
			    <div class="thumbnail">
			      <img src="images/p_images/${product.p_url }" alt="${product.p_name}">
			      <div class="caption">
			      	<div class="row">
			      		<div class="col-md-12">
					      	
						</div>
			      	</div>
			      	<br/>
		        	<h4><strong>${product.p_name}</strong></h4>
			        <p>
			        <button type="button" onclick="loadProductView(${product.p_no})" 
			        		class="btnDetail btnDetail-${product.p_no} btn btn-block" >상세정보</button>
					</p>
			      </div>
			    </div>
			  </div>
                          </c:forEach>
                        </div><!--work col-->
                        </div>
                         <!-- foreach end -->
  		 	</div>
  		 </div>
	 </div>
</div>
                                     
                                 <div id="productModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						            <div class="modal-dialog modal-lg">
						                <div class="modal-content">
						
						                    <div class="modal-header">
						                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						                            <span aria-hidden="true">&times;</span>
						                        </button>
						                        <h4 class="modal-title" id="myModalLabel"></h4>
						                    </div>
						                    <div class="modal-body">
											
						                   </div>
						                </div><!-- /.modal-content -->
						            </div><!-- /.modal-dialog -->
						        </div><!-- /.modal -->    
                    
                       
<script>
	function loadProductView(p_no){
		//alert('p_no'+p_no);
		$.ajax({
			type:"GET",
			url:"product_view?p_no="+p_no,
			success:function(data){
				$(".modal-body").html('');
				$(".modal-body").html(data);
				$("#productModal").modal();
			}
				
		});
	}

</script>                