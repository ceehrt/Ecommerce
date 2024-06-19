using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using Ecommerce.Admin;
using System.Runtime.Remoting.Lifetime;
using System.Security.Principal;

namespace Ecommerce.Helpers
{

    public static class DbHelper
    {
        static string connectionString = WebConfigurationManager.ConnectionStrings["EcommerceDB"].ConnectionString;
        static SqlConnection connection = new SqlConnection(connectionString);


        public static void CreateUser(string name, string surname, string mobile, string email, string password)
        {
            // Create a new user
            string insertQuery = @"
    INSERT INTO Users (Name, Lastname, Mobile, Email, Address, PostCode, Password, ImageUrl, RoleId, CreatedDate, AccountID)
    VALUES (@Name, @Lastname, @Mobile, @Email, @Address, @PostCode, @Password, @ImageUrl, @RoleId, @CreatedDate, @AccountID);
";

            SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
            insertCommand.Parameters.AddWithValue("@Name", name);
            insertCommand.Parameters.AddWithValue("@Lastname", surname);
            insertCommand.Parameters.AddWithValue("@Mobile", mobile);
            insertCommand.Parameters.AddWithValue("@Email", email);
            insertCommand.Parameters.AddWithValue("@Address", "");
            insertCommand.Parameters.AddWithValue("@PostCode", "");
            insertCommand.Parameters.AddWithValue("@Password", password);
            insertCommand.Parameters.AddWithValue("@ImageUrl", "");
            insertCommand.Parameters.AddWithValue("@RoleId", "2");
            insertCommand.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
            insertCommand.Parameters.AddWithValue("@AccountID", email);

            connection.Open();
            insertCommand.ExecuteNonQuery();
            connection.Close();

        }


        public static Ecommerce.Models.User GetUserById(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Users WHERE UserId = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", int.Parse(id));
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return new Ecommerce.Models.User
                        {
                            UserId = int.Parse(reader["UserId"].ToString()),
                            Name = reader["Name"].ToString()
                        };
                    }
                    connection.Close();
                }
            }
            return null;
        }

        public static string GetStatus(int id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Orders WHERE Tracking = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["Status"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }

        public static string GetAccount(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Users WHERE AccountID = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["AccountID"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }
        public static string GetPassword(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Users WHERE Password = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["Password"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }

        public class UserAuthentication
        {
            public const string USERNAME = "1";
            public const string PASSWORD = "1234";
            //public static bool SignUp(string name, string userName, string password)
            //{
            //    // Verify password length
            //    if (password.Length < 8 || password.Length > 16)
            //    {
            //        Console.WriteLine("Password must be in the range of 8-16 characters.");
            //        return false;
            //    }

            //    Regex regex = new Regex("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]+");
            //    if (!regex.IsMatch(password))
            //    {
            //        Console.WriteLine("Password must contain alphanumeric characters and at least 1 special symbol.");
            //        return false;
            //    }

            //    return true;
            //}



            public static bool Login(string userName, string password)
            {

                if (userName == DbHelper.GetAccount(userName) && password == DbHelper.GetPassword(password))
                {
                    return true;
                }

                //Console.WriteLine("Entered wrong Account ID or Password! Please re-enter again.");
                return false;


            }

            //public static void Main(string[] args)
            //{
            //        Example usage:
            //    if (SignUp("GEEKSFORGEEKS", USERNAME, "Geeks12"))
            //        {
            //            Console.WriteLine("Account Created Successfully.");
            //        }

            //        if (Login(USERNAME, "1"))
            //    {
            //        Console.WriteLine("Log In Successful.");
            //    }
            //}
        }
        public static string TrackingP(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Track WHERE TrackingNo = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["Pdate"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }
        public static string TrackingS(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Track WHERE TrackingNo = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["Sdate"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }
        public static string TrackingD(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Track WHERE TrackingNo = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["Ddate"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }
        public static string GetName(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM Users WHERE AccountID = @Id";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Read data from the reader (e.g., reader["ColumnName"])
                        return reader["Name"].ToString();
                    }
                    connection.Close();
                }
            }
            return null;
        }
    }
}