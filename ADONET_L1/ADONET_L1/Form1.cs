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
            this.ordersTableAdapter.Fill(this.dataSet1.Orders);
            this.usersTableAdapter.Fill(this.dataSet1.Users);
            this.productTableAdapter.Fill(this.dataSet1.Product);
        }

        private void Save_Btn_Click(object sender, EventArgs e)
        {
            productTableAdapter.Update(dataSet1.Product);
        }
    }
}
