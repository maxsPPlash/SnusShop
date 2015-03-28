using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace zallop1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            DataSet mds = new DataSet();

            SqlConnection c = new SqlConnection(Properties.Settings.Default.SnusSiteDbConnectionString);
            c.Open();
            SqlDataAdapter a = new SqlDataAdapter("SELECT * FROM dbo.Product", c);

            a.Fill(mds, "Product");

            DataTable t = mds.Tables[0];

            dataGridView1.DataSource = t;
        }
    }
}
