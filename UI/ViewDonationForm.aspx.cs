using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using System.Data;
using System.Data.SqlClient;

namespace UTMALIS_ROLLNEY.UI
{
    public partial class ViewDonation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewBind();
        }

        protected void ButtonHome_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonDonationForn_Click(object sender, EventArgs e)
        {

        }

        protected void GridViewBind()
        {
            DataTable dt = new DataTable();
            Donation d = new Donation();

            dt = d.GetData();

            if (dt.Rows.Count > 0)
            {
                GridDonation.DataSource = dt;
                GridDonation.DataBind();
            }

        }

        protected void GridDonation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}