package chapter08;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/simple")
public class SimpleServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, 
        HttpServletResponse response) throws ServletException, IOException {
        // リクエスト/レスポンスで文字化けしないようにUTF-8を使用
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String name = "佐々木";
        Integer age = 56;
        session.setAttribute("name", name);
        session.setAttribute("age", age);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/simple.jsp");
        dispatcher.forward(request, response);
    }
}
