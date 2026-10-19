<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><c:if test="${product != null}">Cập Nhật Sản Phẩm</c:if><c:if test="${product == null}">Thêm Sản Phẩm Mới</c:if></title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8f9fa; }
        .form-container { max-width: 500px; margin: auto; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="number"] { width: 100%; padding: 8px; box-sizing: border-box; border: 1px solid #ced4da; border-radius: 4px; }
        .btn { padding: 10px 16px; text-decoration: none; border-radius: 4px; border: none; cursor: pointer; color: white; }
        .btn-primary { background-color: #007bff; }
        .btn-secondary { background-color: #6c757d; display: inline-block; }
    </style>
</head>
<body>
<div class="form-container">
    <h2>
        <c:if test="${product != null}">Cập Nhật Sản Phẩm</c:if>
        <c:if test="${product == null}">Thêm Sản Phẩm Mới</c:if>
    </h2>
    <form action="products" method="post">
        <c:if test="${product != null}">
            <input type="hidden" name="action" value="update" />
            <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
        </c:if>
        <c:if test="${product == null}">
            <input type="hidden" name="action" value="insert" />
        </c:if>

        <div class="form-group">
            <label>Tên sản phẩm:</label>
            <input type="text" name="name" value="<c:out value='${product.name}' />" required />
        </div>
        <div class="form-group">
            <label>Giá (VNĐ):</label>
            <input type="number" step="0.01" name="price" value="<c:out value='${product.price}' />" required />
        </div>
        <div class="form-group">
            <label>Số lượng:</label>
            <input type="number" name="quantity" value="<c:out value='${product.quantity}' />" required />
        </div>
        <button type="submit" class="btn btn-primary">Lưu thông tin</button>
        <a href="products" class="btn btn-secondary">Hủy bỏ</a>
    </form>
</div>
</body>
</html>
