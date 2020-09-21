/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	$(document).on('click','#goToList',function(){
		const id = $('#empId').val();
		const password = $('#empPass').val();
		
		if(id == '' || password == ''){
			alert('사번과 비밀번호를 입력하세요');
			return;
		}else{
			location.href='list.jsp';
		}
		
	});
	
});

/* 함수선언 영역*/
(function($){
	
	
	
});