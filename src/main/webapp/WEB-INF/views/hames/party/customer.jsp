<div class="col-md-12">
	<h3 class="headline m-top-md">
		Customer
		<span class="line"></span>
	</h3>
	<ul class="tab-bar grey-tab">
		<li class="active">
			<a href="#search" data-toggle="tab">
				<span class="block text-center">
					<i class="fa fa-search fa-2x"></i> 
				</span>
				Search
			</a>
		</li>
		<li>
			<a href="#create" data-toggle="tab">
				<span class="block text-center">
					<i class="fa fa-edit fa-2x"></i> 
				</span>
				Create
			</a>
		</li>
	</ul>
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="tab-content">
				<div class="tab-pane fade active in" id="search">
					<div class="row">
						<div class="panel-heading">
							<div class="input-group">
								<input type="text" class="form-control input-sm" placeholder="Search here...">
									<span class="input-group-btn">
									<button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button>
								</span>
							</div><!-- /input-group -->
						</div>
					</div>
				</div><!-- /tab1 -->
				<div class="tab-pane fade" id="create">
					<div class="panel panel-default">
						<div class="panel-heading">
							<a class="btn btn-success"><i class="fa fa-save"></i> Save</a>
							<a class="btn btn-danger"><i class="fa fa-trash-o"></i> Delete</a>
						</div>
						<div class="panel-body">
							<form class="">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="control-label">First Name</label>
											<input class="form-control input-sm" type="text" placeholder="First Name">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label class="control-label">Middle Name</label>
											<input class="form-control input-sm" type="text" placeholder="Middle Name">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label class="control-label">Last Name</label>
											<input class="form-control input-sm" type="text" placeholder="Last Name">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label">Phone No</label>
											<input class="form-control input-sm" type="text" placeholder="Phone No">
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label class="control-label">Mobile No</label>
											<input class="form-control input-sm" type="text" placeholder="Mobile No">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">E-mail ID</label>
											<input class="form-control input-sm" type="text" placeholder="Email Address">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Permanent Address</label>
											<textarea class="form-control" placeholder="Permanent Address" ></textarea>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">Temporary Address</label>
											<textarea class="form-control" placeholder="Temporary Address" ></textarea>
										</div>
									</div>
								</div>
								<div class="row no-margin">
									<jsp:include page="/WEB-INF/views/hames/audit.jsp" />
								</div>
							</form>
						</div>
					</div>	
				</div><!-- /tab2 -->
			</div><!-- /tab-content -->
		</div><!-- /.col -->
	</div><!-- /.row -->			
	
</div>

	