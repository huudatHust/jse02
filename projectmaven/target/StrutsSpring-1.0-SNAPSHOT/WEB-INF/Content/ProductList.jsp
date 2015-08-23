<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin List</title>
</head>
<body>
    <div align="center">
        <table width="80%" border="1" style="border-collapse: collapse;">
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Pass</th>
                
            </tr>
            <s:iterator value="listProduct" status="stat">
                <tr>
                    <td><s:property value="#stat.count" /></td>
                    <td><s:property value="username" /></td>
                    <td><s:property value="password" /></td>
                </tr>
            </s:iterator>         
        </table>
    </div>
</body>
</html>
