///////////////////////////////////////////////////////////
//  Non-Alumni.cs
//  Implementation of the Class Non-Alumni
//  Generated by Enterprise Architect
//  Created on:      29-Dec-2020 11:08:45 AM
//  Original author: 0wner
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



using Business;
namespace Business {
	public class NonAlumni {

		private string Email;
		private string Name;
		private int Phone;
		private Business.Reservation m_Reservation;

		public NonAlumni(){

		}

		~NonAlumni(){

		}

		public Reservation Reservation{
			get{
				return m_Reservation;
			}
			set{
				m_Reservation = value;
			}
		}

	}//end Non-Alumni

}//end namespace Business