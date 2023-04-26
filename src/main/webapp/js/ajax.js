/*
	/jquerystudy/src/main/webapp/js/ajax.js
*/
//ajax("test.txt", null,getMax,"GET")
function ajax(url,params,callBack,method){
	const xhttp = new XMLHttpRequest() // ajax 객체생성
	method = method.toUpperCase() // 대문자로 변환
	if(method != "POST"){ //POST 방식이 아닌경우는 무조건 GET방식 전송
		method = "GET"	//
	}
	if(method == "GET"){
		url = url+"?"+params //GET방식인 경우 url에 파라미터 붙여서 전송
	}
	//true : 기본값. 비동기방식으로 전송
	xhttp.open(method,url,true) 
	// POST방식에 대비하여 헤더설정
	xhttp.setRequestHeader("Content-type",
			"application/x-www-form-urlencoded;charset=UTF-8")
	xhttp.send(method=='POST'? params:null) // xhhtp.send(null)
	xhttp.onreadystatechange = callBack // 콜백함수등록 (getMax함수)
}