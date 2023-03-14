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

namespace WebHocThem.UserControls
{
    public partial class ucManage : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //input_.Value = Request.QueryString["id"];
            ////input_date.Value = DateTime.Now.ToString();
            input_email1.Value = Context.User.Identity.GetUserName();
            ErrorMessage.Text = "";
            if (!IsPostBack) { 
            try
            {
                var user = context.Users.First(x => x.ID == input_email1.Value);
                if (user != null)
                {
                    input_name.Value = user.TenUser;
                    input_phone.Value = user.SDT;
                    if(user.GioiTinh) 
                        input_gender1.Checked = true;
                    else input_gender0.Checked = true;
                    input_address.Value = user.DiaChi;
                    Image1.ImageUrl = "/"+user.HinhAnh;
                }
            }
            catch (Exception)
            {
                
            } }
        }
        public void ThemTT(bool val)
        {
            Infor.Visible=val;
        }

        public void CapQuyen (bool val)
        {
            capQuyen.Visible = val;
        }


        public void CreateUser_Click(object sender, EventArgs e)
        {
            User user = new User();
            bool check = false;

            if (input_gender1.Checked)
            {
                check = true;
            }
            if (input_gender0.Checked)
            {
                check = false;
            }
            user.ID = input_email1.Value;
            user.SDT = input_phone.Value;
            user.TenUser = input_name.Value;
            user.DiaChi = input_address.Value;
            user.GioiTinh = check;
            //HttpPostedFile file = Request.Files["input_img"];
            if (input_img.HasFile)
            {
                var tenFile = Path.GetFileName(input_img.FileName);
                var path = Path.Combine(Server.MapPath("~/images"), tenFile);
                input_img.SaveAs(path);
                //file.SaveAs(Server.MapPath(Path.Combine("~/images", tenFile)));
                //p.img = file.FileName;
            }
            user.HinhAnh = "images/" + input_img.FileName;
            try
            {
                context.Users.InsertOnSubmit(user);
                context.SubmitChanges();
                SuccessMessage.Text = "Thêm thông tin thành công";
            }
            catch (Exception)
            {
                if (context.ExecuteCommand("Update Users set SDT = {0},TenUser={1}, DiaChi={2}, GioiTinh={3}, HinhAnh={4}  Where ID = {5}", user.SDT, user.TenUser, user.DiaChi, user.GioiTinh, user.HinhAnh, user.ID) > 0)
                {
                    SuccessMessage.Text = "Cập nhật thông tin thành công";
                }
                else
                {
                    ErrorMessage.Text = "Cập nhật thông tin thất bại";
                }
            }
            //Response.Redirect("~/");
        }

        public void btnSave_Click(object sender, EventArgs e)
        {
            WebHocThemDataContext context = new WebHocThemDataContext();
            AspNetUserRole role = new AspNetUserRole();
            role.UserId = input_email2.Value;
            role.RoleId = Convert.ToInt32(input_role.Value);
            try
            {
                context.AspNetUserRoles.InsertOnSubmit(role);
                context.SubmitChanges();
                SuccessMessage.Text = "Cấp quyền truy cập thành công";
            }
            catch (Exception)
            {
                {
                    if(context.ExecuteCommand("Update AspNetUserRoles set RoleId = {0} Where UserId = {1}",role.RoleId,role.UserId) >0)
                        SuccessMessage.Text = "Cập nhật quyền thành công";
                    else
                        ErrorMessage.Text = "Cập nhật quyền thất bại";
                }
            }
            //AspNetUserRole roles = context.AspNetUserRoles.First(x => x.UserId == role.UserId);
            //roles.RoleId = role.RoleId;
            //SuccessMessage.Text = "Cấp quyền truy cập thành công";

        }

        //protected void UpdateButton1_Click(object sender, ListViewItemEventArgs e)
        //{
        //    //if (e.Item.ItemType == ListViewItemType.DataItem)
        //    //{
        //    //    ListViewDataItem item = e.Item.DataItem as ListViewDataItem;
        //    //    CheckBox xn = item.FindControl("XacNhanCheckBox") as CheckBox;
        //    //    xn.Checked = true;
        //    //}
        //    if (e.Item.ItemType == ListViewItemType.DataItem)
        //    {
        //        ListViewDataItem item = e.Item.DataItem as ListViewDataItem;
        //        CheckBox xn = item.FindControl("XacNhanCheckBox") as CheckBox;
        //        xn.Checked = true;
        //    }
        //    //string info = (((ListViewDataItem)e.Item).DataItem as Lis)["ProductName"].ToString();
        //}

        protected void ListView1_ItemUpdated(object sender, ListViewItemEventArgs e)
        {

            if(ListView1.SelectedIndex != -1)
            {
                CheckBox xn = e.Item.FindControl("XacNhanCheckBox") as CheckBox;
                Label lb = e.Item.FindControl("NoiDungDKLabel") as Label;

                try
                {
                    var user = context.AspNetUsers.First(x=>x.UserName == lb.Text);
                    user.EmailConfirmed = xn.Checked;
                    //user.Email = "CapNhat";
                    if (xn.Checked == true)
                    {
                        context.SubmitChanges();
                        SendMail.SendEmail(user.UserName, "Thông báo trúng tuyển", "Xin chào " + user.Email + ", Chúc mừng bạn đã đăng ký ứng tuyển thành công vào DHH CENTER, Hãy sử dụng tài khoản " + user.UserName + " với mật khẩu là Abc123~ để truy cập vào website của chúng tôi","");
                    }
                    else
                    {
                        context.SubmitChanges();
                    }

                }
                catch (Exception)
                {

                }
            }
        }

        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            //ListViewItem lvwItem = ListView1.EditItem;
            ListView1.SelectedIndex = e.NewEditIndex;

        //CheckBox tempLB = (CheckBox)lvwItem.FindControl("XacNhanCheckBox");

        //if (ListView1.SelectedIndex == -1)
        //{
        //    CheckBox xn = lvwItem.FindControl("XacNhanCheckBox") as CheckBox;
        //    if (xn.Checked == true)
        //    {

        //    }
        //}
        }
    }
}