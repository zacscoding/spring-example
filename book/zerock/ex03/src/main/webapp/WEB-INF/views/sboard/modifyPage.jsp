<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">MODIFY BOARD</h3>
				</div>
				<!-- /.box-header -->
				
<form role="form" method="post">
<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEamil1">BNO</label>
		<input type="text" name="bno" class="form-controll" value="${boardVO.bno }" readonly="readonly">	
	</div>
	
	<div class="form-group">
		<label for="exampleInputEamil1">Title</label>
		<input type="text" name="title" class="form-controll" value="${boardVO.title }">	
	</div>
	
	<div class="form-group">
		<label for="exampleInputPassword1">Content</label>
		<textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea>	
	</div>
	
	<div class="form-group">
		<label for="exampleInputEamil1">Writer</label>
		<input type="text" name="writer" class="form-controll" value="${boardVO.writer }">	
	</div>
	
	<!-- /.box-body -->

</div>
</form>

	
<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>

<script>
	$(document).ready(function(){
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
		$(".btn-warning").on("click",function(){
			self.location="/sboard/list?page=${cri.page}&perPageNum=${cri.perPageNum}"
								+"&searchType=${cri.searchType}&keyword=${cri.keyword}";
		});
		
		$(".btn-primary").on("click",function(){
			formObj.submit();
		});		
	});
</script>



			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>



