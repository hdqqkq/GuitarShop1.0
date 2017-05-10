<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>页面显示</title>
	<link type="text/css" rel="stylesheet" href="style/reset.css"/>
    <link type="text/css" rel="stylesheet" href="style/main.css"/>
    <script type="text/javascript" src="dist/js/demo.js"></script>
    <link rel="stylesheet" href="dist/css/style.css"/>
</head>
<body>

 <div class="col-xs-6">
			<table border="5" width="100%">
			<thead>
				<tr>
					<th>编号</th>
					<th>价格</th>
					<th>制造商</th>
					<th>型号</th>
					<th>类型</th>
					<th>背面板木头</th>
					<th>琴头木头</th>
				</tr>
				</thead>
				<tbody>
       <s:iterator id="li" value="#request.li"> 
				<tr>

					 <td class="serialNumber"><s:property value="#li.serialNumber"/></td>
					<td class="price"><s:property value="#li.price"/></td>
					<td class="model"><s:property value="#li.model"/></td>
					<td class="builder"><s:property value="#li.builder"/></td>	
					<td class="type"><s:property value="#li.type"/></td>
					<td class="backWood"><s:property value="#li.backWood"/></td>
					<td class="topwood"><s:property value="#li.topWood"/></td> 
				</tr>
		</s:iterator>  
				</tbody> 				
			</table>             

</div> 

</body>
</html>