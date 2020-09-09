package vo;

import java.util.Date;

public class BuyVO {
private int buyNum;
private int itemCode;
private String memberId;
private int buyCnt;
private int buyPrice;
private Date buyDate;



public int getBuyNum() {
	return buyNum;
}
public void setBuyNum(int buyNum) {
	this.buyNum = buyNum;
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
public int getBuyCnt() {
	return buyCnt;
}
public void setBuyCnt(int buyCnt) {
	this.buyCnt = buyCnt;
}
public int getBuyPrice() {
	return buyPrice;
}
public void setBuyPrice(int buyPrice) {
	this.buyPrice = buyPrice;
}
public Date getBuyDate() {
	return buyDate;
}
public void setBuyDate(Date buyDate) {
	this.buyDate = buyDate;
}


}
