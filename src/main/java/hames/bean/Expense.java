package hames.bean;

import java.util.ArrayList;

import org.omg.CORBA.NameValuePair;

public class Expense {

	String expense,description,cost,account,date;
	Integer id;
	ArrayList<NameValuePair> list;
	public void setExpense(String expense) {
		this.expense = expense;
	}
	public String getExpense() {
		return expense;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setList(ArrayList<NameValuePair> list) {
		this.list = list;
	}
	public Integer getId() {
		return id;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDate() {
		return date;
	}
	public String getAccount() {
		return account;
	}
	public String getCost() {
		return cost;
	}
	public String getDescription() {
		return description;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
