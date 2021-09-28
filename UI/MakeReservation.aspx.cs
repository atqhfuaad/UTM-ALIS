using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using UTMALIS_ROLLNEY.DLL.UTMALISDataSetTableAdapters;
using System.Data.SqlClient;
using System.Data;

namespace UTMALIS_ROLLNEY.UI
{
    public partial class MakeReservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewBind();
            GridViewBind1();

        }

        protected void ButtonMakeReservation_Click(object sender, EventArgs e)
        {
            Reservation reservation = new Reservation();
            reservation.addReservation(DropDownPackage.Text, DateTime.Parse(txtBoxReservationDate.Text), txtBoxReservationID.Text, int.Parse(DropDownFacilityID.Text));
            GridReservation.DataBind();
        }

        protected void TextBoxFacilityID_TextChanged(object sender, EventArgs e)
        {
        }



        protected void ButtonHome_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtBoxReservationDate.Text = txtBoxReservationID.Text = " ";
        }

        protected void ButtonPackage_Click(object sender, EventArgs e)
        {
            var p = DropDownPackage.SelectedItem.Value;
            Facilities facilities;
           // facilities = new SportFacilities();
            //var package = facilities.CreatePackage();
            //var equipment1 = facilities.CreateEquipment();
            //var equipment2 = facilities.CreateEquipment2();
            //TextBoxPackage.Text = "Package: " +  package.GetType().Name + equipment1.GetType().Name + Environment.NewLine + equipment2.GetType().Name;

            switch (p)
            {
                case "Package A":
                    facilities = new SportFacilities();
                    var package = facilities.CreatePackage();
                    var equipment1 = facilities.CreateEquipment();
                    var equipment2 = facilities.CreateEquipment2();
                    TextBoxPackage.Text = "Package: " + package.GetType().Name + " " + equipment1.GetType().Name + " & " + equipment2.GetType().Name;
                    TextBoxDisc.Text = "25%";
                    break;

                case "Package B":
                    facilities = new HallFacilities();
                    var package2 = facilities.CreatePackage();
                    var equipment1a = facilities.CreateEquipment();
                    var equipment2a = facilities.CreateEquipment2();
                    TextBoxPackage.Text = "Package: " + package2.GetType().Name + " " + equipment1a.GetType().Name + " & " + equipment2a.GetType().Name + " Set";
                    TextBoxDisc.Text = "25%";
                    break;

                case "Package C":
                    facilities = new ComputerFacilities();
                    var package3 = facilities.CreatePackage();
                    var equipment1b = facilities.CreateEquipment();
                    var equipment2b = facilities.CreateEquipment2();
                    TextBoxPackage.Text = "Package: " + package3.GetType().Name + " " + equipment1b.GetType().Name + " & " + equipment2b.GetType().Name + " Set";
                    TextBoxDisc.Text = "25%";
                    break;

                case "Package D":
                    facilities = new CourtFacilities();
                    var package4 = facilities.CreatePackage();
                    var equipment1c = facilities.CreateEquipment();
                    var equipment2c = facilities.CreateEquipment2();
                    TextBoxPackage.Text = "Package: " + package4.GetType().Name + " " + equipment1c.GetType().Name + " & " + equipment2c.GetType().Name + " Set";
                    TextBoxDisc.Text = "25%";
                    break;

                case "No Package":
                    TextBoxDisc.Text = "10%";
                    break;
            }
        }

        protected void GridFacility_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridReservation_SelectedIndexChanged(object sender, EventArgs e)
        {

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

        protected void GridViewBind1()
        {
            DataTable rt = new DataTable();
            Reservation d = new Reservation();

            rt = d.GetData();

            if (rt.Rows.Count > 0)
            {
                GridReservation.DataSource = rt;
                GridReservation.DataBind();
            }

        }
    }
}