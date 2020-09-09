/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	//수량이 변경됐을 때 실행...
	$(document).on('change Keyup click', '#itemCnt', function() {
		var price = $('#originalPrice').val();
		var amount = $('#itemCnt').val();
		var totalPrice = price * amount;
		$('#PriceTd').text(totalPrice);
		
		
	});
	
	//분양하기 버튼 클릭시
	$(document).on('click', '#insertBuy', function() {
		
		var buyCnt = $('#itemCnt').val();
		var itemCode = $('#itemCode').val();
		
		location.href = 'insertBuy.bu?buyCnt=' + buyCnt + '&itemCode=' + itemCode;
	});
	
});


/* 함수선언 영역*/
(function($){
	//장바구니에 담기
	addCart = function(loginInfo){
		//로그인 됐을 때는 장바구니로 담고,
		//로그인 안되있으면 로그인 하라는 메세지 띄우기
		if(loginInfo == ''){
			alert('로그인이 필요합니다');
			return;
		}
		else{
			$('#cartForm').submit();
			
		}
		
	};

})(jQuery);