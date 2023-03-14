using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucKyThiCA : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    ListViewItem row = ListView1.Items[e.ItemIndex];
            //    TextBox txtCaThi = (row.FindControl("CaThiTextBox") as TextBox); // null
            //    Label lblLopThi = (row.FindControl("LopThiLabel1") as Label);
            //    Label lblNgayThi = (row.FindControl("NgayThiLabel1") as Label);
            //    context.ExecuteCommand("UPDATE KyThi SET CaThi = {0} WHERE NgayThi = {1} AND LopThi = {2}", txtCaThi.Text, lblNgayThi.Text, lblLopThi.Text);
            //}
            //catch (Exception)
            //{

            //    Response.Write("<script>javascript:alert('Hãy nhập đúng ca thi');</script>");
            //}
        }
    }
}