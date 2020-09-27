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
 * Servlet implementation class DoLogin
 */
@WebServlet("/doLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String custormerId = request.getParameter("custormerId");
		String password = request.getParameter("password");
		
		CustomerService service = (CustomerService)CustomerService.getInstance();  //싱글톤
		
		System.out.println(service);
		
		Customer customer = service.login(custormerId,password);
		
		String page;
		if(customer == null) {
			page = "/view/loginfail.jsp";
			request.setAttribute("id", custormerId);
		}
		else {
			page = "/view/loginsuccess.jsp";
			request.setAttribute("customer", customer);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
	}

}
