<%-- 
    Document   : product
    Created on : May 4, 2019, 9:55:06 AM
    Author     : tranq
--%>

<%@page import="model.Loai"%>
<%@page import="DAO.LoaiDAOImpl"%>
<%@page import="model.SanPham"%>
<%@page import="DAO.SanPhamDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <jsp:include page="menu.jsp"></jsp:include>
        <%SanPhamDAOImpl SanPhamDAO = new SanPhamDAOImpl();%>
        <%LoaiDAOImpl LoaiDAO = new LoaiDAOImpl();%>
        <%SanPham currentSanPham = SanPhamDAO.getSanPham(Integer.parseInt(request.getParameter("maSP")));%>
        <%Loai currentLoai = LoaiDAO.getLoai(currentSanPham.getLoaiSP().getMaLoai());%>
        
        <!-- Page info -->
	<div class="page-top-info" style="background-color:pink">
		<div class="container">
			<h4>CAtegory PAge</h4>
			<div class="site-pagination">
                            <a href="index.jsp">Home</a> /
                            <a href="category.jsp?maLoai=<%=currentLoai.getMaLoai()%>&tangDan=true"><%=currentLoai.getTenLoai()%></a>/
                            <%=currentSanPham.getTenSP()%>
			</div>
		</div>
	</div>      
        
        
        
        <section class="product-section">
		<div class="container">			
			<div class="row">
				<div class="col-lg-6">
                                    <img class="product-big-img" src="<%=currentSanPham.getImgURL()%>" alt="">				
				</div>
				<div class="col-lg-6 product-details">
                                    <h2 class="p-title"><%=currentSanPham.getTenSP()%></h2>
                                    <h3 class="p-title">Brand: <span style="color:#f51167"><%=currentSanPham.getNsx()%></span></h2>
					<h3 class="p-price">$<%=currentSanPham.getGiaBan()%></h3>
					<h4 class="p-stock">Available: <span><%=currentSanPham.getSoLuong()%></span></h4>			
					<h4 class="p-stock">Origin: <span><%=currentSanPham.getXuatSu()%></span></h4>		
					
					<a href="#" class="site-btn">SHOP NOW</a>
					<div id="accordion" class="accordion-area">
						<div class="panel">
							<div class="panel-header" id="headingOne">
								<button class="panel-link active" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">information</button>
							</div>
							<div id="collapse1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
								<div class="panel-body">
									<%=currentSanPham.getMoTa()%>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-header" id="headingTwo">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">care details </button>
							</div>
							<div id="collapse2" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="panel-body">
									<img src="./img/cards.png" alt="">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so dales. Phasellus sagittis auctor gravida. Integer bibendum sodales arcu id te mpus. Ut consectetur lacus leo, non scelerisque nulla euismod nec.</p>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-header" id="headingThree">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">shipping & Returns</button>
							</div>
							<div id="collapse3" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
								<div class="panel-body">
									<h4>7 Days Returns</h4>
									<p>Cash on Delivery Available<br>Home Delivery <span>3 - 4 days</span></p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so dales. Phasellus sagittis auctor gravida. Integer bibendum sodales arcu id te mpus. Ut consectetur lacus leo, non scelerisque nulla euismod nec.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="social-sharing">
						<a href=""><i class="fa fa-google-plus"></i></a>
						<a href=""><i class="fa fa-pinterest"></i></a>
						<a href=""><i class="fa fa-facebook"></i></a>
						<a href=""><i class="fa fa-twitter"></i></a>
						<a href=""><i class="fa fa-youtube"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
        
        <!-- RELATED PRODUCTS section -->                    
        <section class="related-product-section">
            <div class="container">
                <div class="section-title">
                    <h2>RELATED PRODUCTS</h2>
                </div>
                <div class="product-slider owl-carousel">
                <%for(SanPham e : SanPhamDAO.getListByLoai(currentSanPham.getLoaiSP().getMaLoai(),"true"))
                    {
                        if(e.getMaSP() != currentSanPham.getMaSP())
                        {
                %>
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
                <%  
                        }
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
