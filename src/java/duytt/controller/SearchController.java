/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duytt.controller;

import duytt.daos.ProductDAO;
import duytt.dtos.Category;
import duytt.dtos.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author thant
 */
public class SearchController extends HttpServlet {

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	private final static String ERROR = "login.jsp";
	private final static String SUCCESS = "product.jsp";

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = ERROR;
		try {
			HttpSession session = request.getSession();
			String minPrice = request.getParameter("minPrice");
			if (minPrice == null || minPrice.isEmpty() || minPrice.equals("")) {
				minPrice = new ProductDAO().getMinPrice();
			}
			String maxPrice = request.getParameter("maxPrice");
			if (maxPrice == null || maxPrice.isEmpty() || maxPrice.equals("")) {
				maxPrice = new ProductDAO().getMaxPrice();
			}
			String cate = request.getParameter("cate");
			if (cate == null) {
				cate = "All";
			}
			String txtSearch = request.getParameter("txtSearch");
			String sql = "";
			String sqlpage = "";
			int indexS = Integer.parseInt(request.getParameter("index"));
			if (cate.equals("All")) {

				sql = "with tblTemp as(select ROW_NUMBER() over ( order by [createDate] asc) as num,[foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%" + txtSearch + "%' and status=1  and [quantity] > 0 and price >= " + minPrice + "\n"
						+ "and price <=  " + maxPrice + ") select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from tblTemp where num between " + (indexS * 20 - 19) + " and " + (indexS * 20);
				sqlpage = "select count(foodId) as soluong from [dbo].[tblFood] where [foodName] like N'%" + txtSearch + "%' and status=1  and [quantity] > 0 and price >= " + minPrice + "\n"
						+ "and price <=  " + maxPrice;
				session.setAttribute("MINPRICE", minPrice);
				session.setAttribute("MAXPRICE", maxPrice);
				session.setAttribute("CATE", cate);
				session.setAttribute("TXTSEARCH", txtSearch);

			} else {

				sql = "with tblTemp as(select ROW_NUMBER() over ( order by [createDate] asc) as num,[foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from [dbo].[tblFood] where [foodName] like N'%" + txtSearch + "%' and status=1  and [quantity] > 0 and price >= " + minPrice + "\n"
						+ "and price <=  " + maxPrice + "and categoryId = '" + cate + "' ) select [foodId],[foodName],[price],[quantity],[status],[createDate],[image],[categoryId] from tblTemp where num between " + (indexS * 20 - 19) + " and " + (indexS * 20);
				sqlpage = "select count(foodId) as soluong from [dbo].[tblFood] where [foodName] like N'%" + txtSearch + "%' and status=1  and [quantity] > 0 and price >= " + minPrice + "\n"
						+ "and price <=  " + maxPrice + "and categoryId = '" + cate + "'";
				session.setAttribute("MINPRICE", minPrice);
				session.setAttribute("MAXPRICE", maxPrice);
				session.setAttribute("CATE", cate);
				session.setAttribute("TXTSEARCH", txtSearch);
			}

			List<Category> listCate = (List<Category>) new ProductDAO().getCate();
			List<Product> listProduct = (List<Product>) new ProductDAO().getProduct(sql);
			int soluong = new ProductDAO().getPage(sqlpage);
			int index = soluong / 20;
			if (soluong % 20 != 0) {
				index++;
			}
			session.setAttribute("LISTPRODUCT", listProduct);
			session.setAttribute("LISTCATE", listCate);
			session.setAttribute("INDEX", index);
			session.setAttribute("SUCCESS", null);
			url = SUCCESS;
		} catch (Exception e) {
		} finally {
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
