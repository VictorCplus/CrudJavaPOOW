package br.ufsm.csi.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("controlador")
public class DashboardController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

     /*   System.out.println("****************");

        System.out.println("user-agente" + req.getHeader("User-Agent"));

        System.out.println("****************");
    */
        String opcao = req.getParameter("opcao");

        System.out.println("Opção do navegador: " +opcao);

        String url = "/WEB-INF/home/";

        if (req.getSession().getAttribute("usuario_logado") != null) {

            System.out.println("opcao de navegação: " + opcao);

            if (opcao.equals("cliente")) {

                url += "cliente.jsp";

            } else if (opcao.equals("produto")) {

                url += "produto.jsp";

            }else if (opcao.equals("logout")) {

                req.getSession().invalidate();
                url = "/";

            }else{
                url += "dashboard.jsp";
            }
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }else{
            url = "/";
            if(opcao.equals("cadastro")){
                url = "WEB-INF/cadastro.jsp";
            }
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }
}