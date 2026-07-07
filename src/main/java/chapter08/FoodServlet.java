package chapter08;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/food")
public class FoodServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/foodForm.jsp")
               .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String food = request.getParameter("food");

        HttpSession session = request.getSession();
        session.setAttribute("food", food);

        request.getRequestDispatcher("/WEB-INF/jsp/foodResult.jsp")
               .forward(request, response);
    }
}