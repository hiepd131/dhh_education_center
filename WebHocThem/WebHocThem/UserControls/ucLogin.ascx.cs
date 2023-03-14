using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucLogin : System.Web.UI.UserControl
    {
        //WebHocThemDataContext context;

        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //////////////var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
            if (!IsPostBack)
            {
            input_email.Value = "";
            input_password.Value = "";

            }
        }

        public void LogIn(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
                var user = manager.FindByName(input_email.Value);

                if (user != null)
                {
                    if (!user.EmailConfirmed)
                    {
                        Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
                        FailureText.Text = "Đăng nhập thất bại. Bạn cần xác thực tài khoản email trước.";
                        ErrorMessage.Visible = true;
                    }
                    else
                    {
                        var result = signinManager.PasswordSignIn(input_email.Value, input_password.Value, true, shouldLockout: false);

                        switch (result)
                        {

                            case SignInStatus.Success:
                                IdentityHelper.RedirectToReturnUrl(Request.QueryString["url"], Response);
                                break;
                            case SignInStatus.LockedOut:
                                Response.Redirect("/Account/Lockout");
                                break;
                            case SignInStatus.RequiresVerification:
                                Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                                Request.QueryString["ReturnUrl"],
                                                                true),
                                                  true);
                                break;
                            case SignInStatus.Failure:
                            default:
                                FailureText.Text = "Mật khẩu không chính xác";
                                ErrorMessage.Visible = true;
                                break;
                        }
                    }
                }
                else if(input_email.Value.Equals("") || input_password.Value.Equals(""))
                {
                    Response.Write("<script>javascript:alert('Tài khoản và mật khẩu không được để trống');</script>");
                }
                else if(!input_email.Value.Equals("") && user==null)
                {
                    Response.Write("<script>javascript:alert('Tài khoản " + input_email.Value + " không tồn tại');</script>");
                }
                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true

            }
        }
    }
}