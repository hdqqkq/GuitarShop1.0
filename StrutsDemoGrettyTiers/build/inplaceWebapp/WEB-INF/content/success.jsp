<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>“≥√Êœ‘ æ</title>
</head>
<body>

<s:iterator id="li" value="#request.li">
<form  method="post">
<div class="col-sm-6">
<p> 
<strong class="sub-heading">serialNumber£∫<s:property value="#li.serialNumber"/></strong><br/>
</p>
<p> 
<strong class="sub-heading">price:<s:property value="#li.price"/></strong><br/> </p>
<p>
<p> 
<strong class="sub-heading">model:<s:property value="#li.model"/></strong><br/> </p>
<p> 
<strong class="sub-heading">builder£∫<s:property value="#li.builder"/></strong><br/> </p>
<p> 
<strong class="sub-heading">type£∫<s:property value="#li.type"/></strong><br/></p>
<p> 
<strong class="sub-heading">backWood£∫<s:property value="#li.backWood"/></strong><br/> </p>
<p>
<strong class="sub-heading">topwood£∫<s:property value="#li.topWood"/></strong><br/></p>

</div> 
 </div> 
</form>
</s:iterator>
 </main>    
</body>
</html>