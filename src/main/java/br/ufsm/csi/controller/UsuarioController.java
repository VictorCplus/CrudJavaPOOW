package br.ufsm.csi.controller;

import br.ufsm.csi.service.UsuarioService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("cadastro")
public class UsuarioController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nome = req.getParameter("nomecadastro");
        String email = req.getParameter("emailcadastro");
        String senha = req.getParameter("senhacadastro");

        RequestDispatcher rd;

        String url = "/WEB-INF/";

        try{
            if(new UsuarioService().Inserir(nome, email, senha)){
                url += "login.jsp";
            }else{
                req.setAttribute("erro", "Algo deu errado!");
                url += "cadastro.jsp";
            }
        }catch (Exception e){

            e.printStackTrace();
        }
        rd = req.getRequestDispatcher(url);
        rd.forward(req, resp);
    }
}
