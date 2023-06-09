import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "questServlet", value = "/quest-servlet")
public class QuestServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();


        Integer questionNumber = (Integer) session.getAttribute("questionNumber");

        if (questionNumber == null || questionNumber == 0) {
            session.setAttribute("questionNumber", 1);
        } else if (questionNumber >= 1) {
            session.setAttribute("questionNumber", questionNumber + 1);
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("lose.jsp").forward(request, response);
    }
}
