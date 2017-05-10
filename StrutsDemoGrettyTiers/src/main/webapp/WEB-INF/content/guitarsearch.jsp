<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/Buttons/2.0.0/css/buttons.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>    
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    <script src="https://cdn.bootcss.com/Buttons/2.0.0/js/buttons.min.js"></script>
    <title>吉他查询</title>
    <script type="text/javascript">
    function submit(){
	    	$.ajax({
	    		url:'${pageContext.request.contextPath}/guitarAction_searchGuitar.action',
		    	type:'POST',
				dataType:'json',
				data:{price:$("#price").val(),builder:$("#builder").val(),guitarModel:$("#guitarModel").val(),type:$("#type").val(),backWood:$("#backWood").val(),topWood:$("#topWood").val()},
				success:function(data){
						$("#guitar").empty();
							for(var i=0;i<data.length;i++){
								var g=data[i];
								var html='<tr><td>'+g['serialNumber'] + '</td><td>' + g['price'] + '</td><td>' +g['builder']+ '</td><td>' +g['model']+'</td><td>' +g['type']+'</td><td>' +g['backWood']+'</td><td>' +g['topWood']+'</td></tr>';
								$("#guitar").append(html);
							}
				},
	    	})
	    }
    
    </script>     
</head>
<body>
<form  method="post" action="find">
<div class="container ">
	<div class="row">
		<div class="col-xs-6">
		    <div class="form-group">
			<label>编号</label><input class="form-control" id="serialnumber"/>
			</div>
			<div class="form-group">
			<label>价格</label><input class="form-control" id="price"/>
			</div>
			<div class="form-group">
			<label>制造商</label><input class="form-control" id="builder"/>
			</div>
			<div class="form-group">
			<label>型号</label><input class="form-control" name="model" id="model"/>
			</div>
			<div class="form-group">
			<label>类型</label><input class="form-control"  id="type"/>
			</div>
			<div class="form-group">
			<label>后面板木头</label><input class="form-control"  id="backWood"/>
			</div>
			<div class="form-group">
			<label>琴头木头</label><input class="form-control"  id="topWood"/>
			</div>
			<center> <input type="submit" value="搜索"/></center>
 

			
		</div>
		</div>
		</div>
		</form>
		<div class="col-xs-6">			
			<table border="1" width="100%" id="guitar">
				
			</table>
		</div>
</body>
</html>