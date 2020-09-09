package service;

import java.util.List;

import vo.BuyResultVO;
import vo.BuyVO;

public interface BuyService {
	//상품 구매
	public int insertBuy(BuyVO buyVO);
	//구매 목록
	public List<BuyResultVO> selectBuyList(String memberId);
}
