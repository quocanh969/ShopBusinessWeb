<%-- 
    Document   : category
    Created on : May 3, 2019, 10:09:14 PM
    Author     : tranq
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.SanPham"%>
<%@page import="DAO.SanPhamDAOImpl"%>
<%@page import="model.Loai"%>
<%@page import="DAO.LoaiDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>1612018 Shop</title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <% LoaiDAOImpl listLoaiDAO = new LoaiDAOImpl(); %>
        <% Loai currentLoai = listLoaiDAO.getLoai(Integer.parseInt(request.getParameter("maLoai")));%>
        
        
        <% SanPhamDAOImpl listSanPham = new SanPhamDAOImpl();%>
        
        <!-- Page info -->
        <div class="page-top-info" style="background-color:pink">
		<div class="container">
			<h4>CAtegory PAge</h4>
			<div class="site-pagination">
				<a href="index.jsp">Home</a> /
				Shop /
                                <a href="category.jsp?maLoai=<%=currentLoai.getMaLoai()%>&tangDan=true"><%=currentLoai.getTenLoai()%></a>
			</div>
		</div>
	</div>
	<!-- Page info end -->
        
        <section class="category-section spad">
		<div class="container">                    
                    <div class="row">
                            
				<div class="col-lg-3 order-2 order-lg-1">                                    
                                    <a href="category.jsp?maLoai=<%=currentLoai.getMaLoai()%>&tangDan=true" class="wishlist-btn sort-btn"><i class="fa fa-arrow-up"></i> UP </a>                                   
                                    <a href="category.jsp?maLoai=<%=currentLoai.getMaLoai()%>&tangDan=false" style="margin-bottom:50px" class="wishlist-btn sort-btn"><i class="fa fa-arrow-down"></i> DOWN</a>                             		
                                                                            
                                        					
                                    
                                    <div class="filter-widget">
						<h2 class="fw-title">Categories</h2>                                                
                                                <ul class="category-menu">              
                                                <%for(Loai e : listLoaiDAO.getListLoai()){%>
                                                <li><a href="category.jsp?maLoai=<%=e.getMaLoai()%>&tangDan=true"><%=e.getTenLoai()%></a></li>							
                                                 <%
                                                    }
                                                %>
						</ul>
                                                
					</div>				
					
					
					<div class="filter-widget">
						<h2 class="fw-title">Brand</h2>
						<ul class="category-menu">
                                                    <%for(String e : listSanPham.getListNSX()){%>
							<li><%=e%></li>
                                                        <%
                                                            }
                                                        %>
						</ul>
					</div>
				</div>
                                <div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0">
                            <div class="row">
                                <%for(SanPham e : listSanPham.getListByLoai(Integer.parseInt(request.getParameter("maLoai")),request.getParameter("tangDan"))){%>
                                <div class="col-lg-4 col-sm-6">
                                    <div class="product-item">
					<div class="pi-pic">                                            
                                            <img src="<%=e.getImgURL()%>" alt="">
                                            <div class="pi-links">
                                                <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                                <a href="product.jsp?maSP=<%=e.getMaSP()%>" class="wishlist-btn" style="width:75px">Detail</a>
                                            </div>
                                        </div>
                                        <div class="pi-text">
                                            <h6>$<%=e.getGiaBan()%></h6>
                                            <p><%=e.getTenSP()%></p>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>                
                    </div>                        
		</div>
	</section>
        
        
                    
        <jsp:include page="footer.jsp"></jsp:include>                                        
                                                
        <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/main.js"></script>       
        
    </body>
</html>
