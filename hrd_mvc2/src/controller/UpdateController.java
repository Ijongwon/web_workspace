package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import vo.MemberVo;

public class UpdateController implements Controller{

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = MemberDao.getMemberDao();
		String custno = request.getParameter("custno");
		
		try {
			MemberVo vo = dao.selectOne(Integer.parseInt(custno));
			request.setAttribute("vo", vo);
			
		} catch (NumberFormatException | SQLException e) {
			//custno가 숫자가 아닌 문자가 포함되면 parseInt() Exception 발생하므로 처리하기
			//2개 이상의 Exception 처리할때 or은 | 연산자
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateView.jsp");
		dispatcher.forward(request, response);
	}
}
