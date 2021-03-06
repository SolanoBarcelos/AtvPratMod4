package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinoDao;
import model.Destino;


@WebServlet("/DestinoCreateAndSFind")
public class DestinoCreateAndSFind extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DestinoCreateAndSFind() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			
		String pesquisa = request.getParameter("pesquisa");
		
		if(pesquisa==null) {
			pesquisa="";
		}
		
		List<Destino> destinos = DestinoDao.find(pesquisa);
		
		request.setAttribute("destinos", destinos);
		
		RequestDispatcher resquestDispatcher = request.getRequestDispatcher("lista.jsp");
		resquestDispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Destino destino = new Destino();
		
		destino.setNome(request.getParameter("nome"));
		destino.setCidade(request.getParameter("cidade"));
		destino.setEstado(request.getParameter("estado"));
		
		DestinoDao.create(destino);
		
		doGet(request, response);
	}

}
