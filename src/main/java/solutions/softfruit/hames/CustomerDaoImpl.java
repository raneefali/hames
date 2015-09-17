package solutions.softfruit.hames;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void insert(Customer customer){
		Session session = sessionFactory.getCurrentSession();
		session.save(customer);
	}
}
