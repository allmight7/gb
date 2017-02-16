<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="myModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
	    <div class="modal-content">
	
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                <span aria-hidden="true">꺼</span>
	            </button>
	            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
	        </div>
	        <div class="modal-body">
	            <div class="container">
		            <div class="row">   
		                <div class="col-md-9 margin30">
		                    <div class="row">                       
		                        <div class="col-md-12">                       
		                            <div class="blog-wrap">
		                                <div class="blog-desc">
		                                    <h4><a href="#">We make it you live it, go for simple </a></h4>
		                                    <ul class="list-inline post-deatil">
		                                        <li><a href="#">John Example</a></li>
		                                        <li>Posted on 2 august 2014</li>
		                                        <li>Posted in <a href="#">Sports</a></li>
		                                    </ul>
		                                    <p>
		                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
		                                    </p> 
		                                    <p class="lead">
		                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
		                                    </p>  
		                                    <p>
		                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
		                                    </p>  
		                                </div>
		                            </div><!--blog wrap-->
		                            <h3>Comments</h3>
		                            <ul class="list-unstyled comments-list">
		                                <li>
		                                    <img class="avtar" src="img/team-2.jpg" alt="">
		                                    <div class="meta">
		                                        <span>Rocky Example</span>, 
		                                        <span class="time">2 August 014, 1:01</span>
		                                    </div>
		                                    <p>
		                                        Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		                                    </p>
		                                </li>
		                                <li>
		                                    <img class="avtar" src="img/team-3.jpg" alt="">
		                                    <div class="meta">
		                                        <span>Rocky Example</span>, 
		                                        <span class="time">2 August 014, 1:01</span>
		                                    </div>
		                                    <p>
		                                        Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		                                    </p>
		                                </li>
		                                <li>
		                                    <img class="avtar" src="img/team-4.jpg" alt="">
		                                    <div class="meta">
		                                        <span>Rocky Example</span>, 
		                                        <span class="time">2 August 014, 1:01</span>
		                                    </div>
		                                    <p>
		                                        Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		                                    </p>
		                                </li>
		                            </ul><!--comments list-->
		                            <h3>Leave a Comment</h3>
		                            <div class="contact-form">
		                                <form role="form">
		                                    <div class="form-group">
		                                        <label for="name">Name</label>
		                                        <input type="text" class="form-control" id="name">
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="mail">Email</label>
		                                        <input type="email" class="form-control" id="mail" required="">
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="comment">Comment</label>
		                                        <textarea class="form-control" rows="6" id="comment" required=""></textarea>
		                                    </div>
		
		                                    <button type="submit" class="btn btn-theme-bg">Send Comment</button>
		                                </form><!--form-->
		                            </div>
		                        </div>
		                    </div><!--row-->
		                </div>
		                <div class="col-md-3">
		                    <div class="sidebar-box margin40">
		                        <h4>Search</h4>
		                        <form role="form" class="search-widget">
		                            <input type="text" class="form-control">
		                            <i class="fa fa-search"></i>
		                        </form>
		                    </div><!--sidebar-box-->
		                    <div class="sidebar-box margin40">
		                        <h4>Text widget</h4>
		                        <p>
		                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie.
		                        </p>
		                    </div><!--sidebar-box-->
		                    <div class="sidebar-box margin40">
		                        <h4>Categories</h4>
		                        <ul class="list-unstyled cat-list">
		                            <li> <a href="#">Marketing</a> <i class="fa fa-angle-right"></i></li>
		                            <li> <a href="#">Videos</a> <i class="fa fa-angle-right"></i></li>
		                            <li> <a href="#">Sports</a> <i class="fa fa-angle-right"></i></li>
		                            <li> <a href="#">Fashion</a> <i class="fa fa-angle-right"></i></li>
		                            <li> <a href="#">Media</a> <i class="fa fa-angle-right"></i></li>
		                            <li> <a href="#">Seo</a> <i class="fa fa-angle-right"></i></li>
		                            <li> <a href="#">Marketing</a> <i class="fa fa-angle-right"></i></li>
		                        </ul>
		                    </div><!--sidebar-box-->                
		                </div>
		            </div>
		        </div>
	        </div>
	        <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">
	                Close
	            </button>
	            <button type="button" class="btn btn-primary" id="jscloseBtn">
	                Save changes
	            </button>
	        </div>
	
	    </div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->