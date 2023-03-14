using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHocThem.Models;

namespace WebHocThem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        WebHocThemDataContext context = new WebHocThemDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //imgGV1.Src = context.P_GV1().Select(a=>a.HinhAnh).ToString();/*context.P_GV1().Select(a => a.TenUser).ToString()*/
            try
            {
                imgGV1.Src = context.P_GV1().Single().HinhAnh;
                txtGV1.Text = context.P_GV1().Single().TenUser + " (" + context.P_GV1().Single().SL + ")";
                if (context.P_GV1().Single().GioiTinh)
                {
                    txtGT1.Text = "Mr. ";
                }
                else txtGT1.Text = "Ms. ";
                txtSDT1.Text = "Số điện thoại: 0" + context.P_GV1().Single().SDT;
            }
            catch (Exception)
            {
                Panel1.Visible = false;
            }

            try
            {
                imgGV2.Src = context.P_GV2().Single().HinhAnh;
                txtGV2.Text = context.P_GV2().Single().TenUser + " (" + context.P_GV2().Single().SL + ")";
                if (context.P_GV2().Single().GioiTinh)
                {
                    txtGT2.Text = "Mr. ";
                }
                else txtGT2.Text = "Ms. ";
                txtSDT2.Text = "Số điện thoại: 0" + context.P_GV2().Single().SDT;
            }
            catch (Exception)
            {
                Panel2.Visible = false;

            }

            try
            {
                imgGV3.Src = context.P_GV3().Single().HinhAnh;
                txtGV3.Text = context.P_GV3().Single().TenUser + " (" + context.P_GV3().Single().SL + ")";
                if (context.P_GV3().Single().GioiTinh)
                {
                    txtGT3.Text = "Mr. ";
                }
                else txtGT3.Text = "Ms. ";
                txtSDT3.Text = "Số điện thoại: 0" + context.P_GV3().Single().SDT;
            }
            catch (Exception)
            {
                Panel3.Visible = false;

            }

            try
            {
                imgGV4.Src = context.P_GV4().Single().HinhAnh;
                txtGV4.Text = context.P_GV4().Single().TenUser + " (" + context.P_GV4().Single().SL + ")";
                if (context.P_GV4().Single().GioiTinh)
                {
                    txtGT4.Text = "Mr. ";
                }
                else txtGT4.Text = "Ms. ";
                txtSDT4.Text = "Số điện thoại: 0" + context.P_GV4().Single().SDT;
            }
            catch (Exception)
            {
                Panel4.Visible = false;

            }

            try
            {
                imgKH1.Src = context.P_KH1().Single().HinhAnh;
                txtKH1.Text = context.P_KH1().Single().TenKhoaHoc + " (" + context.P_KH1().Single().SL + ")";
                linkKH1.HRef = "LopHocKH.aspx?kh=" + context.P_KH1().Single().ID + "&mh=" + context.P_KH1().Single().MonHoc + "&lv=" + context.P_KH1().Single().Levels;
            }
            catch (Exception)
            {
                PanelKH1.Visible = false;
                
            }

            try
            {
                imgKH2.Src = context.P_KH2().Single().HinhAnh;
                txtKH2.Text = context.P_KH2().Single().TenKhoaHoc + " (" + context.P_KH2().Single().SL + ")";
                linkKH2.HRef = "LopHocKH.aspx?kh=" + context.P_KH2().Single().ID + "&mh=" + context.P_KH2().Single().MonHoc + "&lv=" + context.P_KH2().Single().Levels;
            }
            catch (Exception)
            {
                PanelKH2.Visible = false;

            }

            try
            {
                imgKH3.Src = context.P_KH3().Single().HinhAnh;
                txtKH3.Text = context.P_KH3().Single().TenKhoaHoc + " (" + context.P_KH3().Single().SL + ")";
                linkKH3.HRef = "LopHocKH.aspx?kh=" + context.P_KH3().Single().ID + "&mh=" + context.P_KH3().Single().MonHoc + "&lv=" + context.P_KH3().Single().Levels;
            }
            catch (Exception)
            {
                PanelKH3.Visible = false;

            }
            
        }

        protected void ResetForm_Click(object sender, EventArgs e)
        {
            form_email.Value = null;
            form_name.Value = null;
            form_phonenumber.Value = null;
            form_content.Value = null;
        }

        public void NopDon_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = new ApplicationUser() { UserName = form_email.Value, Email = form_email.Value };
            //user.EmailConfirmed = true;
            if (IFile.HasFile)
            {
                var tenFile = Path.GetFileName(IFile.FileName);
                var path = Path.Combine(Server.MapPath("~"), tenFile);
                IFile.SaveAs(path);
                //file.SaveAs(Server.MapPath(Path.Combine("~/images", tenFile)));
                //p.img = file.FileName;
            }
            //user.HinhAnh = "images/" + input_img.FileName;
            IdentityResult result = manager.Create(user, "Abc123~");
            
            if (result.Succeeded)
            {
                PhieuDangKy pdk = new PhieuDangKy();
                pdk.NoiDungDK = form_email.Value;
                pdk.NgayDK = DateTime.Now;
                context.PhieuDangKies.InsertOnSubmit(pdk);
                User usr = new User();
                usr.ID = form_email.Value;
                usr.SDT = form_phonenumber.Value;
                usr.TenUser = form_name.Value;
                context.Users.InsertOnSubmit(usr);
                context.SubmitChanges();

                SendMail.SendEmail(user.UserName,"Xác nhận tuyển dụng","Xin chào "+form_name.Value+", Chúng tôi đã nhận được đơn ứng tuyển của bạn, chúng tôi sẽ xem xét và liên hệ lại cho bạn trong thời gian sớm nhất, dưới đây là CV mà chúng tôi đã nhận được nếu có sai sót hãy liên hệ lại với chúng tôi để cập nhật thông tin của bạn chính xác nhất",MapPath(IFile.FileName));
                Response.Write("<script>javascript:alert('Nộp đơn thành công, Một email vừa được gửi đến bạn hãy kiểm tra thông tin của bạn trong Email');</script>");
                ResetForm_Click(sender, e);
            }
            else
            {
                ResetForm_Click(sender, e);
                Response.Write("<script>javascript:alert('Bạn đã đăng ký ứng tuyển rồi hãy kiểm tra lại thông tin của bạn trong Email và chờ phản hồi từ chúng tôi');</script>");
            }
        }
    }
}