package br.ufsm.csi.controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("")
public class ControllerServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

   /*     System.out.println("Fazendo algum processamento útil antes" +
                "do usuário ter acesso a login.jsp");
    */
        RequestDispatcher r;
        r = req.getRequestDispatcher("WEB-INF/login.jsp");
        r.forward(req, resp);
    }
}
