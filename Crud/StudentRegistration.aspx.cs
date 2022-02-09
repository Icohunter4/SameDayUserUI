using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crud
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string phoneNo = txtPhoneNo.Text;
                string password = txtPassword.Text;
                string dob = txtDOB.Text;
                string doa = txtDOA.Text;
                string address = txtAddress.Text;
                string course = ddlcourse.SelectedItem.Text;
                string gender = rdbGenderList.SelectedItem.Value;


                string connectionString = ConfigurationManager.AppSettings["DevConnectionString"].ToString();
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spInstertStudent";
                com.Parameters.Add("@Name", SqlDbType.NVarChar).Value = name;
                com.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
                com.Parameters.Add("@PhoneNo", SqlDbType.NVarChar).Value = phoneNo;
                com.Parameters.Add("@Address", SqlDbType.NVarChar).Value = address;
                com.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;
                com.Parameters.Add("@DOB", SqlDbType.NVarChar).Value = dob;
                com.Parameters.Add("@DOA", SqlDbType.NVarChar).Value = doa;
                com.Parameters.Add("@Course", SqlDbType.NVarChar).Value = course;
                com.Parameters.Add("@Gender", SqlDbType.NVarChar).Value = gender;
                com.ExecuteNonQuery();





            }
            catch (Exception ex)
            {

            }

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}