package cash;

import java.sql.Date;

public class Cash_finalVO {
	private int cash_code, price;
	private String id, cash_name,  description, payment_status, semester ;
	private Date dateofreceipt;
	
	
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
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public Date getDateofreceipt() {
		return dateofreceipt;
	}
	public void setDateofreceipt(Date dateofreceipt) {
		this.dateofreceipt = dateofreceipt;
	}
	
	
	
}
