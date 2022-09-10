using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class SimpleProtectedPage : System.Web.UI.Page
{   public string userMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        //המעבר לעמוד זה  לאחר הקלדת שם וססמה
        //הדבק שורות הגנה כגון אלה על כל דף עליו תרצה להגן
        //בראש כל דף מוגן 
        if (Session["isAdmin"] == null || (bool)Session["isAdmin"] != true)
        {
          //ניתן להציג הודעה או להעביר לעמוד בו הודעה
           //userMsg=("כניסה למנהל בלבד");
            Response.Redirect("AccessDenied.aspx");
           
        }

        //מכאן יופיע קוד מוגן בלבד 
        else
        {
            userMsg=(" דף מנהל - ברוך הבא - שים לב לשינוי בתפריט");
           
        }
    }
}
