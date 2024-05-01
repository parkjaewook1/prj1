<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>게시물 목록</h3>

<table>
    <thead>
    <tr>
        <th>#</th>
        <th>제목</th>
        <th>작성자</th>
    </tr>
    <tbody>
    <c:forEach items="${boardList}" var="board">
        <tr>
            <td>$board.id</td>
            <td>$board.title</td>
            <td>$board.writer</td>
        </tr>
    </c:forEach>
    </tbody>
    </thead>
</table>

</body>
</html>
