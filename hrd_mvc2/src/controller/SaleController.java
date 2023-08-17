package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SaleDao;
import vo.SaleVo;



public class SaleController implements Controller{
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SaleDao dao = SaleDao.getSaleDao();
		List<SaleVo> list = null;
		
		try {
			list = dao.salesTotal();
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("saleView.jsp");
		dispatcher.forward(request, response);
		
	}

}
