package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ListItem;

/**
 * Servlet implementation class AddItemServlet
 */
@WebServlet("/addItemServlet")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String maker = request.getParameter("maker");
		String model = request.getParameter("model");
		String category = request.getParameter("category");
		
		//add a new item from the form fields
		ListItem li = new ListItem(maker, model, category);
		ListItemHelper dao = new ListItemHelper();
		dao.insertItem(li);
		
		//dispatch them back to the index.html form page
		getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		
	}

}
