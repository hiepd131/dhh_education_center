using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucTuyenDungDK : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            input_lop.Value = Request.QueryString["lop"];
            input_date.Value = DateTime.Now.ToString();
            input_email.Value = Context.User.Identity.GetUserName();
            input_describe.Value = "UngTuyen";
            if (!IsPostBack)
            {
                try
                {
                    var pdk = context.PhieuDangKies.First(x => x.Lop == Convert.ToInt32(input_lop.Value) && x.Users == input_email.Value && x.BienLai == null && x.XacNhan == false);
                    Response.Write("<script>javascript:alert('Bạn đã đăng kí ứng tuyển cho lớp " + pdk.Lop + " vui lòng chờ xác nhận');</script>");
                    //btnRegister.Text = "Cập nhật đăng ký";
                    btnRegister.Enabled = false;
                }
                catch (Exception)
                {

                }
            }
            ErrorMessage.Text = "";
        }

        public void CreatePDK_Click(object sender, EventArgs e)
        {
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //manager.FindByEmail(input_email.Value);
            PhieuDangKy phieuDangKy = new PhieuDangKy();
            phieuDangKy.Lop = Convert.ToInt32(input_lop.Value);
            phieuDangKy.Users = input_email.Value;
            phieuDangKy.NoiDungDK = input_describe.Value;
            phieuDangKy.NgayDK = Convert.ToDateTime(input_date.Value);
            context.PhieuDangKies.InsertOnSubmit(phieuDangKy);
            context.SubmitChanges();
            SuccessMessage.Text = "Đăng kí ứng tuyển thành công";
            //var pdk = context.PhieuDangKies.First(x => x.Lop == Convert.ToInt32(input_lop.Value) && x.Users == input_email.Value && x.BienLai == null && x.XacNhan == false);
            //if (pdk == null)
            //{
            //    context.PhieuDangKies.InsertOnSubmit(phieuDangKy);
            //    context.SubmitChanges();
            //    SuccessMessage.Text = "Đăng kí ứng tuyển thành công";
            //}
            //else
            //{
            //    pdk.NoiDungDK = phieuDangKy.NoiDungDK;
            //    context.SubmitChanges();
            //    SuccessMessage.Text = "Cập nhật nội dung thành công";
            //}
            //phieuDangKy.BienLai = Convert.ToInt32(input_bienlai.Value);
            //context.PhieuDangKies.InsertOnSubmit(phieuDangKy);
        }
    }
}