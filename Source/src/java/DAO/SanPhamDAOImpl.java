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
import model.SanPham;

/**
 *
 * @author tranq
 */
public class SanPhamDAOImpl implements SanPhamDAO{

    @Override
    public ArrayList<SanPham> getListByLoai(int maLoai, String isASC) {
        Connection conn = dataConnect.getConnection();
        String sql;
        if(isASC.compareTo("true")==0)
        {
            sql = "SELECT * FROM SANPHAM WHERE maLoai = '" + maLoai + "' ORDER BY giaBan ASC";
        }
        else
        {
            sql = "SELECT * FROM SANPHAM WHERE maLoai = '" + maLoai + "' ORDER BY giaBan DESC";
        }
        ArrayList<SanPham> resList = new ArrayList<SanPham>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                SanPham newSanPham = new SanPham();
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),"");
                newSanPham.setMaSP(Integer.parseInt(rs.getString("maSP")));
                newSanPham.setTenSP(rs.getString("tenSP"));
                newSanPham.setGiaBan(Float.parseFloat(rs.getString("giaBan")));
                newSanPham.setSoLuong(Integer.parseInt(rs.getString("soLuong")));
                newSanPham.setXuatSu(rs.getString("xuatSu"));
                newSanPham.setMoTa(rs.getString("moTa"));
                newSanPham.setNsx(rs.getString("nhaSanXuat"));
                newSanPham.setImgURL(rs.getString("hinhAnh"));
                resList.add(newSanPham);
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }

    @Override
    public ArrayList<SanPham> getListByNSX(String nsx) {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT * FROM SANPHAM WHERE nhaSanXuat = '" + nsx + "'";
        ArrayList<SanPham> resList = new ArrayList<SanPham>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                SanPham newSanPham = new SanPham();
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),"");
                newSanPham.setMaSP(Integer.parseInt(rs.getString("maSP")));
                newSanPham.setTenSP(rs.getString("tenSP"));
                newSanPham.setGiaBan(Float.parseFloat(rs.getString("giaBan")));
                newSanPham.setSoLuong(Integer.parseInt(rs.getString("soLuong")));
                newSanPham.setXuatSu(rs.getString("xuatSu"));
                newSanPham.setMoTa(rs.getString("moTa"));
                newSanPham.setNsx(rs.getString("nhaSanXuat"));
                newSanPham.setImgURL(rs.getString("hinhAnh"));
                resList.add(newSanPham);
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }

    @Override
    public ArrayList<String> getListNSX() {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT DISTINCT nhaSanXuat FROM SANPHAM";
        ArrayList<String> resList = new ArrayList<String>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {               
                resList.add(rs.getString(1));
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }

    @Override
    public SanPham getSanPham(int maSP) {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT * FROM SANPHAM WHERE maSP=" + maSP;
        SanPham resSanPham = new SanPham();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {                             
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),"");
                resSanPham.setLoaiSP(newLoai);
                resSanPham.setMaSP(Integer.parseInt(rs.getString("maSP")));
                resSanPham.setTenSP(rs.getString("tenSP"));
                resSanPham.setGiaBan(Float.parseFloat(rs.getString("giaBan")));
                resSanPham.setSoLuong(Integer.parseInt(rs.getString("soLuong")));
                resSanPham.setMoTa(rs.getString("moTa"));
                resSanPham.setXuatSu(rs.getString("xuatSu"));
                resSanPham.setNsx(rs.getString("nhaSanXuat"));
                resSanPham.setImgURL(rs.getString("hinhAnh"));
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resSanPham;
    }

    @Override
    public ArrayList<SanPham> getLastedList() {
       Connection conn = dataConnect.getConnection();
        String sql = "SELECT TOP(10) * FROM SANPHAM ORDER BY ngayNhan DESC";
        ArrayList<SanPham> resList = new ArrayList<SanPham>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                SanPham newSanPham = new SanPham();
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),"");
                newSanPham.setMaSP(Integer.parseInt(rs.getString("maSP")));
                newSanPham.setTenSP(rs.getString("tenSP"));
                newSanPham.setGiaBan(Float.parseFloat(rs.getString("giaBan")));
                newSanPham.setSoLuong(Integer.parseInt(rs.getString("soLuong")));
                newSanPham.setXuatSu(rs.getString("xuatSu"));
                newSanPham.setMoTa(rs.getString("moTa"));
                newSanPham.setNsx(rs.getString("nhaSanXuat"));
                newSanPham.setImgURL(rs.getString("hinhAnh"));
                resList.add(newSanPham);
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }

    @Override
    public ArrayList<SanPham> getFullList() {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT * FROM SANPHAM";
        ArrayList<SanPham> resList = new ArrayList<SanPham>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                SanPham newSanPham = new SanPham();
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),"");
                newSanPham.setMaSP(Integer.parseInt(rs.getString("maSP")));
                newSanPham.setTenSP(rs.getString("tenSP"));
                newSanPham.setGiaBan(Float.parseFloat(rs.getString("giaBan")));
                newSanPham.setSoLuong(Integer.parseInt(rs.getString("soLuong")));
                newSanPham.setXuatSu(rs.getString("xuatSu"));
                newSanPham.setMoTa(rs.getString("moTa"));
                newSanPham.setNsx(rs.getString("nhaSanXuat"));
                newSanPham.setImgURL(rs.getString("hinhAnh"));
                resList.add(newSanPham);
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }

    @Override
    public ArrayList<SanPham> getListByPage(ArrayList<SanPham> list, int i) {
        ArrayList<SanPham> resList = new ArrayList<SanPham>();
        int s = list.size();
        int start = 8 * i;
        int end;        
        
        if(s - start - 1 < 8)
        {
            end = s;
        }
        else
        {
            end = 8 + start;
        }
        
        for(int j = start; j < end; j++)
        {
            resList.add(list.get(j));
        }
        
        return resList;
    }

    @Override
    public ArrayList<SanPham> getSearchList(String name) {
        Connection conn = dataConnect.getConnection();
        String sql = "SELECT * FROM SANPHAM WHERE tenSP LIKE '%" + name + "%'";
        ArrayList<SanPham> resList = new ArrayList<SanPham>();
        
        try
        {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                SanPham newSanPham = new SanPham();
                Loai newLoai = new Loai(Integer.parseInt(rs.getString("maLoai")),"");
                newSanPham.setMaSP(Integer.parseInt(rs.getString("maSP")));
                newSanPham.setTenSP(rs.getString("tenSP"));
                newSanPham.setGiaBan(Float.parseFloat(rs.getString("giaBan")));
                newSanPham.setSoLuong(Integer.parseInt(rs.getString("soLuong")));
                newSanPham.setXuatSu(rs.getString("xuatSu"));
                newSanPham.setMoTa(rs.getString("moTa"));
                newSanPham.setNsx(rs.getString("nhaSanXuat"));
                newSanPham.setImgURL(rs.getString("hinhAnh"));
                resList.add(newSanPham);
            }
            
            conn.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resList;
    }    
   
}
