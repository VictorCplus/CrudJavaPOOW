package br.ufsm.csi.controller;

import br.ufsm.csi.model.Usuario;
import br.ufsm.csi.service.UsuarioService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("login")
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String senha = req.getParameter("senha");
        String email = req.getParameter("email");

        RequestDispatcher rd;

        Usuario usuario = new UsuarioService().autenticado(email, senha);

        if(usuario != null){
            HttpSession sessao = req.getSession();
            sessao.setAttribute("usuario_logado", usuario);
            rd = req.getRequestDispatcher("WEB-INF/home/dashboard.jsp");

        }else{
            req.setAttribute("erro", "Usuário ou Senha incorretos.");
            rd = req.getRequestDispatcher("WEB-INF/login.jsp");
        }

        rd.forward(req, resp);
    }

}
