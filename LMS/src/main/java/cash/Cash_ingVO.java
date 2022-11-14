package cash;

import java.sql.Date;

public class Cash_ingVO {
	int cash_code, price;
	String id, cash_name, description;
	Date payment_start_date, payment_end_date, payment_day;
	
	
	
	public int getCash_code() {
		return cash_code;
	}
	public void setCash_code(int cash_code) {
		this.cash_code = cash_code;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCash_name() {
		return cash_name;
	}
	public void setCash_name(String cash_name) {
		this.cash_name = cash_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getPayment_start_date() {
		return payment_start_date;
	}
	public void setPayment_start_date(Date payment_start_date) {
		this.payment_start_date = payment_start_date;
	}
	public Date getPayment_end_date() {
		return payment_end_date;
	}
	public void setPayment_end_date(Date payment_end_date) {
		this.payment_end_date = payment_end_date;
	}
	public Date getPayment_day() {
		return payment_day;
	}
	public void setPayment_day(Date payment_day) {
		this.payment_day = payment_day;
	}
	
	
}
