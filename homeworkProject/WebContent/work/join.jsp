<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="join.css?ver=2"/>
</head>
<body>
<div id="mainContainer">
	<div style="height: 30px;"></div>
	<div id="mustTableDiv" align="center">
		<p>필수입력사항</p>
		<table>
			<tr>
				<td>사번</td>
				<td><input type="text" placeholder="사번을 입력해주세요"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" placeholder="닉네임을 입력해주세요" id="nickName">&nbsp;&nbsp;<input type="button" value="중복확인" id="checkNick"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" placeholder="비밀번호를 입력해주세요"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td class="telTd"><input type="tel">-<input type="tel">-<input type="tel"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" placeholder="주소를 입력해주세요"></td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select>
						<option>사원</option>
						<option>대리</option>
						<option>과장</option>
						<option>부장</option>
						<option>임원</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="male">남<input type="radio" name="gender" value="female">여</td>
			</tr>
		</table>
	</div>
	<div id="optionTableDiv" align="center">
		<p>선택 입력 사항</p>
		<table>
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" class="hobby">축구
					<input type="checkbox" class="hobby">야구
					<input type="checkbox" class="hobby">농구
				</td>
			</tr>
			<tr>
				<td>비상연락처</td>
				<td class="telTd"><input type="tel">-<input type="tel">-<input type="tel"></td>
			</tr>
			<tr>
				<td>결혼여부</td>
				<td><input type="radio" name="married" value="yes">기혼<input type="radio" name="married" value="no">미혼</td>
			</tr>
			<tr>
				<td>생일</td>
				<td><input type="date"></td>
			</tr>
		</table>
	</div>
	<div style="height: 30px"></div>
	<div id="menuDiv" align="center">
		<input type="button" value="뒤로가기" onclick="javascript:history.back();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="회원가입">
	</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="join.js?ver=2"></script>
</body>
</html>