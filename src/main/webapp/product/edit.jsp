<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cập nhật sản phẩm</title>
</head>
<body>
    <h2>Cập Nhật Sản Phẩm</h2>
    <c:if test="${not empty requestScope.message}">
        <p style="color: green;">${requestScope.message}</p>
    </c:if>
    <form action="${pageContext.request.contextPath}/products?action=edit" method="POST">
        <input type="hidden" name="id" value="${requestScope.product.id}" />
        <p>Tên: <input type="text" name="name" value="${requestScope.product.name}" required /></p>
        <p>Giá: <input type="number" step="0.1" name="price" value="${requestScope.product.price}" required /></p>
        <p>Mô tả: <input type="text" name="description" value="${requestScope.product.description}" required /></p>
        <p>Nhà sản xuất: <input type="text" name="manufacturer" value="${requestScope.product.manufacturer}" required /></p>
        <button type="submit">Cập nhật</button>
    </form>
    <p><a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a></p>
</body>
</html>
