<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Xác nhận xóa sản phẩm</title>
</head>
<body>
    <h2>Xóa Sản Phẩm</h2>
    <p>Bạn có chắc chắn muốn xóa: <strong>${requestScope.product.name}</strong>?</p>
    <form action="${pageContext.request.contextPath}/products?action=delete" method="POST">
        <input type="hidden" name="id" value="${requestScope.product.id}" />
        <button type="submit">Xác nhận xóa</button>
        <a href="${pageContext.request.contextPath}/products">Hủy bỏ</a>
    </form>
</body>
</html>
