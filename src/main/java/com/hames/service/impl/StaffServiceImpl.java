package com.hames.service.impl;

import java.util.List;

import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Validator;

import com.hames.bean.Staff;
import com.hames.bean.StaffRole;
import com.hames.dao.StaffDao;
import com.hames.exception.StaffRoleException;
import com.hames.exception.ValidationException;
import com.hames.service.GenericService;
import com.hames.service.StaffRoleService;
import com.hames.service.StaffService;
import com.hames.util.DatatableRequest;
import com.hames.util.DatatableResponse;
import com.hames.validator.StaffValidator;

@Service
public class StaffServiceImpl extends GenericService implements StaffService {

	private static final Logger logger = LoggerFactory.getLogger(StaffServiceImpl.class);

	@Autowired
	private StaffDao staffDao;
	@Autowired
	private StaffRoleService staffRoleService;

	@Override
	public Validator getValidator() {
		return new StaffValidator();
	}
	
	@Override
	public Class<?> getEntityClass() {
		return Staff.class;
	}
	
	@Override
	public void saveStaff(Staff staff) {
		
		/**
		 * validating Staff
		 */
		try{
			validate(staff);
			StaffRole staffRole = staffRoleService.getStaffRoleById(staff.getRoleId());
			if(staffRole == null){
				logger.debug("Staff Role doesn't exists.");
				throw new StaffRoleException("Invalid Staff Role.");
			}
		}catch(ValidationException e){
			throw new ValidationException();
		}
		
		/**
		 * Setting Audit details
		 */
		if(staff.getStaffId() == null || staff.getStaffId().isEmpty()){
			staff.setDateCreated(new DateTime());
			staff.setDateModified(new DateTime());	
		}else{
			staff.setDateModified(new DateTime());
		}
		
		logger.debug("Saving entity : {},{}",staff.getClass(),staff.toString());
		staffDao.save(staff);
		logger.debug("Entity saved successfully");
	}

	@Override
	public Staff getStaffById(String staffId) {
		return staffDao.findByStaffId(staffId);
	}

	@Override
	public DatatableResponse getDatatable(DatatableRequest request) {
		return staffDao.buildDatatable(request);
	}

	@Override
	public List<Staff> getAllStaffs() {
		return staffDao.findAllStaffs();
	}
	
	/*@Override
	public Validator getValidator() {
		return new StaffValidator();
	}

	@Override
	public Class<?> getEntityClass() {
		return Staff.class;
	}
	
	@Override
	public <T> void save(T t) {
		Staff staff = (Staff) t;
		
		//Setting Auditable details
		staff.setDateCreated(new DateTime());
		staff.setDateModified(new DateTime());
		
		super.save(staff);
	}
	
	@Override
	public <T> void validate(T t) {
		
		Staff staff = (Staff) t;
		if(staff.getRoleId() == null || staff.getRoleId() <= 0){
			logger.debug("Staff Role required");
			ModelUtil.addError("Staff Role Required");
		}
		
		StaffRole staffRole = staffRoleService.findOne(staff.getRoleId());
		if(staffRole == null){
			logger.debug("Staff Role doesn't exists");
			ModelUtil.addError("Invalid Staff Role");
		}
		
		if(staff.getStatus() == null || StaffStatusEnum.findEnum(staff.getStatus()) == null){
			logger.debug("Staff status is null");
			ModelUtil.addError("Staff status required");
		}

		super.validate(t);
	}
*/
}
