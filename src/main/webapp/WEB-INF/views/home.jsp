<script type="text/javascript">

$(function() {
	$('#datatable').dataTable( {
		"bProcessing" : true,
		"bServerSide" : true,
        "sAjaxSource": "staffroledatatable"
    });
});
</script>

<div class="panel panel-default table-responsive">
	<div class="panel-heading">
		Data Table
		<span class="label label-info pull-right"></span>
	</div>
	<div class="padding-md clearfix">
		<table id="datatable" class="table table-striped dataTable">
			<thead>
				<tr>
	                <th>First name</th>
	                <th>Last name</th>
	                <th>Position</th>
	                <th>Office</th>
	                <th>Start date</th>
	                <th>Salary</th>
	            </tr>
			</thead>
		</table>
	</div><!-- /.padding-md -->
</div>