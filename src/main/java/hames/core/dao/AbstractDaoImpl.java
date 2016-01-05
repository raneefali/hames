package hames.core.dao;

import hames.core.util.DatatableRequest;
import hames.core.util.DatatableResponse;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AbstractDaoImpl implements AbstractDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public Transaction getTransaction(){
		return getSession().getTransaction();
	}
	
	public <T> void saveOrUpdate(T t){
		getSession().beginTransaction();
		try{
			getSession().saveOrUpdate(t);
			getTransaction().commit();
		}catch(Exception ex){
			getTransaction().rollback();
			throw new HibernateException(ex);
		}finally{
			getSession().close();
		}
		
	}

	@Override
	public <T> List<T> findAll(Class<?> clazz) {
		getSession().beginTransaction();
		List<T> datas = null;
		try{
			datas = getSession().createCriteria(clazz).list(); 
			getTransaction().commit();
		}catch(Exception ex){
			getTransaction().rollback();
		}finally{
			getSession().close();
		}
		
		return datas;
	}

	@Override
	public <T> T findOne(Class<?> clazz, Long id) {
		getSession().beginTransaction();
		T t = null;
		try{
			t = (T) getSession().get(clazz, id);	
			getTransaction().commit();
		}catch(Exception ex){
			getTransaction().rollback();
		}finally{
			getSession().close();
		}
		return t;
	}

	@Override
	public DatatableResponse buildDatatable(DatatableRequest datatableRequest,Class clazz) {
		getSession().beginTransaction();
		
		Long totalRecords = (Long) getSession().createCriteria(clazz).setProjection(Projections.rowCount()).uniqueResult();
		
		DatatableResponse datatableResponse = new DatatableResponse();
		datatableResponse.setiTotalRecords(totalRecords);
		
		return datatableResponse;
	}
	
}
