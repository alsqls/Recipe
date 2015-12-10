<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
    String mem_id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<link href="./assets/bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./assets/input/css/normalize.css">
<link rel="stylesheet" href="./assets/input/css/style.css">
    
    <title>회원 정보</title>
</head>
<body>
	<div class="site-wrapper">
		<div class="container">
		<!-- form 태그가 각각 변수들을 다음페이지로 넘겨준다. action="memberInput_ok.jsp"이 다음페이지 -->
			<form class="form-signup" name="f" method="post" action="./memberUpdate.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp; 
                
		<center>
            <h2 style="color: #555" class="form-signup-heading">회원 정보</h2></center>
				<div class="row">
					<input type="text" name="id" id="fancy-text" readonly="readonly" value="<%=mem_id%>"/> <label for="fancy-text">아이디</label>
				</div>

				<div class="row">
					<input type="text" name="passwd" id="fancy-text" /> <label for="fancy-text">패스워드</label>
				</div>
				
				<div class="row">
					<input type="text" name="name" id="fancy-text" /> <label for="fancy-text">이름</label>
				</div>
				
				<div class="row">
					<input type="text" name="email" id="fancy-text" /> <label for="fancy-text">이메일</label>
				</div>
				<center>
				<button	onclick="inputCheck();" type="button">수정</button>
				<button	onclick="cancel();" type="button">취소</button>
                </center>
			</form>
		</div>
	</div>
	</body>
</html>
<script type="text/javascript">
	function inputCheck() {
		if (f.id.value == "") {
			alert("아이디를 입력해 주세요.");
			f.id.focus();
			return;
		}
		if (f.passwd.value == "") {
			alert("패스워드를 입력해 주세요.");
			f.passwd.focus();
			return;
		}
		if (f.name.value == "") {
			alert("이름을 입력해 주세요.");
			f.name.focus();
			return;
		}
		if (f.email.value == "") {
			alert("이메일을 입력해 주세요.");
			f.email.focus();
			return;
		}
		if (f.phone.value == "") {
			alert("전화번호를 입력해 주세요.");
			f.phone.focus();
			return;
		}
		if (f.zipcode.value == "") {
			alert("우편번호를 입력해 주세요.");
			f.zipcode.focus();
			return;
		}		
		if (f.address.value == "") {
			alert("상세주소를 입력해 주세요.");
			f.address.focus();
			return;
		}
		document.f.submit();
	}

	function cancel() {
		//확인창 띄워서 예 누르면 닫기
		var result = window.confirm("회원 정보 페이지에서 나가시겠습니까?");
		if (result) {//true
			location.href("./index.jsp");
		}
	}
</script>
