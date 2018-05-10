using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;


namespace WebApplication2
{
    public class DAL
    {
        private string server = "localhost";
        private string database = "mybuffet";
        private string user = "root";
        private string password = "";
        private string connectionString = "Server = {0}; Database = {1}; Uid = {2}; Pwd = {3}; SslMode=none";
        private MySqlConnection connection;

        public DAL()
        {
            connectionString = string.Format(connectionString, server, database, user, password);
            connection = new MySqlConnection(connectionString);
            connection.Open();
        }

        public DataTable RetDataTable(string sql)
        {
            DataTable dataTable = new DataTable();
            MySqlCommand mySqlCommand = new MySqlCommand(sql, connection);
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter(mySqlCommand);
            dataAdapter.Fill(dataTable);
            return dataTable;
        }

        public void ExecutarComandoSQL(string sql)
        {
            MySqlCommand command = new MySqlCommand(sql, connection);
            command.ExecuteNonQuery();
        }                
    }
}
    