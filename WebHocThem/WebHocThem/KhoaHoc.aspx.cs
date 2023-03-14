using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem
{
    public partial class KhoaHoc1 : System.Web.UI.Page
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int val = Convert.ToInt32(Request.QueryString["t"]);
                if (val == 1 || val == 2)
                {
                    if (!Request.IsAuthenticated)
                    {
                        Response.Redirect("/Login.aspx?url=" + Request.Url.AbsolutePath);
                        return;
                    }
                    try
                    {
                        var user = context.AspNetUserRoles.First(x => x.UserId == User.Identity.GetUserName());
                        if (user.RoleId == 1 || user.RoleId == 2)
                        {
                            ucKhoaHoc.ThemKH(true);
                            ucKhoaHoc.LvKhoaHoc1(true);
                            //Response.Write("<script>javascript:alert('Hãy nâng cấp tài khoản và thử lại !');window.location.href='Default.aspx';</script>");                    
                        }
                    }
                    catch (Exception)
                    {
                        Response.Redirect("/");
                    }
                    
                }
                else
                    ucKhoaHoc.LvKhoaHoc2(true);
            }
            catch (Exception)
            {
                ucKhoaHoc.LvKhoaHoc2(true);
            }
           

        }
    }
}