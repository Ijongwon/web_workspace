package sample.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * url을 주소창에 http://localhost:8081/jsp3_maven/member/list.do
 * 입력하고 엔터를 치면 실행되는 자바 서블릿
 * url 매핑 : 방법 1) 애노테이션 사용 방법 2) web.xml 에서 servlet 태그로 설정하기
 */
@WebServlet("/member/update.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberUpdateServlet() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
	}




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
				
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
