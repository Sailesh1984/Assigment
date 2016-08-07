<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<title>Kata Books Selling</title>
</head>
<body>
	<h2 align="center">Book Order Page</h2>
	<form:form method="post" action="billing.html"
		modelAttribute="bookForm">
		<div align="center">
			<table id="QuantityInfo">
				<tr>
					<th>Serial Number</th>
					<th>Book Name</th>
					<th>Price</th>
					<th>Qantity</th>
				</tr>

				<c:forEach items="${bookForm.books}" var="book" varStatus="status">
					<tr>
						<td align="center"><input
							name="books[${status.index}].serialId" value="${book.serialId}"
							 readonly="readonly"/></td>
						<td align="center"><input name="books[${status.index}].name"
							value="${book.name}" size="30" readonly="readonly"/></td>
						<td align="center"><input name="books[${status.index}].price"
							value="${book.price}" readonly="readonly"/></td>
						<td><input name="books[${status.index}].quantity"
							value="${book.quantity}" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4"></td>
				</tr>
				<tr>
					<td colspan="4" /></td>
				</tr>
				<tr>
					<td align="center" colspan="4"><input type="submit"
						value="Order" /></td>
				</tr>
			</table>
		</div>
	</form:form>

</body>
</html>