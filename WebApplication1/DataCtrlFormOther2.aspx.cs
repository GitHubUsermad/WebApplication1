using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DataCtrlFormOther2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = Request.Params["index"];// Http Getパラメータの取得
                //識別IDを使って判別、クエリ文字列から値を取得
            }
        }
    }
}