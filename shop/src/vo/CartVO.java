package vo;

import java.util.List;

public class CartVO {
private int cartNum;
private int itemCode;
private String memberId;
private int itemCnt;
private int totalPrice;

private String itemName;
private int itemPrice;
private String itemImage;

private List<Integer> cartNumList;

public int getCartNum() {
	return cartNum;
}
public void setCartNum(int cartNum) {
	this.cartNum = cartNum;
}
public int getItemCode() {
	return itemCode;
}
public void setItemCode(int itemCode) {
	this.itemCode = itemCode;
}
public String getMemberId() {
	return memberId;
}
public void setMemberId(String memberId) {
	this.memberId = memberId;
}
public int getItemCnt() {
	return itemCnt;
}
public void setItemCnt(int itemCnt) {
	this.itemCnt = itemCnt;
}
public int getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(int totalPrice) {
	this.totalPrice = totalPrice;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
public int getItemPrice() {
	return itemPrice;
}
public void setItemPrice(int itemPrice) {
	this.itemPrice = itemPrice;
}
public String getItemImage() {
	return itemImage;
}
public void setItemImage(String itemImage) {
	this.itemImage = itemImage;
}
public List<Integer> getCartNumList() {
	return cartNumList;
}
public void setCartNumList(List<Integer> cartNumList) {
	this.cartNumList = cartNumList;
}



}
