/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import model.SanPham;

/**
 *
 * @author tranq
 */
public interface SanPhamDAO {
    public ArrayList<SanPham> getListByLoai(int maLoai, String isASC);
    public ArrayList<SanPham> getListByNSX(String nsx);
    public ArrayList<String> getListNSX();    
    public SanPham getSanPham(int maSP);
    public ArrayList<SanPham> getLastedList();
    public ArrayList<SanPham> getFullList();
    public ArrayList<SanPham> getListByPage(ArrayList<SanPham> list, int i);
    public ArrayList<SanPham> getSearchList(String name);
}
