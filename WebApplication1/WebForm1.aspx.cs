using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) /*ロードはクライアント側,毎回通る*/
        {
            if (!IsPostBack)
            {
                HttpCookie myCookie = new HttpCookie("くっきー");
                myCookie["UserName"] = Label2.Text;
                myCookie["Theme"] = "Dark";

                myCookie.Expires = DateTime.Now.AddMinutes(10);
                Response.Cookies.Add(myCookie);

                Label2.Text = "今日のAぇ! group占い";
                Label1.Text = "今日相性がいいメンバーを占います";
                Button1.Text = "占う";
                HyperLink1.Text = "Aぇ! gourp";
            } else {
                Label2.Text = "あなたが今日相性のいいメンバーは・・・";
            }

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
            if (Request.Cookies["くっきー"] != null)
            { 
                
                // 既存の Cookie
                HttpCookie myCookie = Request.Cookies["くっきー"];

                // 新しい値を設定
                myCookie["Theme"] = "Light";

                // 有効期限を更新（さらに 1 週間延長）
                myCookie.Expires = DateTime.Now.AddMinutes(10);

                // クライアントに更新された Cookie を送信
                Response.Cookies.Add(myCookie);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string userInput = TextBox.Text;
            //Label2.Text = userInput + "さんの登録が完了しました。";

            //Response.Redirect("https://www.universal-music.co.jp/aegroup/"); //レスポンスダイレクト
            //Server.Transfer("TargetPage.aspx"); //サーバートランスファー

            Button1.Text = "もう一回占う！";
            var rand = new Random();//乱数発生
            int randomNumber = rand.Next(1, 6);

            if (randomNumber == 1)
            {
                Label1.Text = "末澤誠也です";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "ポイント：今日は神戸に行って高い声で「A BIGINNING」を歌いましょう";
                HyperLink1.Text = "末澤誠也ってどんな人・・・？";
                Server.Transfer("TargetPage.aspx"); //サーバートランスファー
            }
            else if (randomNumber == 2) 
            {
                Label1.Text = "草間リチャード敬太です";
                Label1.ForeColor = System.Drawing.Color.Yellow;
                Label3.Text = "ポイント：ラッキーアイテムは千枚漬け！京都へ行ってはんなり過ごしましょう";
                HyperLink1.Text = "草間リチャード敬太ってどんな人・・・？";
            } else if (randomNumber == 3) 
            {
                Label1.Text = "正門良則です";
                Label1.ForeColor = System.Drawing.Color.Blue;
                Label3.Text = "ポイント：とりあえず早起きして散歩しよう！";
                HyperLink1.Text = "正門良則ってどんな人・・・？";
            } else if (randomNumber == 4) 
            {
                Label1.Text = "小島健です";
                Label1.ForeColor = System.Drawing.Color.Purple;
                Label3.Text = "ポイント：自分が持っている服の中で一番奇抜な恰好をして、でかい顔して歩いてみよう！";
                HyperLink1.Text = "小島健ってどんな人・・・？";
            } else
            {
                Label1.Text = "佐野晶哉です";
                Label1.ForeColor = System.Drawing.Color.Green;
                Label3.Text = "ポイント：何か音楽に触れてみよう！お兄さんがいる人は要注意、、、";
                HyperLink1.Text = "佐野晶哉ってどんな人・・・？";
            } 
        //    switch (randomNumber)
        //    {
        //        case1: Label3.Text = "末澤誠也です";break;
        //case2: Label3.Text = "草間リチャード敬太です";
        //case3: Label3.Text = "正門良則です";
        //case4: Label3.Text = "小島健です";
        //case5: Label3.Text = "佐野晶哉です";
        //}
        }


        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}