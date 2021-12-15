<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>list</title>
</head>
<script type="text/javascript">

	$j(document).ready(function() {
		
		
		

	});
	
	
	
	function searchByBoardType(){
		
		var boardType = $j('input[name="boardType"]:checked').val();

		window.location.href='/board/boardList.do?boardType='+boardType;
		
	}
	
	function setBoardType(){
		
		var boardType = "${boardType}";
		
		
		if(boardType == 'all'){
			$j('#all').prop("checked", true);
		}
		if(boardType == 'a01'){
			$j('#boardNormal').prop("checked", true);
		}
		if(boardType == 'a02'){
			$j('#boardQuestion').prop("checked", true);
		}
		if(boardType == 'a03'){
			$j('#boardAnonymous').prop("checked", true);
		}
		if(boardType == 'a04'){
			$j('#boardFree').prop("checked", true);
		}
		
	}
</script>
<body onload="setBoardType();">

	<table align="center">
		<tr>
			<td align="left"><a href="#">login</a> <a href="#">join</a></td>
		</tr>
		<tr>
			<td align="right">total : ${totalCnt}</td>
		</tr>
		<tr>
			<td>
				<table id="boardTable" border="1">
					<tr>
						<td width="80" align="center">Type</td>
						<td width="40" align="center">No</td>
						<td width="300" align="center">Title</td>
					</tr>
					<c:forEach items="${boardList}" var="list">
						<tr>
							<td align="center">${list.boardType}</td>
							<td>${list.boardNum}</td>
							<td><a
								href="/board/${list.boardType}/${list.boardNum}/boardView.do?pageNo=${pageNo}">${list.boardTitle}</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td align="right"><a href="/board/boardWrite.do">글쓰기</a></td>
		</tr>
		
			<tr align="left">
				<td>
					<input type="radio" name="boardType" value="all" id="all">
					<span>전체</span>
					<input type="radio" name="boardType" value="a01" id="boardNormal">
					<span>일반</span>
					<input type="radio" name="boardType" value="a02" id="boardQuestion">
					<span>Q&A</span>
					<input type="radio" name="boardType" value="a03" id="boardAnonymous">
					<span>익명</span>
					<input type="radio" name="boardType" value="a04" id="boardFree">
					<span>자유</span>
					<button onClick="searchByBoardType();">조회</button>
				</td>
			</tr>
		


	</table>









</body>
</html>