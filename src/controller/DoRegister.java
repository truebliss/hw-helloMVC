package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.CustomerService;

/**
 * Servlet implementation class DoRegister
 */
@WebServlet("/doRegister")
public class DoRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String custormerId = request.getParameter("custormerId");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		
		//CustomerService service = new CustomerService();  //매번 새로 생성
		CustomerService service = (CustomerService)CustomerService.getInstance();  //싱글톤
		
		System.out.println(service);
		
		CustomerService.addCustomer( new Customer(custormerId,password,name,gender,email));
		
		
		Customer customer = service.findCustomer(custormerId);
		
		request.setAttribute("customer", customer); //view쪽에선 이 키값을 가지고 조회
		
		String page;
		if(customer == null)
			page = "/view/error.jsp";
		else
			page = "/view/registersuccess.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
	}

}
