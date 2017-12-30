<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;  
}
</style>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">REGISTER BOARD</h3>
				</div>
				<!-- /.box-header -->

<form id='registerForm' role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">Title</label> <input type="text"
				name='title' class="form-control" placeholder="Enter Title">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="3"
				placeholder="Enter ..."></textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label> <input type="text"
				name="writer" value='${login.uid}' readonly="readonly" class="form-control" placeholder="Enter Writer">
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">File DROP Here</label>
			<div class="fileDrop"></div>
		</div>
	</div>

	<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		</ul>

		<button type="submit" class="btn btn-primary">Submit</button>

	</div>
</form>


			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>    

<script>
var template = Handlebars.compile($("#template").html());
$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});
//file drop 이벤트 처리
$(".fileDrop").on("drop", function(event){
	event.preventDefault(); // 디폴트 이벤트 발생 막기	
	var files = event.originalEvent.dataTransfer.files;	
	//event.originalEvent는 jQuery를 이용하는 경우 event가 순수한 DOM 이벤트가 아님
	//=>event.originalEvent를 이용해서 순수한 원래의 DOM 이벤트를 가져옴			
	//event.dataTransfer는 이벤트와 같이 전달된 데이터를 의미하고, 그 안에 포함된 파일 데이터를 찾아내기 위해서 사용
	var file = files[0];
	var formData = new FormData(); //FormData 객체 생성, 브라우저 체크 해야됨
	//https://developer.mozilla.org/en-US/docs/Web/API/FormData 참조	
	formData.append("file", file);	//파일 정보 추가
	
	
	//processData : 데이터를 일반적인 query string으로 변환할 것인지를 결정. 기본 true
	// => 'application/x-www-form-urlencoded' 타입으로 전송.
	//다른 형식으로 데이터를 보내기 위하여 자동 변환하고 싶지 않으면 false	
	//contentType : 기본 값 : 'application/x-www-form-urlencoded'
	//파일의 경우 multipart/form-data 방식으로 전송하기 위해 false	
	$.ajax({
		  url: '/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
	});	
});


$("#registerForm").submit(function(event){  //form 태그의 서브밋
	event.preventDefault();  //기본 동작 막고
	
	var that = $(this);
	var str ="";
	
	//현재까지 업로드 된 파일들을 히든으로 추가
	//'files[0]'과 같은 이름으로 추가 -> BoardVO의 files 파라미터를 수집
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	
	that.append(str);

	that.get(0).submit();//.get(0) : 순수한 DOM 객체를 얻어내기 위해 사용
});



</script>

 

<%@include file="../include/footer.jsp"%>