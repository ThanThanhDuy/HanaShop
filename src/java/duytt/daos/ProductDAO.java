/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duytt.daos;

import duytt.dtos.Category;
import duytt.dtos.Product;
import duytt.utils.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thant
 */
public class ProductDAO {

	public List<Product> getProduct(String sql) throws ClassNotFoundException, SQLException {
		List<Product> result = null;
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			cn = MyConnection.getConnection();
			if (cn != null) {
				pst = cn.prepareStatement(sql);
				rs = pst.executeQuery();
				while (rs.next()) {
					String proID=rs.getString("foodId");
					String proName=rs.getString("foodName");
					float price=rs.getFloat("price");
					String descript="";
					String createDate=rs.getString("createDate");
					String image=rs.getString("image");
					int quanity=rs.getInt("quantity");
					boolean status=rs.getBoolean("status");
					String cateId=rs.getString("categoryId");
					if (result == null) {
						result = new ArrayList<>();
					}
					result.add(new Product(proID, proName, price, descript, createDate, image, quanity, status, cateId));
				}
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (cn != null) {
				cn.close();
			}
		}

		return result;
	}
	public int getPage(String sql) throws ClassNotFoundException, SQLException {
		int result = 0;
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			cn = MyConnection.getConnection();
			if (cn != null) {
				pst = cn.prepareStatement(sql);
				rs = pst.executeQuery();
				if (rs.next()) {
					result=rs.getInt("soluong");
				}
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (cn != null) {
				cn.close();
			}
		}

		return result;
	}
	
	public List<Category> getCate() throws ClassNotFoundException, SQLException {
		List<Category> result = null;
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			cn = MyConnection.getConnection();
			if (cn != null) {
				String sql="select [categoryId],[categoryName],[status] from [dbo].[tblCategory] where status = 1";
				pst = cn.prepareStatement(sql);
				rs = pst.executeQuery();
				while (rs.next()) {
					String cateID=rs.getString("categoryId");
					String cateName=rs.getString("categoryName");
					boolean status=rs.getBoolean("status");
					if (result == null) {
						result = new ArrayList<>();
					}
					result.add(new Category(cateID, cateName, status));
				}
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (cn != null) {
				cn.close();
			}
		}

		return result;
	}
	public String getMinPrice() throws ClassNotFoundException, SQLException {
		String result = null;
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			cn = MyConnection.getConnection();
			if (cn != null) {
				String sql="select min(price) as min from tblFood";
				pst = cn.prepareStatement(sql);
				rs = pst.executeQuery();
				if (rs.next()) {
					result=rs.getString("min");
				}
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (cn != null) {
				cn.close();
			}
		}

		return result;
	}
	public String getMaxPrice() throws ClassNotFoundException, SQLException {
		String result = null;
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			cn = MyConnection.getConnection();
			if (cn != null) {
				String sql="select max(price) as max from tblFood";
				pst = cn.prepareStatement(sql);
				rs = pst.executeQuery();
				if (rs.next()) {
					result=rs.getString("max");
				}
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (cn != null) {
				cn.close();
			}
		}

		return result;
	}
	
}
