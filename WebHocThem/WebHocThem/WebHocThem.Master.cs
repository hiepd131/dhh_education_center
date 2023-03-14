using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem
{
    public partial class WebHocThem : System.Web.UI.MasterPage
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected string Name { get; set; }
        protected int? Role { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                this.Name = manager.GetEmail(Context.User.Identity.GetUserId());
                var urole = context.AspNetUserRoles.First(x=>x.UserId == Context.User.Identity.GetUserName());
                this.Role = urole.RoleId;
                //string email = manager.GetEmail(Con.User.Identity.GetUserId());
            }
            catch (Exception)
            {
            }

            try
            {
                var user = context.AspNetUserRoles.First(x => x.UserId == Context.User.Identity.GetUserName());
                if (user.RoleId == 1 || user.RoleId == 2)
                {
                    TuyenDung.Visible = true;
                    TTKB.Visible = true;
                    XLT.Visible = true;
                    TKH.Visible = true;
                    CDT.Visible = true;
                    //Response.Write("<script>javascript:alert('Hãy nâng cấp tài khoản và thử lại !');window.location.href='Default.aspx';</script>");                    
                }
                //else Response.Write("<script>javascript:alert('Hãy nâng cấp tài khoản và thử lại !');</script>");
            }
            catch (Exception)
            {
                //Response.Write("<script>javascript:alert('Hãy nâng cấp tài khoản và thử lại !');</script>");
            }
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
    }
}