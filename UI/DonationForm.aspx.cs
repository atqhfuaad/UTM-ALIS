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
    public partial class MakeDonationForm : System.Web.UI.Page
    {
        DonationNotifier donationnotifier = new DonationType("");
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewBind();
        }

        protected void ButtonMakeDonation_Click(object sender, EventArgs e)
        {
            Donation donation = new Donation();
            donation.addDonation(float.Parse(txtBoxDonationAmount.Text), txtBoxDonationID.Text);
            GridDonation.DataBind();
        }

        protected void ButtonUpdateDonation_Click(object sender, EventArgs e)
        {
            Donation donation = new Donation();
            donation.updateDonation(float.Parse(txtBoxDonationAmount.Text), int.Parse(DonationID.Value));
            GridDonation.DataBind();
        }

        protected void ButtonDeleteDonation_Click(object sender, EventArgs e)
        {
            Donation donation = new Donation();
            donation.deleteDonation(int.Parse(DonationID.Value));
            GridDonation.DataBind();
        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ButtonClear_Click1(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtBoxDonationAmount.Text = txtBoxDonationID.Text = DropDownDonation.Text = txtBoxNotify.Text = txtBoxAlumni.Text = " ";
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string message = "";

            //Attacth observer (Alumni) to its subject (DonationNotifier)

            AlumniStaff r = new AlumniStaff(txtBoxAlumni.Text, float.Parse(txtBoxDonationAmount.Text), int.Parse(txtBoxDonationID.Text));

            donationnotifier.Attach(r);

            donationnotifier.notification = DropDownDonation.Text;

            donationnotifier.Notify();

            foreach (AlumniStaff observer in donationnotifier._AlumniStaff)
            {
                message += observer._Message + Environment.NewLine;
                txtBoxNotify.Text = message + Environment.NewLine;
            }
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

        protected void DonationView_SelectedIndexChanged(object sender, EventArgs e)
        {
            DonationID.Value = GridDonation.SelectedRow.Cells[1].Text;
            txtBoxDonationAmount.Text = GridDonation.SelectedRow.Cells[2].Text;
        }
    }
}