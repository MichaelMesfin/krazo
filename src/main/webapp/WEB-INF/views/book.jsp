<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%--    <script src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.4/dist/js/bootstrap.js"></script>--%>
    <title>Book App</title>
</head>
<body>
<h1>Book List</h1>
The book that was loaded in BookController: ${bookContainer.book.title}
<br/><br/>
<c:if test="${messages.info != null}">
    <div class="alert alert-success" role="alert">
            ${messages.info}
    </div>
</c:if>
<c:if test="${not empty messages.errors}">
    <div class="alert alert-danger" role="alert">
        <ul class="list-unstyled">
            <c:forEach var="error" items="${messages.errors}">
                <li>${error}</li>
            </c:forEach>
        </ul>
    </div>
</c:if>
<br/>

<table class="table table-striped">
    <colgroup>
        <col style="width: 80%;"/>
    </colgroup>
    <thead>
    <tr>
        <th class="text-left">Book</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="book" items="${bookContainer.bookList}">
        <tr>
            <td class="text-center">
                    ${book.title}
            </td>

            <td class="text-center">
                    ${book.description}
            </td>

        </tr>
    </c:forEach>
    </tbody>
</table>

<a style="margin-left: 40px" href="/krazo/mvc/books/add">Create</a>
</body>
</html>