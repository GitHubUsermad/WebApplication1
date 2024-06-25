using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)/*最初の読み込みの場合*/
                {
                string connStr = ConfigurationManager.ConnectionStrings["KensyuConnectionString"].ConnectionString;
                //KensyuConnectionStringという名前の接続文字列を取得→connStrに格納　コネクション情報
                string selectSql = "select * from Employee";
                //Employeeの表から全部表示（SQL情報）

                SqlDataAdapter sqlAdapter = new SqlDataAdapter(selectSql, connStr);　//SQLとコネクション情報を使ってアダプタ作成
                DataTable datTbl = new DataTable(); //データセットの作成
                sqlAdapter.Fill(datTbl); //形式変換、反映　ここで接続！？
                //非接続型

                //GridView1.DataSource = datTbl;
                GridView1.PageIndex = 0;
                GridView1.AllowPaging = true;
                GridView1.PageSize = 10;
                GridView1.DataKeyNames = new string[] { "EmpId" };  //名前付け、次のページで識別できるように
                GridView1.DataBind();  //GridViewコントロールにデータを表示する
            }
        }
            
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Label1.Text = GridView1.SelectedValue.ToString(); //取得文字を文字列に変えてtextに追加
            //string url = "DataCtrlFormOther2.aspx?index=" + Label1.Text.Trim();　
            //ラベル1（次のページ内）のtextプロパティから値を取得、前後空白削除、
            //Response.Redirect(url);//上記urlに移動
            //GridView1.Rows.Add();

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}