package hames.bean;

import hames.core.bean.BaseBean;

public class StaffRole extends BaseBean {

	private Integer roleId;
	private String roleName;
	private String roleDescription;
	
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getRoleDescription() {
		return roleDescription;
	}
	public void setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
	}
	
	@Override
	public String toString() {
		return "StaffRole [roleId=" + roleId + ", roleName=" + roleName
				+ ", roleDescription=" + roleDescription + "]";
	}
	
}
