<%-- 
    Document   : admin_1
    Created on : May 4, 2019, 8:42:27 PM
    Author     : tranq
--%>

<%@page import="DAO.SanPhamDAOImpl"%>
<%@page import="model.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>1612018 Shop Admin</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <link rel="stylesheet" type="text/css" href="mos-css/mos-style.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <%SanPhamDAOImpl SanPhamDAO = new SanPhamDAOImpl();%>
        
        <div id="header">
	<div class="inHeader">
                    <div1 class="mosAdmin">
                        Hello, Administrator<br>		
                    </div>
                <div class="clear"></div>
            </div>
        </div>

<div id="wrapper">
	<div id="leftBar">
		<ul>		
                    <li><a href="admin_1.jsp">QL loại</a></li>
                    <li><a href="admin_2.jsp">QL hàng hóa</a></li>
		</ul>
	</div>
	<div id="rightContent">
	<h3>Quản lý loại sản phẩm</h3>
            <a href="#" style="height: 200px;margin-left: 5px"><i class="fa fa-plus"></i></a>
		<table class="data">
			<tr class="data">
				<th class="data" width="20px">STT</th>
				<th class="data">Sản phẩm</th>				
                                <th class="data">Giá</th>
                                <th class="data">Số lương</th>
                                <th class="data">Xuất sứ</th>
                                <th class="data">NSX</th>                                
				<th class="data" width="150px">Chức năng</th>
			</tr>
                    <%for(SanPham e : SanPhamDAO.getFullList()){%>    
			<tr class="data">
				<td class="data" width="20px"><%=e.getMaSP()%></td>
				<td class="data"><%=e.getTenSP()%></td>				
                                <td class="data"><%=e.getGiaBan()%></td>				
                                <td class="data"><%=e.getSoLuong()%></td>				
                                <td class="data"><%=e.getXuatSu()%></td>				
                                <td class="data"><%=e.getNsx()%></td>				                                
				<td class="data" width="15px">
					<center>						
						<a href="#"style="margin: 0 15px"><i class="fa fa-wrench"></i></a>
						<a href="#"style="margin-left:15px"><i class="fa fa-trash"></i></a>
					</center>
				</td>
			</tr>	
                    <%
                        }
                    %>
		</table>
            </div>
        <div class="clear"></div>
            <div id="footer">
                2019 &copy; Coppyright
            </div>
        </div>
    </body>
</html>
