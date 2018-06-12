package kh.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.web.DTO.MemberDTO;
import kh.web.dao.MemberDAO;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			MemberDAO memDAO = new MemberDAO();
			boolean isRedirect = true;
			String dst = "null";
			if(command.equals("/input.do")) {
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				int result = memDAO.insertDate(id, name);
				request.setAttribute("result", result);
				isRedirect = false;
				dst = "input.jsp";
			}else if(command.equals("/output.do")) {
				List<MemberDTO> list = new ArrayList<>();
				list = memDAO.selectAllData();
				request.setAttribute("list", list);
				isRedirect = false;
				dst = "output.jsp";
			}

			if(isRedirect) {
				response.sendRedirect(dst);
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
