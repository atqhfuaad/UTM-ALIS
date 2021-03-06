///////////////////////////////////////////////////////////
//  Donation.cs
//  Implementation of the Class Donation
//  Generated by Enterprise Architect
//  Created on:      29-Dec-2020 11:08:45 AM
//  Original author: 0wner
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Business;
using UTMALIS_ROLLNEY.DLL.UTMALISDataSetTableAdapters;
using System.Data;

namespace Business
{
    public class Donation
    {

        private float Donateamount;
        private int DonationID;

        public Donation()
        {

        }

        ~Donation()
        {

        }

        /// 
        /// <param name="Donateamount"></param>
        /// <param name="DonationID"></param>

        public DataTable GetData()
        {
            DonationTableAdapter dta = new DonationTableAdapter();
            DataTable dt = new DataTable();
            dt = dta.GetData();
            return dt;
        }

        public void addDonation(float Donateamount, string DonationID)
        {
            DonationTableAdapter dta = new DonationTableAdapter();
            dta.addDonation(Donateamount, int.Parse(DonationID));
        }

        public void updateDonation(float Donateamount, int Original_DonationID)
        {
            DonationTableAdapter dta = new DonationTableAdapter();
            dta.updateDonation(Donateamount, Original_DonationID);
        }

        public void deleteDonation(int Original_DonationID)
        {
            DonationTableAdapter dta = new DonationTableAdapter();
            dta.deleteDonation(Original_DonationID);
        }


    }//end Donation

    abstract class DonationNotifier
    {
        private string _notification;
        private List<AlumniStaff> _alumnis = new List<AlumniStaff>();


        public DonationNotifier(string notification)
        {
            _notification = notification;
        }

        public void Attach(AlumniStaff alumnistaff)
        {
            _alumnis.Add(alumnistaff);
        }

        public void Detach(AlumniStaff alumnistaff)
        {
            _alumnis.Remove(alumnistaff);
        }

        public void Notify()
        {

            foreach (AlumniStaff alumnistaff in _alumnis)
            {
                alumnistaff.Update(this);

            }
        }

        public string notification
        {
            get { return _notification; }
            set
            {
                if (_notification != value)
                {
                    _notification = value;

                }
            }
        }

        public List<AlumniStaff> _AlumniStaff
        {
            get { return _alumnis; }
        }
    }//Alumni Donatiom


    ///<summary>
    ///The ConcreteSubject class
    ///</summary>
    class DonationType : DonationNotifier
    {
        public DonationType(string type) : base(type)
        {
        }
    }

    /// <summary>
    /// The Observer interface
    /// </summary>
    interface IAlumniStaff
    {
        void Update(DonationNotifier donationnotifier);
    }

    /// <summary>
    /// The ConcreteObserver class
    /// </summary>
    class AlumniStaff : IAlumniStaff
    {
        private string _name;
        private float _donationamount;
        private int _donationid;
        private string _message;

        public AlumniStaff(string name, float donationamount, int donationid)
        {
            _ = name;
            _donationamount = donationamount;
            _donationid = donationid;
            _message = "";
        } // constructor

        public void Update(DonationNotifier donationnotifier)
        {
            _message = $"Notified UTM Alumni Staff, {_name} have donated RM {_donationamount} (Donation ID: {_donationid}) were donated  " +
                       $"as  {donationnotifier.notification:C}" + Environment.NewLine;

            _message += "Dear Alumni, " + _name + " You will receive 10 points for your Alumni Point, Thank You!" + Environment.NewLine;

        }//Update

        public string _Message
        {
            get { return _message; }
        }

    }//class DonationID

}//end namespace Business

