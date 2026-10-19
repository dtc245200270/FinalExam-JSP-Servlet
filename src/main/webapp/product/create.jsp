<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thêm sản phẩm mới</title>
</head>
<body>
    <h2>Thêm Sản Phẩm Mới</h2>
    <c:if test="${not empty requestScope.message}">
        <p style="color: green;">${requestScope.message}</p>
    </c:if>
    <form action="${pageContext.request.contextPath}/products?action=create" method="POST">
        <p>Tên: <input type="text" name="name" required /></p>
        <p>Giá: <input type="number" step="0.1" name="price" required /></p>
        <p>Mô tả: <input type="text" name="description" required /></p>
        <p>Nhà sản xuất: <input type="text" name="manufacturer" required /></p>
        <button type="submit">Lưu sản phẩm</button>
    </form>
    <p><a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a></p>
</body>
</html>
