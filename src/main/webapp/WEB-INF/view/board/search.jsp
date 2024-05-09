<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    작성자 글 조회
</h3>
<form>
    닉네임
    <input type="text" name="nick_name">
    <button>검색</button>
</form>
<hr>
<c:if test="${empty member}">
    조회된 결과가 없습니다.
</c:if>
<c:if test="${not empty member}">
    <h3>${member.nick_name}의 게시물</h3>
    <form action="/member/list" method="post">
        <div>
            작성자 닉네임
            <input type="text" value="${member.nick_name}" name="nick_name">
        </div>
        <div>
            제목
            <input type="text" value="${board.title}" name="title">
        </div>
        <div>
            ID
            <input type="number" value="${member.member_id}" name="member_id">
        </div>
        <div>
            내용
            <input type="text" value="${board.content}" name="content">
        </div>
        <div style="display: none">
            <input type="text" name="id" value="${member.member_id}">
        </div>
    </form>
</c:if>
</body>
</html>
