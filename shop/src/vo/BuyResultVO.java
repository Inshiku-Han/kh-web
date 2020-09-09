package vo;

import java.sql.Date;

public class BuyResultVO {
private String itemName;
private String itemImage;
private int buyCnt;
private int buyPrice;
private Date buyDate;


public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
public String getItemImage() {
	return itemImage;
}
public void setItemImage(String itemImage) {
	this.itemImage = itemImage;
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
