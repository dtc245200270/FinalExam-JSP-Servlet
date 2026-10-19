<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quản lý sản phẩm</title>
</head>
<body>
    <h1>Danh Sách Sản Phẩm</h1>
    <form action="${pageContext.request.contextPath}/products?action=search" method="POST">
        <input type="text" name="keyword" placeholder="Nhập tên sản phẩm..." required />
        <button type="submit">Tìm kiếm</button>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/products?action=create">Thêm sản phẩm mới</a>
    <table border="1" cellpadding="5">
        <thead>
            <tr>
                <th>Tên sản phẩm</th>
                <th>Giá ($)</th>
                <th>Mô tả</th>
                <th>Nhà sản xuất</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.products}" var="p">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/products?action=view&id=${p.id}">${p.name}</a></td>
                    <td>${p.price}</td>
                    <td>${p.description}</td>
                    <td>${p.manufacturer}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/products?action=edit&id=${p.id}">Sửa</a> |
                        <a href="${pageContext.request.contextPath}/products?action=delete&id=${p.id}">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
