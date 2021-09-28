///////////////////////////////////////////////////////////
//  Activity.cs
//  Implementation of the Class Activity
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
    public class Activity
    {

        private DateTime Activitydate;
        private string Activityname;
        private int Maxperson;
        private string ActivityID;
        private int Original_ActivityID;

        public Activity()
        {

        }

        ~Activity()
        {

        }

        /// 
        /// <param name="ActivityID"></param>
        /// <param name="Activitydate"></param>
        /// <param name="Activityname"></param>
        /// <param name="Maxperson"></param>

        public DataTable GetData()
        {
            ActivityTableAdapter ata = new ActivityTableAdapter();
            DataTable at = new DataTable();
            at = ata.GetData();
            return at;
        }

        public void addActivity(string ActivityID, DateTime Activitydate, string Activityname, int Maxperson)
        {
            ActivityTableAdapter dta = new ActivityTableAdapter();
            dta.addActivity((Activitydate).ToString(), Activityname, Maxperson, int.Parse(ActivityID));
        }

        public void updateActivity(DateTime Activitydate, string Activityname, int Maxperson, int Original_ActivityID)
        {
            ActivityTableAdapter dta = new ActivityTableAdapter();
            dta.updateActivity((Activitydate).ToString(), Activityname, Maxperson, Original_ActivityID);
        }

        public void deleteActivity(int Original_ActivityID)
        {
            ActivityTableAdapter dta = new ActivityTableAdapter();
            dta.deleteActivity(Original_ActivityID);
        }


    }//end Activity


    /// An abstract product.
    /// </summary>
    public abstract class Discount { }

    /// <summary>
    /// An abstract product.
    /// </summary>
    public abstract class ReservationVenue { }

    /// <summary>
    /// The Abstract Factory class, which defines methods for creating abstract objects.
    /// </summary>
    public abstract class UserTypeFactory
    {
        public abstract Discount CreateDiscount();
        public abstract ReservationVenue CreateRVenue();
    }

    /// <summary>
    /// A concrete product
    /// </summary>
    public class Off10 : Discount { }

    /// <summary>
    /// A concrete product
    /// </summary>
    class Unlimited : ReservationVenue { }


    /// <summary>
    /// A concrete factory which creates concrete objects by implementing the abstract factory's methods.
    /// </summary>
    public class AlumniFactory : UserTypeFactory
    {
        public override Discount CreateDiscount()
        {
            return new Off10();
        }

        public override ReservationVenue CreateRVenue()
        {
            return new Unlimited();
        }
    }

    /// <summary>
    /// A concrete product
    /// </summary>
    public class Off5 : Discount { }

    /// <summary>
    /// A concrete product
    /// </summary>
    public class Limited : ReservationVenue { }

    /// <summary>
    /// A concrete factory which creates concrete objects by implementing the abstract factory's methods.
    /// </summary>
    public class NonAlumniFactory : UserTypeFactory
    {
        public override Discount CreateDiscount()
        {
            return new Off5();
        }

        public override ReservationVenue CreateRVenue()
        {
            return new Limited();
        }
    }
    //}

}//end namespace Business