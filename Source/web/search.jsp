<%-- 
    Document   : search
    Created on : May 4, 2019, 5:52:02 PM
    Author     : tranq
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SanPham"%>
<%@page import="DAO.SanPhamDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>1621018 Shop</title>
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
        <%
            String getSearchName = request.getParameter("name");              
        %>
        <%SanPhamDAOImpl SanPhamDAO = new SanPhamDAOImpl();%>
        <%ArrayList<SanPham> searchList = SanPhamDAO.getSearchList(getSearchName);%>
        
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
        
        <!-- Product filter section -->
	<section class="product-filter-section" style="margin-top:30px">
		<div class="container">
                    <div class="section-title">
                    	<h2>SEARCH RESULT</h2>
                    </div>
			<div class="row"> 
                            <%for(SanPham e : searchList){%>
                                <div class="col-lg-3 col-sm-6">
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
