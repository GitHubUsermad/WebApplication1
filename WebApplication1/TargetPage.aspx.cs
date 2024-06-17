using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cookie が存在するか確認
            if (Request.Cookies["くっきー"] != null)
            {
                // Cookie を取得
                HttpCookie myCookie = Request.Cookies["くっきー"];

                // Cookie の値を読み取る
                string userName = myCookie["UserName"];
                string theme = myCookie["Theme"];

                // 取得した値を使用
                Response.Write("UserName: " + userName);
                Response.Write("Theme: " + theme);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}