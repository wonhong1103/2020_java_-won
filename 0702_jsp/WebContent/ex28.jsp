<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인검사</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	int cnt = 0;
	if(cookies !=null && cookies.length>0){
		for(Cookie k : cookies){
			if(k.getValue().equals("jsp")){
				cnt += 1;
			}
		}
		if(cnt>=1){
			out.println("<h2>로그인 상태</h2>");
		}else{
			out.println("<h2>로그인하지 않은 상태</h2>");
		}
	}

%>

</body>
</html>