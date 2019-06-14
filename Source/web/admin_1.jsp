<%-- 
    Document   : admin_2
    Created on : May 4, 2019, 8:42:35 PM
    Author     : tranq
--%>

<%@page import="model.Loai"%>
<%@page import="DAO.LoaiDAOImpl"%>
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
        <% LoaiDAOImpl listLoaiDAO = new LoaiDAOImpl(); %>
        
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
				<th class="data" width="100px">Số thứ tự</th>
				<th class="data">Tên loại sản phẩm</th>				
				<th class="data" width="150px">Chức năng</th>
			</tr>
                        <%for(Loai e : listLoaiDAO.getListLoai()){%>
                            <tr class="data">                            
				<td class="data" width="100px"><%=e.getMaLoai()%></td>
				<td class="data"><%=e.getTenLoai()%></td>				
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
