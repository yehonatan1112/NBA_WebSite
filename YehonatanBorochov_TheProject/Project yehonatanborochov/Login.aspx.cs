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

public partial class SimpleLogin : System.Web.UI.Page
{
    //משתנה לשגיאות שיוצג  מתחת לטופס
    public string errors = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";//שם הקובץ
       // string tableName = "support";//שם הטבלה

        if (Request.Form["submit"] != null)
        { // הטופס נשלח
            string email = Request.Form["email"];
            string password = Request.Form["password"];


            string selectQuery = "SELECT * FROM personalData WHERE email = '";
            selectQuery += email + "' AND password = '" + password + "'";


            //בדיקה האם קיימות רשומות
            if (MyAdoHelper.IsExist(fileName, selectQuery))
            { // המשתמש קיים באתר והסיסמה נכונה

                DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);

                Session["email"] = table.Rows[0]["email"];
                Session["user"] = (string)table.Rows[0]["fName"] + " " + (string)table.Rows[0]["lName"] + " " + (string)table.Rows[0]["email"] + " " + (string)table.Rows[0]["age"] + " " + (string)table.Rows[0]["favoriteTeam"];
                Session["favoriteTeam"] = (string)table.Rows[0]["favoriteTeam"];

               Session["isAdmin"] = null;//איתחול מנהל - לא נבדק עדיין
                if ((bool)table.Rows[0]["isAdmin"] == true)//אם הערך במסד של מנהל הוא אמת
                // if (table.Rows[0]["isAdmin"] == "true")//!!!!!!!!!!!!!!
                {
                    Session["isAdmin"] = true;//נשים ערך אמת
                    //    // אפשר היה לשים כל ערך אחר
                    //    //לדוגמה
                    //    //Session["isAdmin"] = "yes";
                    //    // בראש כל עמוד מוגן נבדוק ערך זה
                   // Response.Redirect("SimpleProtectedPage.aspx");//מנהל יועבר לדף מוגן
                    Response.Redirect("HomePage.aspx");
                }
                Response.Redirect("HomePage.aspx");//משתמש רגיל יועבר לדף ראשי
            }
            else
            { // המשתמש לא קיים באתר או שהסיסמה שגויה
                errors += "שם המשתמש או הסיסמה אינם נכונים.";
            }
        }
    }
}
