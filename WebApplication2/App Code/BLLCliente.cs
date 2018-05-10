using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class BLLCliente
    {
        DAL DAL = new DAL(); 

        public int idCliente { get; set; }
        public string Nome { get; set; }
        public string Endereco { get; set; }
        public int NumeroEnd { get; set; }
        public int Telefone { get; set; }
        public string Email { get; set; }
        

        public void cadastrarCliente()
        {
            string sql = "INSERT INTO cliente(idCliente, nome, endereco, numero, telefone, email)" +
                            "VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}');";
            sql = string.Format(sql, idCliente, Nome, Endereco, NumeroEnd, Telefone, Email);
            DAL.ExecutarComandoSQL(sql);
        }

        public DataTable retFromCliente()
        {            
            return DAL.RetDataTable("select * from cliente;");
        }       
    }
}