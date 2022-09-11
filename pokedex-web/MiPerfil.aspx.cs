using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_web
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                TraineeNegocio negocio = new TraineeNegocio();
                //Escribir img
                string ruta = Server.MapPath("./Images/");
                Trainee user = (Trainee)Session["trainee"];
                txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id + ".jpg");

                //guardar datos perfil
                user.ImagenPerfil = "perfil-" + user.Id + ".jpg";
                negocio.actualizar(user);

                //leer img
                Image img = (Image)Master.FindControl("imgAvatar");
                img.ImageUrl = "~/Images/" + user.ImagenPerfil;

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }
    }
}