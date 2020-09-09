/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	//수량변경 버튼을 클릭했을 때
	$(document).on(' click ', '.updateCart', function() {
		//$('#id')	$(.class)
		var itemCnt = $(this).prev().prev().val(); //전 전 밸류값 가져오기
		var cartNum = $(this).attr('data-cartNum'); //속성값 가져오기
		location.href = 'updateCart.ca?itemCnt=' + itemCnt + '&cartNum=' + cartNum;
	});
	
	//제목줄의 체크박스가 클릭되면...
	$(document).on('click', '#allCheck', function() {
		//체크박스의 체크유무 확인
		var isChecked = $('#allCheck').is(':checked');
		
		if(isChecked){//체크가 되었을 때
			$('.chk').prop('checked',true);
		}else{
			$('.chk').prop('checked',false);
		}
		
	});
	
	
	//하위 체크박스 변경 시 제목줄의 체크박스 변경
	$(document).on('click', '.chk', function() {
		//.chk의 개수
		var chkCnt = $('.chk').length;
		//.chk 중에서 체크가 된 노드의 개수
		var checkedCnt = $('.chk:checked').length;
		
		if(chkCnt == checkedCnt){
			$('#allCheck').prop('checked',true);
		}else{
			$('#allCheck').prop('checked',false);
		}
		
	});
	
	
	//선택삭제버튼 클릭시
	$(document).on('click', '#deleteBtn', function() {
		var cartNum = '';
		
		$('.chk:checked').each(function(index, element){ //index는 반복횟수, element는 요소값
			var a = $(element).val();
			cartNum = cartNum + a + ',';
			
		});
		
		location.href='deleteCarts.ca?cartNum=' + cartNum;
		
	});
	
	//선택구매 클릭시
	$(document).on('click', '#buyBtn', function() {
		$('.chk:checked').each(function(index, element){
			var a = $(element).val();
			
		});
	
	});
	
	
	
});


/* 함수선언 영역*/
(function($){

})(jQuery);