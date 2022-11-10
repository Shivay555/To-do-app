
<%@ include file="common/header.jspf" %>

<%@ include file="common/navigation.jspf" %>
   <div class="container">
	<h1>Your To-Do's are: </h1>

	<table class="table">
	  <thead>
	     <tr>
		  <th>Description</th>
		  <th>target Date</th>
		  <th>Is Done</th>
		  <th>Action</th>
		  <th></th>
		
	     </tr>
	  </thead>
	  <tbody>
		<c:forEach items="${todos}" var="todo"> 
		<tr>
	       <td>${todo.description}</td>	
	       <td>${todo.targetDate}</td>	
	       <td>${todo.done}</td>	
	       <td> <a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
		   <td> <a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
		   
		</tr>
		</c:forEach>
	</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">Add todo</a>
</div>	
<%@ include file="common/footer.jspf" %>