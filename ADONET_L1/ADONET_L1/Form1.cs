using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ADONET_L1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'snusDB.Product' table. You can move, or remove it, as needed.
            this.productTableAdapter.Fill(this.snusDB.Product);

        }

        private void Save_Btn_Click(object sender, EventArgs e)
        {
            productTableAdapter.Update(snusDB.Product);
        }
    }
}
