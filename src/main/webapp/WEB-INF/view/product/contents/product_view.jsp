<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="col-md-4">
				<img id="img1" alt="${product.p_name }" src="images/p_images/${product.p_url }">
			</div>
			<div class="col-md-8">
			<h2>${product.p_name }</h2>
				<ul>
					<li><strong>가격 : </strong>${product.p_price }</li>
					<li><strong>상품설명 : </strong>${product.p_desc}</li>
				</ul>
				<hr>
				<button type="button" onclick="loadbuyView(${product.p_no})" class="btn btn-primary btn-lg pull-right"><strong>구매하기</strong></button>
			</div>
		</div>
	</div>
	
</div>

 <div id="productViewModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

<style>
#img1{
width: 280px;
height: 180px;

}
</style>

<script>
	function loadbuyView(p_no) {
		//alert(p_no);
		$.ajax({
			type:"GET",
			url:"buy_view?p_no="+p_no,
			success:function(data){
				$('.modal-body').html('');
				$('.modal-body').html(data);
				$('#productViewModal').modal();
				
			}
		});
		
	}
</script>