<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>���u��� - listOneEmp.jsp</title>
</head>
<body bgcolor='white'>

	<table border='1' cellpadding='5' cellspacing='0' width='800'>
		<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'>
			<td><h3>���u��� - ListOneEmp.jsp</h3>
		              <a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></td></tr></table>

<table border='1' bordercolor='#CCCCFF' width='800'>
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>
		<th>�~��</th>
		<th>����</th>
		<th>����</th>
	</tr>
	<tr align='center' valign='middle'>
		<td>${empVO.empno}</td>
		<td>${empVO.ename}</td>
        <td>${empVO.job}</td>
        <td>${empVO.hiredate}</td>
        <td>${empVO.sal}</td>
        <td>${empVO.comm}</td>
        <td>${empVO.deptno}
                  <jsp:useBean id="deptSvc" scope="page" class="com.dept.model.DeptService" />
                  <c:forEach var="deptVO" items="${deptSvc.all}">
                         <c:if test="${empVO.deptno==deptVO.deptno}">
	                                                      �i${deptVO.dname} - ${deptVO.loc}�j
                         </c:if>
                  </c:forEach>
             </td>
	 </tr>
</table>

</body>
</html>
