<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/join.css?ver=1" />
</head>
<body>
	<div class="container" align="center">
		<div style="height: 50px;"></div>
		<div class="row col-md-6 col-md-offset-3" id="cover">
			<div class="row text-left banner">예약자 인적사항</div>
			<div class="row text-center">
				<table>
					<tr>
						<td class="grayTd">*성 명</td> 
						<td class="whiteTd" align="left"><input type="text"
							class="joinInput"></td>
						<td class="grayTd">*전화번호</td>
						<td class="whiteTd" align="left"><input type="tel"
							class="joinTelInput">&nbsp;&nbsp;<input type="tel"
							class="joinTelInput">&nbsp;&nbsp;<input type="tel"
							class="joinTelInput"></td>
					</tr>
					<tr>
						<td class="grayTd">팩스</td>
						<td class="whiteTd" align="left"><input type="number"
							class="joinInput"></td>
						<td class="grayTd">*E-Mail</td>
						<td class="whiteTd" align="left"><input type="email"
							class="joinInput"></td>
					</tr>
				</table>
			</div>
			<div class="row text-left banner">이용자 인적사항</div>
			<div class="row text-center">
				<table>
					<tr>
						<td class="grayTd">*이용자명</td>
						<td class="whiteTd" align="left"><input type="text"
							class="joinInput"></td>
						<td class="grayTd">투숙인원</td>
						<td class="whiteTd" align="left"><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
						</select></td>
					</tr>
					<tr>
						<td class="grayTd">*숙박일자</td>
						<td class="whiteTd" align="left" colspan="3"><input
							type="number" class="joinInput"> 일부터 <select>
								<option>--</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
						</select> 박</td>

					</tr>
					<tr>
						<td class="grayTd">객실수</td>
						<td class="whiteTd" align="left"><select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
						</select></td>
						<td class="grayTd">객실유형</td>
						<td class="whiteTd" align="left"><select>
								<option>debug</option>
								<option>single</option>
								<option>double</option>
								<option>triple</option>
								<option>king</option>
						</select></td>
					</tr>
					<tr>
						<td class="grayTd">주 소</td>
						<td class="whiteTd" align="left"><input type="number"
							class="joinInput"></td>
						<td class="grayTd">전 화</td>
						<td class="whiteTd" align="left"><input type="number"
							class="joinInput"></td>
					</tr>
					<tr>
						<td class="grayTd">팩 스</td>
						<td class="whiteTd" align="left"><input type="text"
							class="joinInput"></td>
						<td class="grayTd">*E-Mail</td>
						<td class="whiteTd" align="left"><input type="email"
							class="joinInput"></td>
					</tr>
				</table>
			</div>
			<div class="row text-left banner">대명회원 인적사항</div>
			<div class="row text-center">
				<table>
					<tr>
						<td class="grayTd">대명회원</td>
						<td colspan="3" class="whiteTd" align="left"><input
							type="radio" name="joinable" value="Y" style="width: 10px;">
							<span class="radioText">회원</span> <input type="radio"
							name="joinable" value="N" style="width: 10px;"> <span
							class="radioText">비회원</span></td>
					</tr>
					<tr>
						<td class="grayTd">회원번호</td>
						<td class="whiteTd" align="left"><input type="number"
							class="joinInput"></td>
						<td class="grayTd">비밀번호</td>
						<td class="whiteTd" align="left"><input type="number"
							style="width: 60px; height: 20px;"></td>
					</tr>
				</table>
			</div>
			<div class="row text-left banner">하시고 싶으신 말씀</div>
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-2 text-center"
							style="height: 60px; padding-top: 20px; background: #eeeeee;">의
							견</div>
						<div class="col-md-5" align="right">
							<textarea rows="3" cols="40"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-3 col-md-offset-3">
					<input type="button" class="btn btn-info btn-sm" value="내용 저장">
				</div>
				<div class="col-md-3">
					<input type="button" class="btn btn-info btn-sm" value="뒤로 이동">
				</div>

			</div>
		</div>
	</div>
</body>
</html>