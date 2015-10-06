<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript">
	function save(){
		$('#customer').serialize();
		$('#customer').submit();
	}
	
	function view(id){
		if(id == null){
			window.location.href = "customerview";
		}else{
			window.location.href = "customerview?id="+id;	
		}
		
	}
</script>

<div class="col-md-12">
	<h3 class="headline m-top-md">
		Customer
		<span class="line"></span>
	</h3>
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a class="btn btn-info" href="customerview"><i class="fa fa-asterisk"></i> New</a>
					<a class="btn btn-success" onclick="save()"><i class="fa fa-save"></i> Save</a>
<!-- 					<a class="btn btn-danger"><i class="fa fa-trash-o"></i> Delete</a>
 -->				</div>
				<div class="panel-body">
					<form:form modelAttribute="customer" method="POST" action="customersave">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<form:label path="firstName" cssClass="control-label">First Name</form:label>
									<form:input path="firstName" cssClass="form-control input-sm" placeholder="First Name" />								 	
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<form:label path="middleName" cssClass="control-label">Middle Name</form:label>
									<form:input path="middleName" cssClass="form-control input-sm" placeholder="Middle Name" />								 	
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<form:label path="lastName" cssClass="control-label">Last Name</form:label>
									<form:input path="lastName" cssClass="form-control input-sm" placeholder="Last Name" />								 	
								</div>
							</div>
						</div>
						<hr />
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<form:label path="phoneNumber" cssClass="control-label">Phone No</form:label>
									<form:input path="phoneNumber" cssClass="form-control input-sm" placeholder="Phone No" />								 	
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label class="control-label">Mobile Number</label>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-mobile-phone fa-lg"></i></span>
										<form:input path="mobileNumber" cssClass="form-control input-sm" placeholder="Mobile No" />								 	
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label class="control-label">E-mail ID</label>
									<div class="input-group">
										<span class="input-group-addon">@</span>
										<form:input path="emailId" cssClass="form-control input-sm" placeholder="Email Addres" />
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label class="control-label">Status</label>
									<div class="input-group">
										<span class="input-group-addon">?</span>
										<form:select path="status" cssClass="form-control input-sm">
											<form:options items="${customerStatus}" itemValue="value" itemLabel="text"/>
										</form:select>
									</div>
								</div>
							</div>
						</div>
						<hr />
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">Permanent Address</label>
									<form:textarea path="permanentAddress" cssClass="form-control input-sm" placeholder="Permanent Address"/>								 	
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">Temporary Address</label>
									<form:textarea path="temporaryAddress" cssClass="form-control input-sm" placeholder="Temporary Address" />
								</div>
							</div>
						</div>
						<form:hidden path="status" placeholder="status" />
						<div class="row no-margin">
							<jsp:include page="/WEB-INF/views/hames/audit.jsp" />
						</div>
					</form:form>
				</div>
			</div>
		</div>	
	</div><!-- /.col -->
</div><!-- /.row -->		
