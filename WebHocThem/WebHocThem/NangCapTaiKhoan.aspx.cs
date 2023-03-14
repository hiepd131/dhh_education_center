using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem
{
    public partial class NangCapTaiKhoan : System.Web.UI.Page
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.IsAuthenticated)
            {
                Response.Redirect("/Login.aspx?url=" + Request.Url.AbsolutePath);
                return;
            }
            try
            {
                var user = context.Users.First(x => x.ID == Context.User.Identity.GetUserName());
            }
            catch (Exception)
            {
                Response.Write("<script>javascript:alert('Vui lòng thêm thông tin cho tài khoản trước khi Nâng cấp tài khoản!');</script>");
                ucNangCapTaiKhoan.Panel(false);
            }
        }
    }
}