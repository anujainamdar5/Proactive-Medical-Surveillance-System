using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WebApplication5
{
    public class DialogState
    {
        public DialogResult result;
            public FileDialog dialog;
            public void ThreadProcShowDialog()
        {
            result = dialog.ShowDialog();
        }
            }
}