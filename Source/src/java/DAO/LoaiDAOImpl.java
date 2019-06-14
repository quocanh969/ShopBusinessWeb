/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connect.dataConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Loai;

/**
 *
 * @author tranq
 */
public class LoaiDAOImpl implements LoaiDAO{

    @Override
    public ArrayList<Loai> getListLoai() {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT * FROM LOAI";
        ArrayList<Loai> resList = new ArrayList<Loai>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),rs.getString("tenLoai"));
                resList.add(newLoai);
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }

    @Override
    public Loai getLoai(int maLoai) {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT * FROM LOAI WHERE maLoai = '" + maLoai + "'";
        Loai resLoai = new Loai();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            // Kiểm tra có tìm được không ?
            while(rs.next())
            {
                resLoai.setMaLoai(Integer.parseInt(rs.getString("maLoai")));
                resLoai.setTenLoai(rs.getString("tenLoai"));
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resLoai;
    }
    
}
