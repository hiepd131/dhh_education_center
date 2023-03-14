using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucKhoaHoc : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            SuccessMessage.Text = "";
            ErrorMessage.Text = "";
        }

        public void CreateKH_Click(object sender, EventArgs e)
        {
            try
            {
                KhoaHoc khoaHoc = new KhoaHoc();
                khoaHoc.TenKhoaHoc = input_tenkhoa.Value;
                
                khoaHoc.MonHoc = Convert.ToInt32(input_monhoc.Value);
                khoaHoc.Levels = Convert.ToInt32(input_levels.Value);
                khoaHoc.NgayKhaiGiang = Convert.ToDateTime(input_date1.Value);
                khoaHoc.NgayKetThuc = Convert.ToDateTime(input_date2.Value);
                khoaHoc.MoTa = input_mota.Value;
                khoaHoc.HocPhi = Convert.ToInt32(input_hocphi.Value);
                khoaHoc.HinhAnh = input_file.Value;
                AspNetUserRole role = context.AspNetUserRoles.First(x => x.UserId == Context.User.Identity.GetUserName());
                if (role.RoleId==1)
                {
                    khoaHoc.GiaoVien1 = Context.User.Identity.GetUserName();
                }
                else
                {
                    khoaHoc.GiaoVien1 = null;
                    //Response.Write("<script>javascript:alert('Không thể thêm lớp của khóa học khác');</script>");
                }
                try
                {
                    context.KhoaHocs.InsertOnSubmit(khoaHoc);
                    context.SubmitChanges();
                    SuccessMessage.Text = "Thêm khóa học thành công !";
                }
                catch (Exception)
                {
                    ErrorMessage.Text = "Thêm khóa học thất bại !";
                    //Response.Write("<script>javascript:alert('Thêm khóa học thất bại !');</script>");
                }
            }
            catch (Exception)
            {
                ErrorMessage.Text = "Thêm khóa học thất bại !";
            }



        }

        public void LvKhoaHoc2(bool val)
        {
            ListView2.Visible = val;
        }

        public void ThemKH(bool val)
        {
            themKH.Visible = val;
        }

        public void LvKhoaHoc1(bool val)
        {
            ListView1.Visible = val;
        }
    }
}