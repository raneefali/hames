<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css" >

	#div_form{
		margin-left: 30px;
		margin-right: 50px;
		background: #ffffff;
		padding-left: 20px;
		border-radius: 8px;
		padding-top: 20px;
		padding-bottom: 20px;
	}
	#heading_div{
		margin-bottom: 20px;
		margin-left: 20px;
	}
	#div_form div{
		margin-top: 30px;
	}
	#div_form label{
		margin-right: 20px;
	}
	#et_expense,#div_form input{
		border: 1px solid #CCC;
		border-radius:4px;
		float: inherit;
		padding: 5px 10px;
		line-height:1.5;
		height: 30px;
		margin-right: 100px;
		font-size: 12px;
		margin:0;
		font:inherit;
		color:inherit;
		width: 368px;
	}
	#et_expense:FOCUS,#div_form input:FOCUS{
		border: 1px solid;
		border-radius:4px;
		float: inherit;
		padding: 5px 10px;
		height: 30px;
		font-size: 12px;
		font: inherit;
		border-color:rgba(250,167,34,.8);
		-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(250,167,34,.6);
		-moz-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(250,167,34,.6);
		box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(250,167,34,.6);
	}
	#btn_submit{
		
	}
	#div_heads{
		padding-left: 20px;
		padding-right: 30px;
		
	}
	#div_heads label{
		margin-right: 180px;
		font-size: 20px;
		margin-left: 40px;
	}
	#div_form tr,#div_form td{
		padding-bottom: 15px;
		padding-top: 15px;
		margin-bottom: 15px;
	}
	#div_form button{
		background-color: #65CEA7;
		border: 1px solid;
		border-color: #3EC291;
		border-radius: 4px;
		color: #FFF;
		display: inline-block;
		font-family: "Open Sans", sans-serif;
		font-size: 14px;
		font-weight: 400;
		padding: 6px 20px;
		text-align: center;
	}

</style>
<script type="text/javascript">
	function saveexpense() {
		document.location.href="/test";
	}
</script>
</head>
<body>
	<div  id="heading_div">
		<h3 class="headline m-top-md">
		Expense Sheet
		<span class="line"></span>
		</h3>
	</div>
	
	<div id="div_form">
	
		<div><label>Date:${date}</label></div></br>
		<form action="saveexpense" method="post">
			<button>Save</button>
			<table>
				<div><tr><td><label>Expense:</label></td><td><input name="expense" id="et_expense" placeholder="Expense"/></td></tr></div>
				<div><tr><td><label>Description:</label></td><td><input name="description" id="et_description" placeholder="Description"/></td></tr></div>
				<div><tr><td><label>Cost:</label></td><td><input name="cost" id="et_cost" placeholder="Cost"/></td></tr></div>
				<div><tr><td><label>Account:</label></td><td><input name="Account" id="et_account" placeholder="Account"/></td></tr></div>
			</table>
			
			
		</form>
	</div>
	<div class="row no-margin">
					<jsp:include page="/WEB-INF/views/hames/audit.jsp" />
	</div>
</body>
</html>