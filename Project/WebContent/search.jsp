<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.search{
margin-top:20px;}

.searchBtn{
position:absolute;
margin-top:10px;
margin-left:105px;
}
</style>
 <script>

<%-- function checkId(){
		var link = document.getElementById("check");
		var id ='<%=(String) session.getAttribute("id")%>';
		console.log(id);
		link.addEventListener('click', function(){
			link.removeEventListener('click',checkId);
			if(id=="null"){
				alert("로그인 해주세요!");
			} else{
				link.type="submit";
			}
	}) --%>
		
	function checkVal(){
		var input = document.getElementById("keyword");
		var btn = document.getElementById("check");
		if(input.value == ""){
			btn.type="reset";
			alert("검색할 내용을 입력해주세요!");
		} else{
			btn.type="submit";
		}
	}

</script> 
</head>
<body>
	<form class="search" action='search.do' method='post'>
	     <input id="keyword" name="keyword" type="text" placeholder="검색어를 입력해주세요.">
	<div class="searchBtn">
	     <button id="check" class="btn" type="submit" onclick="checkVal();">검색</button>
	</div>
	</form>
</body>
</html>