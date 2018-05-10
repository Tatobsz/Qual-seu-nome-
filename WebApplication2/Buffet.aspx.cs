using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Buffet : System.Web.UI.Page
    {
        BLLCliente BLLCliente = new BLLCliente();

        protected void Page_Load(object sender, EventArgs e)
        {
            Cliente();
        }

        private void Cliente()
        {
            GridView1.DataSource = BLLCliente.retFromCliente();
            GridView1.DataBind();
        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            BLLCliente.idCliente = int.Parse(TxtIdCliente.Text);
            BLLCliente.Nome = TxtNome.Text;
            BLLCliente.Endereco = TxtEndereco.Text;
            BLLCliente.NumeroEnd = int.Parse(TxtNumeroEnd.Text);
            BLLCliente.Email = TxtEmail.Text;
            BLLCliente.Telefone= int.Parse(TxtTelefone.Text);
            BLLCliente.cadastrarCliente();
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCarregar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

        }   
    }
}