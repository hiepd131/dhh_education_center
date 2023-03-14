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
    public partial class Manage : System.Web.UI.Page
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
                var user = context.AspNetUserRoles.First(x => x.UserId == User.Identity.GetUserName());
                if (user != null && user.RoleId == 2)
                {
                    ucManage.CapQuyen(true);
                    ucManage.ThemTT(false);
                }
            }
            catch (Exception)
            {

                return;
            }
           
        }
    }
}