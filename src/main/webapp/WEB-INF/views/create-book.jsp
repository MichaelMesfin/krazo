<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <%--    <script src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.4/dist/js/bootstrap.js"></script>--%>
    <title>Book App</title>
</head>
<body>
<h1>Book create page</h1>

<div style="margin-top: 120px">
    <form action="${pageContext.request.contextPath}/mvc/books/create"
          method="POST" class="form-inline">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Book Information</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="subject">Title</label>
                    <input type="text" class="form-control"
                           id="title" name="title" placeholder="Title"
                           value="${book.title}" autofocus>
                </div>
            </div>
        </div>
        <br/><br/>
        <div class="form-group">
            <label for="description">Description:</label>
            <br/>
            <textarea cols="100" rows="4" class="form-control"
                      id="description" name="description"
                      placeholder="Description">
                ${book.description}
            </textarea>
        </div>
        <br/><br/>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>


</body>
</html>