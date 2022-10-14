using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helpers
{
    public class MetodosCompartidos
    {
        public bool soloNumeros(string cadena)
        {
            foreach (char caracter in cadena)
            {
                if (!(char.IsNumber(caracter))) return false;

            }
            return true;
        }

        public bool soloNumerosDecimales(string cadena)
        {
            foreach (char caracter in cadena)
            {
                if (caracter != ',' && !char.IsNumber(caracter))
                    return false;

            }
            return true;
        }

        public bool soloLetrasYNumeros(string cadena)
        {
            bool bandera = false;
            foreach (char caracter in cadena)
            {
                bandera = false;
                if (char.IsLetter(caracter) || char.IsNumber(caracter))
                    bandera = true;

            }
            return bandera;
        }

        //public void formatoMoneda(TextBox xTbox)
        //{
        //    if (xTbox.Text == string.Empty)
        //    {
        //        return;
        //    }
        //    else if (!soloNumeros(xTbox.Text))
        //    {
        //        return;
        //    }
        //    else
        //    {
        //        decimal monto;
        //        monto = decimal.Parse(xTbox.Text);
        //        xTbox.Text = monto.ToString("N2");
        //    }
        //}
    }
}
