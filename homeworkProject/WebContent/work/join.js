/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	$(document).on('click','#checkNick',function(){
		var nickName = $('#nickName').val();
		if(nickName != ''){
		alert('참 희한한 닉네임이네요.');
		}
	});
	
});

/* 함수선언 영역*/
(function($){
	
});