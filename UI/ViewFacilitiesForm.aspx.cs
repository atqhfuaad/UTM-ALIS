using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using System.Data.SqlClient;
using System.Data;

namespace UTMALIS_ROLLNEY.UI
{
    public partial class ViewFacilities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewBind();
        }


        protected void GridViewBind()
        {
            DataTable dt = new DataTable();
            Facility d = new Facility();

            dt = d.GetData();

            if (dt.Rows.Count > 0)
            {
                GridFacility.DataSource = dt;
                GridFacility.DataBind();
            }

        }

        protected void ButtonMakeReservationPage_Click(object sender, EventArgs e)
        {

        }

        protected void GridFacility_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}