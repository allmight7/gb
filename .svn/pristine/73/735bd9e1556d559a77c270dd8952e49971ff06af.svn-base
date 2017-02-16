<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- Button trigger modal -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<c:forEach var="event" items="${eventList}" varStatus="status">
			  <div class="col-sm-6 col-md-3 event" id="event-${event.event_no}">
			    <div class="thumbnail">
			      <img src="images/event_images/${event.event_path}" alt="${event.event_name}">
			      <div class="caption">
			      	<br/>
		        	<h4><strong>${event.event_name}</strong></h4>
			        <p>
			        <button type="button" onclick="loadEventView(${event.event_no})" class="btnDetail btnDetail-${event.event_no} btn btn-block" >
					상세정보
					</button>
				
					</p>
			      </div>
			    </div>
			  </div>
			</c:forEach>
			
			<div id="eventModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
		</div>
	</div>
</div>
<script>
	function loadEventView(event_no){
		$.ajax({
			type:"GET",
			url:"event_view?event_no="+event_no,
			success:function(data){
				$('.modal-body').html('');
				$('.modal-body').html(data);
				$('#eventModal').modal();
			}
		});
	}

</script>	