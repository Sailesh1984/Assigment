<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<title>Kata Books Billing</title>
</head>
<body>
	<h2 align="center">Kata Book Bill</h2>
	<form:form method="post" action="billing.html"
		modelAttribute="billingForm">
		<div align="center">
			<table id="QuantityInfo">
				<tr>
					<th>Serial Number</th>
					<th>Book Name</th>
					<th>Price</th>
					<th>Qantity</th>
				</tr>

				<c:forEach items="${billingForm.books}" var="book"
					varStatus="status">
					<tr>
						<td align="center">${book.serialId}</td>
						<td align="center">${book.name}</td>
						<td align="center">${book.price}</td>
						<td align="center">${book.quantity}</td>
					</tr>
				</c:forEach>
				<tr>
					<td align="center" colspan="3"><h3>Gross price</h3></td>
					<td>${billingForm.grossTotalPrice} EUR</td>
				</tr>
				<tr>
					<td align="center" colspan="3"><h3>Discount price</h3></td>
					<td>- ${billingForm.totalDiscountPrice} EUR</td>
				</tr>
				<tr>
					<td align="center" colspan="3"><h3>Net total Price</h3></td>
					<td>${billingForm.netTotalPrice} EUR</td>
				</tr>
			</table>
		</div>
	</form:form>

</body>
</html>