/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tranq
 */
public class SanPham {
    private int maSP;
    private Loai loaiSP;
    private String tenSP;
    private float giaBan;
    private int soLuong;
    private String xuatSu;
    private String nsx;
    private String moTa;
    private String imgURL;    

    public int getMaSP() {
        return maSP;
    }

    public Loai getLoaiSP() {
        return loaiSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public float getGiaBan() {
        return giaBan;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public String getXuatSu() {
        return xuatSu;
    }

    public String getNsx() {
        return nsx;
    }

    public String getMoTa() {
        return moTa;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public void setLoaiSP(Loai loaiSP) {
        this.loaiSP = loaiSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public void setGiaBan(float giaBan) {
        this.giaBan = giaBan;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public void setXuatSu(String xuatSu) {
        this.xuatSu = xuatSu;
    }

    public void setNsx(String nsx) {
        this.nsx = nsx;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public SanPham() {
    }

    public SanPham(int maSP, Loai loaiSP, String tenSP, float giaBan, int soLuong, String xuatSu, String nsx, String moTa, String imgURL) {
        this.maSP = maSP;
        this.loaiSP = loaiSP;
        this.tenSP = tenSP;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
        this.xuatSu = xuatSu;
        this.nsx = nsx;
        this.moTa = moTa;
        this.imgURL = imgURL;
    }
    
    
}
