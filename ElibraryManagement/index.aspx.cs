﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["role"] == null)
                Session["role"] = "";
            if (!(Session["role"].Equals("admin") || Session["role"].Equals("user")))
                Session["role"] = "";
        }
    }
}