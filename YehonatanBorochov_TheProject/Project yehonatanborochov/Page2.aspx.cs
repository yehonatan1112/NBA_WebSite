﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //הגנה על הדף
        if (Session["user"] == null || Session["user"] == "")
        {
            Response.Redirect("AccessDenied.aspx");
        }
    }
}