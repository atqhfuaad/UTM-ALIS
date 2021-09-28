using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using System.Data;

namespace UTMALIS_ROLLNEY.UI
{
    public partial class ViewActivityForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewBind();
        }

        protected void ButtonManageActivityPage_Click(object sender, EventArgs e)
        {

        }

        protected void GridViewBind()
        {
            DataTable dt = new DataTable();
            Activity d = new Activity();

            dt = d.GetData();

            if (dt.Rows.Count > 0)
            {
                GridActivity.DataSource = dt;
                GridActivity.DataBind();
            }

        }

        protected void GridActivity_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}