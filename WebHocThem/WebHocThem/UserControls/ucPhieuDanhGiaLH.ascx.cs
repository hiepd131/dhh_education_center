using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucPhieuDanhGiaLH : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            input_pdk.Value = Request.QueryString["pdk"];
            ErrorMessage.Text = "";
            try
            {
                var pdg = context.PhieuDanhGias.First(x => x.PhieuDangKy == Convert.ToInt32(input_pdk.Value));
                input_ddg.Value = pdg.DiemDG.ToString();
                input_noidung.Value = pdg.NoiDungDG;
                btnRegister.Text = "Sửa đánh giá";
            }
            catch (Exception)
            {

            }}
        }
        public void CreatePDG_Click(object sender, EventArgs e)
        {
            WebHocThemDataContext context = new WebHocThemDataContext();
            PhieuDanhGia pdg = new PhieuDanhGia();
            pdg.DiemDG = Convert.ToInt32(input_ddg.Value);
            pdg.NoiDungDG = input_noidung.Value;
            pdg.PhieuDangKy = Convert.ToInt32(input_pdk.Value);
            try
            {
                context.PhieuDanhGias.InsertOnSubmit(pdg);
                context.SubmitChanges();
                SuccessMessage.Text = "Đánh giá thành công";
            }
            catch (Exception)
            {
                //WebHocThemDataContext context1 = new WebHocThemDataContext();
                //PhieuDanhGia pdg1 = context1.PhieuDanhGias.First(x=>x.PhieuDangKy == pdg.PhieuDangKy);
                //pdg1.DiemDG = pdg.DiemDG;
                //pdg1.NoiDungDG = pdg.NoiDungDG;
                //try
                //{
                //    context1.SubmitChanges();
                //    SuccessMessage.Text = "Cập nhật đánh giá thành công";
                //}
                //catch (Exception)
                //{
                //    ErrorMessage.Text = "Cập nhật đánh giá thất bại";
                //}
                if (context.ExecuteCommand("Update PhieuDanhGia set DiemDG ={0}, NoiDungDG = {1} Where PhieuDangKy = {2}", pdg.DiemDG, pdg.NoiDungDG, pdg.PhieuDangKy) > 0)
                {
                    SuccessMessage.Text = "Cập nhật đánh giá thành công";
                    //Response.Write("<script>javascript:alert('"+pdg.NoiDungDG+"');</script>");
                }
                else
                {
                    ErrorMessage.Text = "Cập nhật đánh giá thất bại";
                }
            }
        }
    }
}