package hames.dbo;

import java.sql.ResultSet;
import java.util.ArrayList;

import hames.bean.Expense;
import hames.service.ServicebillService;

public class ExpenseDbo {

	DbOperation oper;
	public void insertNewExpense(Expense expense){
		String date=new ServicebillService().getToday();
		oper=new DbOperation();
		oper.runSql("INSERT INTO expense(expense, description, cost, account, date)VALUES ('"+expense.getExpense()+"', '"+expense.getDescription()+"', '"+expense.getCost()+"', '"+expense.getAccount()+"', '"+date+"');");
		
	}
	public ArrayList<Expense> getAllExpense(){
		ArrayList<Expense> list=new ArrayList<Expense>();
		try{
			oper=new DbOperation();
			ResultSet set=oper.getData("expense");
			set.next();
			Expense exp=new Expense();
			exp.setExpense(set.getString(2));
			//exp.setItem1name(set.getString(3));
			//exp.setItem2name(set.getString(4));
			//exp.setItem3name(set.getString(5));
			//exp.setItem4name(set.getString(6));
			//exp.setItem1cost(set.getString(7));
			//exp.setItem2cost(set.getString(8));
			//exp.setItem3cost(set.getString(9));
			//exp.setItem4cost(set.getString(10));
			//exp.setDate(set.getString(11));
			list.add(exp);
		}catch(Exception e){
			
		}
		return list;
	}
}
