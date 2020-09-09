package service;

import java.util.List;

import vo.ItemVO;

public interface ItemService {
	//상품등록
	public int insertItem(ItemVO itemVO);
	
	//상품목록
	public List<ItemVO> selectItemList();
	
	//상품상세
	public ItemVO selectItem(ItemVO itemVO);
}
