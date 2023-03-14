using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucChamThi : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        DiemThi diem = new DiemThi();
        protected void Page_Load(object sender, EventArgs e)
        {
            //context.DiemThis.First(x => x.NgayThi == Convert.ToDateTim e(theLabel.Text));
            //Response.Write("<script>javascript:alert('.........................');</script>");
        }
    }
}