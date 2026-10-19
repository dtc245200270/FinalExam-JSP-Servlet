<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chi tiết sản phẩm</title>
</head>
<body>
    <h2>Chi Tiết Sản Phẩm</h2>
    <p>Mã: ${requestScope.product.id}</p>
    <p>Tên: ${requestScope.product.name}</p>
    <p>Giá: ${requestScope.product.price}</p>
    <p>Mô tả: ${requestScope.product.description}</p>
    <p>Nhà sản xuất: ${requestScope.product.manufacturer}</p>
    <p><a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a></p>
</body>
</html>
