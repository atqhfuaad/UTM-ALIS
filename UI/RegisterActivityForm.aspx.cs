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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewBind();
        }



        protected void ButtonAddActivity_Click(object sender, EventArgs e)
        {
            Activity activity = new Activity();
            activity.addActivity(txtBoxActivityID.Text, DateTime.Parse(txtBoxActivityDate.Text), txtBoxActivityName.Text, int.Parse(txtBoxMaxPerson.Text));
            GridActivity.DataBind();
        }


        protected void ButtonUpdateActivity_Click(object sender, EventArgs e)
        {
            Activity activity = new Activity();
            activity.updateActivity(DateTime.Parse(txtBoxActivityDate.Text), txtBoxActivityName.Text, int.Parse(txtBoxMaxPerson.Text), int.Parse(ActivityID.Value));
            GridActivity.DataBind();
        }

        protected void ButtonDeleteActivity_Click(object sender, EventArgs e)
        {
            Activity activity = new Activity();
            activity.deleteActivity(int.Parse(ActivityID.Value));
            GridActivity.DataBind();
        }

        protected void ActivityID_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ButtonHome_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtBoxActivityID.Text = txtBoxActivityDate.Text = txtBoxActivityName.Text = txtBoxMaxPerson.Text = " ";
        }

        protected void ButtonUTMALumni_Click(object sender, EventArgs e)
        {
            UserTypeFactory factory;
            factory = new AlumniFactory();

            var Discount = factory.CreateDiscount();
            var ReservationVenue = factory.CreateRVenue();

            TextBox1.Text = Discount.GetType().Name;
            TextBox2.Text = ReservationVenue.GetType().Name;
        }

        protected void ButtonNAlumni_Click(object sender, EventArgs e)
        {
            UserTypeFactory factory;
            factory = new NonAlumniFactory();

            var Discount = factory.CreateDiscount();
            var ReservationVenue = factory.CreateRVenue();

            TextBox1.Text = Discount.GetType().Name;
            TextBox2.Text = ReservationVenue.GetType().Name;
        }

        protected void GridActivity_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActivityID.Value = GridActivity.SelectedRow.Cells[1].Text;
            txtBoxActivityDate.Text = GridActivity.SelectedRow.Cells[2].Text;
            txtBoxActivityName.Text = GridActivity.SelectedRow.Cells[3].Text;
            txtBoxMaxPerson.Text = GridActivity.SelectedRow.Cells[4].Text;
        }

        protected void GridViewBind()
        {
            DataTable at = new DataTable();
            Activity d = new Activity();

            at = d.GetData();

            if (at.Rows.Count > 0)
            {
                GridActivity.DataSource = at;
                GridActivity.DataBind();
            }

        }
    }
}