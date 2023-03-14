using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucGiangVien : System.Web.UI.UserControl
    {
        //public string ProcessMyDataItem(object myValue)
        //{
        //    if (myValue == null)
        //    {
        //        return "0 %"";
        //    }
        //    else
        //    {
        //        if (Convert.ToInt32(myValue) < 50)
        //            return "0";
        //        else
        //            return myValue.ToString() + "%";
        //    }

        //}
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            SuccessMessage.Text = "";
            ErrorMessage.Text = "";
            input_khoa.Value = Request.QueryString["kh"];
            input_monhoc.Value = Request.QueryString["mh"];
            input_levels.Value = Request.QueryString["lv"];
        }

        public void CreateLH_Click(object sender, EventArgs e)
        {
            try
            {
                Lop lop = new Lop();
                KhoaHoc khoaHoc = new KhoaHoc();
                lop.TenLop = input_tenlop.Value;
                lop.SoLuong = Convert.ToInt32(input_soluong.Value);
                lop.MonHoc = Convert.ToInt32(input_monhoc.Value);
                lop.Levels = Convert.ToInt32(input_levels.Value);
                lop.KhoaHoc = Convert.ToInt32(input_khoa.Value);
                lop.WD = input_wd.Value;
                lop.SoBuoiHoc = Convert.ToInt32(input_sobuoi.Value);
                try
                {
                    var user = context.AspNetUserRoles.First(x=>x.UserId== Context.User.Identity.GetUserName());
                    khoaHoc = context.KhoaHocs.First(x => x.ID == lop.KhoaHoc && x.MonHoc == lop.MonHoc && x.Levels == lop.Levels);
                    if (khoaHoc.GiaoVien1 == Context.User.Identity.GetUserName() || user.RoleId == 2 )
                    {
                        try
                        {
                            context.Lops.InsertOnSubmit(lop);
                            context.SubmitChanges();
                            SuccessMessage.Text = "Thêm lớp học thành công !";
                        }
                        catch (Exception)
                        {
                            ErrorMessage.Text = "Thêm lớp học thất bại !";
                        }
                    }
                    else
                    {
                        Response.Write("<script>javascript:alert('Không thể thêm lớp của khóa học khác');</script>");
                    }
                }
                catch (Exception)
                {
                    Response.Write("<script>javascript:alert('Không tìm thấy khóa học');</script>");
                }

            }
            catch (Exception)
            {

                Response.Write("<script>javascript:alert('Thêm lớp học thất bại !');</script>");
            }
            
            
        }

        public void ThemLH(bool val)
        {
            themLH.Visible=val;
        }

        public void LvLopHoc(bool val)
        {
            lvLopHoc.Visible=val;
        }
    }
}