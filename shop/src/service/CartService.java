package service;

import java.util.List;

import vo.CartVO;

public interface CartService {
	//장바구니에 담기
	public int insertCart (CartVO cartVO);
	//장바구니 목록
	public List<CartVO> selectCartList (CartVO cartVO);
	//장바구니 삭제
	public int deleteCart (CartVO cartVO);
	//장바구니 변경
	public int updateCart(CartVO cartVO);
	//장바구니 선택 삭제
	public int deleteCarts(CartVO cartVO);
}
