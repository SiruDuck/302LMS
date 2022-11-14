package cash;

import java.sql.Date;

public class Cash_finalVO {
	int cash_code, price;
	String id, cash_name,  description, payment_status;
	Date dateofreceipt, semester, payment_day;
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
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	public Date getDateofreceipt() {
		return dateofreceipt;
	}
	public void setDateofreceipt(Date dateofreceipt) {
		this.dateofreceipt = dateofreceipt;
	}
	public Date getSemester() {
		return semester;
	}
	public void setSemester(Date semester) {
		this.semester = semester;
	}
	public Date getPayment_day() {
		return payment_day;
	}
	public void setPayment_day(Date payment_day) {
		this.payment_day = payment_day;
	}
	
	
	
	
}
