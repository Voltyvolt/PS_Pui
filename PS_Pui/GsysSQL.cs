﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace PS_Pui
{
    public class GsysSQL
    {
        #region //Execute Data
        public static DataTable fncGetQueryData(string lvSQL, DataTable dt)
        {
            string query = lvSQL;
            DataTable DTReturn = new DataTable();
            MySqlDataAdapter DA = new MySqlDataAdapter(query, System.Configuration.ConfigurationManager.ConnectionStrings["PSConnection"].ToString());
            DA.Fill(DTReturn);

            return DTReturn;
        }
        public static string fncExecuteQueryData(string lvSQL)
        {
            string lvReturn = "";
            try
            {
                string query = lvSQL;
                MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["PSConnection"].ToString());
                MySqlCommand cmd = new MySqlCommand();

                cmd.Connection = con;
                con.Open();
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();

                con.Close();
                con.Dispose();

                lvReturn = "Success";
                return lvReturn;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        #endregion

        #region //Check Data
        public static string fncCheckLogin(string lvUser, string lvPass)
        {
            #region //Connect Database 
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["PSConnection"].ToString());
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataReader dr;
            #endregion  

            string lvReturn = "";

            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT * FROM SysUser WHERE us_UserID = '" + lvUser + "' AND us_Password = '" + lvPass + "' And us_Active = '1' ";
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lvReturn = dr["us_UserID"].ToString();
                    //GVar.gvFirstUrl = dr["us_URL"].ToString();
                    //GVar.gvKet = dr["us_Ket"].ToString();
                    //GVar.gvUserType = dr["us_Type"].ToString();
                }
            }
            dr.Close();
            con.Close();

            return lvReturn;
        }
        public static string fncCheckUser(string lvUser)
        {
            #region //Connect Database 
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["PSConnection"].ToString());
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataReader dr;
            #endregion  

            string lvReturn = "";

            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT us_UserID FROM SysUser WHERE us_UserID = '" + lvUser + "' ";
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lvReturn = dr["us_UserID"].ToString();
                }
            }
            dr.Close();
            con.Close();

            return lvReturn;
        }
        public static string fncCheckPass(string lvUser)
        {
            #region //Connect Database 
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["PSConnection"].ToString());
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataReader dr;
            #endregion  

            string lvReturn = "";

            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT us_Password FROM SysUser WHERE us_UserID = '" + lvUser + "' ";
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lvReturn = dr["us_Password"].ToString();
                }
            }
            dr.Close();
            con.Close();

            return lvReturn;
        }
        public static string fncCheckEmail(string lvUser)
        {
            #region //Connect Database 
            MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["PSConnection"].ToString());
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataReader dr;
            #endregion  

            string lvReturn = "";

            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT us_Email FROM SysUser WHERE us_UserID = '" + lvUser + "' ";
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lvReturn = dr["us_Email"].ToString();
                }
            }
            dr.Close();
            con.Close();

            return lvReturn;
        }
        #endregion
    }
}