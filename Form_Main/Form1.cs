﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Form_Main
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            pn_Chuyen.Height = btn_BanHang.Height;
            pn_Chuyen.Top = btn_BanHang.Top;
            uC_BanHang1.BringToFront();
        }


        #region Chuyển UserControl
        private void btn_BanHang_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_BanHang.Height;
            pn_Chuyen.Top = btn_BanHang.Top;
            uC_BanHang1.BringToFront();
        }

        private void btn_Loai_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_Loai.Height;
            pn_Chuyen.Top = btn_Loai.Top;
            uC_Loai1.BringToFront();
        }

        private void btn_SanPham_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_SanPham.Height;
            pn_Chuyen.Top = btn_SanPham.Top;
            uC_SanPham21.BringToFront();
        }

        private void btn_HoaDon_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_HoaDon.Height;
            pn_Chuyen.Top = btn_HoaDon.Top;
            uC_HoaDon1.BringToFront();
        }

        private void btn_KhachHang_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_KhachHang.Height;
            pn_Chuyen.Top = btn_KhachHang.Top;
            uC_KhachHang1.BringToFront();
        }

        private void btn_NhaCC_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_NhaCC.Height;
            pn_Chuyen.Top = btn_NhaCC.Top;
            uC_NhaCungCap1.BringToFront();
        }

        private void btn_NhanVien_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_NhanVien.Height;
            pn_Chuyen.Top = btn_NhanVien.Top;
            uC_NhanVien1.BringToFront();
        }

        private void btn_Quyen_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_Quyen.Height;
            pn_Chuyen.Top = btn_Quyen.Top;
            uC_Quyen1.BringToFront();
        }

        private void btn_User_Click(object sender, EventArgs e)
        {
            pn_Chuyen.Height = btn_User.Height;
            pn_Chuyen.Top = btn_User.Top;
            uC_UserProfile1.BringToFront();
        }
        #endregion

    }
}
