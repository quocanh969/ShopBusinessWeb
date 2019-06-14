<%-- 
    Document   : index
    Created on : May 3, 2019, 7:01:43 PM
    Author     : tranq
--%>

<%@page import="model.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.SanPhamDAOImpl"%>
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
        <jsp:include page="menu.jsp"></jsp:include>
        
        <%SanPhamDAOImpl SanPhamDAO = new SanPhamDAOImpl();%>
        <%ArrayList<SanPham> lastedList = SanPhamDAO.getLastedList();%>
        <%ArrayList<SanPham> fullList = SanPhamDAO.getFullList();%>
        <%int index = 0;
            if(request.getParameter("index")!=null)
            {
                index = Integer.parseInt(request.getParameter("index"));
            }        
        %>
        <%ArrayList<SanPham> pageList = SanPhamDAO.getListByPage(fullList, index);%>
        
        
        <!-- lastest product section -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2>LATEST PRODUCTS</h2>
			</div>
			<div class="product-slider owl-carousel">
                            <%for(SanPham e : lastedList){%>
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
                            %>
                        </div>
                </div>
	</section>
        
        <!-- Product filter section -->
	<section class="product-filter-section">
		<div class="container">
                    <div class="section-title">
                    	<h2>ALL PRODUCTS</h2>
                    </div>
			<div class="row"> 
                            <%for(SanPham e : pageList){%>
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
                         
                            <%if(index > fullList.size() / 8)
                            {
                            }
                            else
                            {
                                %>
			<div class="text-center pt-5">
                            <%if(index != 0){%>                            
                            <a href="index.jsp?index=<%=index-1%>" class="site-btn sb-line sb-dark"><i class="fa fa-arrow-left"></i> PREV</a>
                            <%
                                }
                            if(index != fullList.size()/8){
                            %>
                            <a href="index.jsp?index=<%=index+1%>" class="site-btn sb-line sb-dark">NEXT <i class="fa fa-arrow-right"></i></a>
                            <%
                                }
                            %>
			</div>
                        <%
                            }
                        %>
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
