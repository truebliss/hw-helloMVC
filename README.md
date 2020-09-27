# hw-helloMVC

학번: 1871323 이름: 김연지


## 과제 설명
Servlet과 JSP를 이용하여 회원가입, 로그인 웹 애플리케이션 제작하기.
<br>
<br>

## 1. 스크린샷

1-1. index.jsp

![1](https://user-images.githubusercontent.com/68186349/94359075-ef741000-00df-11eb-8672-70a0ecc84b27.PNG)

핵심 코드
```
<a href="/hw-helloMVC/home?action=login"> go to login page </a>
<a href="/hw-helloMVC/home?action=register"> go to register page </a>
```
<br>
<br>

1-2. registerform.jsp


![2](https://user-images.githubusercontent.com/68186349/94359076-f0a53d00-00df-11eb-9372-68d916d200bf.PNG)

핵심코드
```
<form action="/hw-helloMVC/doRegister" method="post">
//비밀번호도 포함돼있기 때문에 post타입으로
...

<tr><td>이름</td><td>  <input type="text" name="name">  </td></tr>
<tr><td>성별</td><td>  <label><input type="radio" name="gender" value="female">female</label>
<label><input type="radio" name="gender" value="male">male</label>  </td></tr>
//성별은 텍스트와 라디오버튼을 label로 묶어주기
```
<br>
<br>

1-3. registersuccess.jsp


![3](https://user-images.githubusercontent.com/68186349/94359077-f0a53d00-00df-11eb-9915-2ea903fbe719.PNG)

핵심코드
```
	<ul>
		<li> Id: ${customer.id} </li>
		<li> password: ${customer.password} </li>
		<li> Name: ${customer.name} </li>
		<li> gender: ${customer.gender} </li>
		<li> Email: ${customer.email} </li>
	</ul>
```
<br>
<br>

1-4. loginform.jsp 


![4](https://user-images.githubusercontent.com/68186349/94359078-f13dd380-00df-11eb-8d21-99fb8d0fe1da.PNG)

핵심코드
```
<form action="/hw-helloMVC/doLogin" method="post">
//비밀번호 포함돼있기 때문에 post타입으로
```
<br>
<br>

1-5. loginfail.jsp - 비밀번호 틀리게 입력


![55](https://user-images.githubusercontent.com/68186349/94359611-6d85e600-00e3-11eb-9ed2-63154dfab13d.PNG)

핵심코드
```
Login Failed : ${id} is not present.
```
<br>
<br>

1-6.  loginfail.jsp - 비밀번호 맞게 입력


![7](https://user-images.githubusercontent.com/68186349/94359081-f1d66a00-00df-11eb-843f-fc9c909cd330.PNG)

핵심코드
```
<h1>Hello. ${customer.name} logged in successfully.</h1>
```
<br>
<br>


## 2. java설명


2-1. DoRegister.java


<기능>
registerform.jsp에서 입력 값들을 가져온다.
addCustomer메소드에 전달해서 Customer객체를 생성한다.
customer객체 생성에 실패하면 error.jsp,
아니면 registersuccess.jsp로 연결된다.

핵심코드
```
CustomerService.addCustomer( new Customer(custormerId,password,name,gender,email));		
```

<br>
<br>

2-2.  DoLogin.java


<기능>
loginform.jsp에서 아이디, 비밀번호 입력 값 가져온다.
비밀번호가 맞는 지  login 메소드에 전달해서 검사한다.
null이면 loginfail.jsp,
null이 아니면 loginsuccess.jsp로 연결된다.


핵심 코드
```
CustomerService service = (CustomerService)CustomerService.getInstance();  //싱글톤
...
Customer customer = service.login(custormerId,password);
...
RequestDispatcher dispatcher = request.getRequestDispatcher(page);
dispatcher.forward(request, response);
```

<br>
<br>

2-3. Home.java


<기능>
index.jsp 등 에서 링크연결기능을 담당한다.

핵심코드

```
String action = request.getParameter("action");
...

else
	page = "/view/error.jsp";
		
RequestDispatcher dispatcher = request.getRequestDispatcher(page);
dispatcher.forward(request, response);
```

<br>
<br>

2-4. Customer.java


<기능>
Customer 객체 클래스

<br>
<br>

2-5. CustomerService.java


<기능>
해시맵을 통해 객체를 저장하고, 
addCustomer, findCustomer, login 메소드들은 해시맵의 key와 value를 사용한다.

