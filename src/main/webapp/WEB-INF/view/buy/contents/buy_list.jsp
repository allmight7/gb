<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<table>
					<tr>
						<td><h4><strong>${m_id } 님 구매목록 입니다.</strong></h4></td>
					</tr>
				</table>
				<c:forEach var="buy" items="${buyList}" varStatus="status">
				<div class="col-sm-6 col-md-3 product" id="buy-${buy.buy_no}">
			    <div class="thumbnail">
			      <img src="images/p_images/${product.p_url }" alt="${product.p_name }">
			      <div class="caption">
			      	<div class="row">
			      		
			      	</div>
			      	<br/>
			       
			      </div>
			    </div>
			  </div>
					
				</c:forEach>
			</div>
		</div>
	</div>
</div>


