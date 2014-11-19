package sportowo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (urlPatterns = "/addSport")

public class Trener extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		AWF data = (AWF) getServletContext().getAttribute("sportData");
		
		if(req.getSession().getAttribute("eSport") == null)
		{
			req.getSession().setAttribute("eSport", new Sport());
		}
		
		Sport sport = (Sport) req.getSession().getAttribute("eSport");
		
		sport.setNazwa(req.getParameter("nazwa"));
		
		sport.setIlosc(req.getParameter("ilosc"));
				
		sport.setKategoria(req.getParameter("kategoria"));
		
		sport.setWynik(req.getParameter("wynik"));
		
		sport.setOpis(req.getParameter("opis"));
		
		data.add(sport);
		resp.sendRedirect("showSports.jsp");
	}
	
	@Override
	public void init() throws ServletException {
		if(getServletContext().getAttribute("sportData") == null)
		{
			getServletContext().setAttribute("sportData", new AWF());
		}
	}

}
