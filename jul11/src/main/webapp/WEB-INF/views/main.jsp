<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main</h1>
	${mame }
	<br> JSTL / EL
	<br>
	<c:forEach begin="1" end="10" var="i"> <!-- for 문하고 똑같음 step 쓰면 건너뛰는거-->
		
		<!-- <c:if test="${i ne 3 }"> if문임 ${i }로 불러서 lt는 i가 3보다 작은거 찍어줘(i < 3), le는 작거나 같은, 
								 gt는 3보다 크다면 불러, ge는 크거나 같다면, eq는 3과 같은, ne는 3과 다른
			
			${i }<br>
		<</c:if>   -->

		<c:choose>
			<!--if else 같은 녀석 -->
			<c:when test="${i eq 3 }">
				<!--i가 3이면 when을 실행 -->
				삼입니다.<br>
			</c:when>
			<c:otherwise>
				<!--i가 3이 아니면 otherwise 실행 -->
				${i }<br>
			</c:otherwise>
		</c:choose>
	</c:forEach>


	set			k = 케이<br>
	<c:set var="k" value="케이"></c:set>
	<c:set var="k"> 새로운 값 </c:set>	
	${k }
	
	<br>
	out = 변수라고 생각
	<c:out value="k"></c:out> <!--글자 k가 나오는거 -->
	<c:out value="${k }"></c:out> <!--k에 들어있는 값이 나오는거 -->
	
	
	M = Model = data
	V = View = jsp
	C = Controller = 흐름제어
	
	<c:remove var="k"/> <!--변수 삭제 하는거 -->
	${k }
	<hr>
	<c:forEach items="${list }" var = "i"> <!-- 컨트롤러에서 list를 가져올건데 변수를 i로 -->
		${i }<br>
	</c:forEach>




</body>
</html>