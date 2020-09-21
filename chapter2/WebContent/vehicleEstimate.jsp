<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="vehicleResult.jsp" method="post">
<table>
	<tr>
		<td>차종</td>
		<td><input type="text" name="vehicle"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input type="text" name="price"></td>
	</tr>
	<tr>
		<td>결제방식</td>
		<td><input type="radio" name="pay" value="일시불">일시불
			<input type="radio" name="pay" value="일시불">할부 
		</td>
	</tr>
	<tr>
		<td>옵션</td>
		<td><input type="checkbox" name="option" value="썬루프">썬루프
			<input type="checkbox" name="option" value="후방카메라">후방카메라
			<input type="checkbox" name="option" value="열선시트">열선시트
		</td>
	</tr>
</table>
<input type="submit" value="선택">
</form>
</body>
</html>