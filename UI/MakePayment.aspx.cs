using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;


namespace UTMALIS_ROLLNEY.UI
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        PaymentNotifier paymentnotifier = new PaymentReason("");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonMakePayment0_Click(object sender, EventArgs e)
        {
            Payment makepayment = new Payment();
            makepayment.addPayment(int.Parse(txtBoxPaymentID.Text), DropDownPaymentType.Text, DateTime.Parse(txtBoxPaymentDate.Text), float.Parse(txtBoxPaymentAmount.Text), int.Parse(DropDownReservationID.Text));
        }

        protected void ButtonClear0_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtBoxPaymentID.Text = txtBoxPaymentDate.Text = txtBoxPaymentAmount.Text = " ";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string message = "";

            //Attacth observer (Reservation) to its subject (PaymentNotifier)

            IReservation r = new IReservation(DropDownPaymentType.Text, float.Parse(txtBoxPaymentAmount.Text), int.Parse(txtBoxPaymentID.Text));

            paymentnotifier.Attach(r);

            paymentnotifier.notification = txtBoxObserver.Text;

            paymentnotifier.Notify();

            foreach (IReservation observer in paymentnotifier._Reservation)
            {
                message += observer._Message + Environment.NewLine;
                txtBoxNotify.Text = message + Environment.NewLine;
            }
        }

        protected void txtBoxNotify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtBoxPaymentAmount_TextChanged(object sender, EventArgs e)
        {

        }
    }
}