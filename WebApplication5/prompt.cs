using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Threading;

namespace WebApplication5
{
    public static class prompt
    {
        
        public static string ShowDialog(string text, string caption)
        {
            Form prompt = new Form()
            {
                Width = 500,
                Height = 150,
                FormBorderStyle = FormBorderStyle.FixedDialog,
                Text = caption,
                StartPosition = FormStartPosition.CenterScreen
            };
            Label textLabel = new Label() { Left = 50, Top = 20, Width = 300, Text = text, TextAlign = System.Drawing.ContentAlignment.MiddleCenter, };
            //TextBox textBox = new TextBox() { Left = 50, Top = 50, Width = 400 };
            Button yes = new Button() { Text = "Yes", Left = 250, Width = 100, Top = 70, DialogResult = DialogResult.Yes };
            Button no = new Button() { Text = "No", Left = 350, Width = 100, Top = 70, DialogResult = DialogResult.No };
            yes.Click += (sender, e) => { prompt.Close(); };
            no.Click += (sender, e) => { prompt.Close(); };
            //prompt.Controls.Add(textBox);
            prompt.Controls.Add(yes);
            prompt.Controls.Add(no);
            prompt.Controls.Add(textLabel);
            prompt.AcceptButton = yes;
            prompt.AcceptButton = no;
            return prompt.ShowDialog() == DialogResult.Yes ? "Yes" : "No";

        }

        public static void Alert(string text)
        {
            Form prompt = new Form()
            {
                Width = 500,
                Height = 150,
                FormBorderStyle = FormBorderStyle.FixedDialog,
                Text = "Error",
                StartPosition = FormStartPosition.CenterScreen
            };
            Label textLabel = new Label() { Left = 50, Top = 20, Width = 300, Text = text, TextAlign = System.Drawing.ContentAlignment.MiddleCenter, };
            //TextBox textBox = new TextBox() { Left = 50, Top = 50, Width = 400 };
            Button ok = new Button() { Text = "OK", Left = 250, Width = 100, Top = 70, DialogResult = DialogResult.Yes };
            // Button no = new Button() { Text = "No", Left = 350, Width = 100, Top = 70, DialogResult = DialogResult.No };
            ok.Click += (sender, e) => { prompt.Close(); };
            prompt.Controls.Add(ok);
            prompt.Controls.Add(textLabel);
            prompt.AcceptButton = ok;
            prompt.ShowDialog();

        }

        public static void form_status(string text)
        {
            Form prompt = new Form()
            {
                Width = 500,
                Height = 150,
                FormBorderStyle = FormBorderStyle.FixedDialog,
                Text = "Status",
                StartPosition = FormStartPosition.CenterScreen
            };
            Label textLabel = new Label() { Left = 50, Top = 20, Width = 300, Text = text, TextAlign = System.Drawing.ContentAlignment.MiddleCenter, };
            //TextBox textBox = new TextBox() { Left = 50, Top = 50, Width = 400 };
            Button ok = new Button() { Text = "OK", Left = 250, Width = 100, Top = 70, DialogResult = DialogResult.Yes };
            // Button no = new Button() { Text = "No", Left = 350, Width = 100, Top = 70, DialogResult = DialogResult.No };
            ok.Click += (sender, e) => { prompt.Close(); };
            prompt.Controls.Add(ok);
            prompt.Controls.Add(textLabel);
            prompt.AcceptButton = ok;
            prompt.ShowDialog();

        }

        public static DialogResult STAShowDialog(FileDialog dialog)
        {
            DialogState state = new DialogState();
            state.dialog = dialog;
            System.Threading.Thread t = new System.Threading.Thread(state.ThreadProcShowDialog);
            t.SetApartmentState(System.Threading.ApartmentState.STA);
            t.Start();
            t.Join();
            return state.result;
        }

        public static string Browse()
        {
           
        OpenFileDialog fdlg = new OpenFileDialog();
            fdlg.Title = "Choose the file location";
            // fdlg.InitialDirectory = @"c:\";
            // fdlg.Filter = "Text files (*.txt)|*.txt|All files (*.*)|*.*";
            fdlg.Filter = "Pdf Files|*.pdf";
               var x= STAShowDialog(fdlg).ToString();
                if (x == DialogResult.OK.ToString())
                {
                    return fdlg.FileName.ToString();
                }
                else
                    return " ";
          
        }
    }
}