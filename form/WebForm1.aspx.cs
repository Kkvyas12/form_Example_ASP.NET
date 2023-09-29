using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace form
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            lblfname.Text = tbfname.Text;
            lbllname.Text =  tblname.Text;
            lblemail.Text =  tbemail.Text;
            lbldob.Text =  dob.Text.ToString();

            //For RadioButton
            if (rbmale.Checked){
                lblgender.Text = rbmale.Text;
            }
            else if (rbfemale.Checked){
                lblgender.Text =  rbfemale.Text;
            }
            else if (rbtransgender.Checked){
                lblgender.Text =  rbtransgender.Text;
            }
            else
            {
                lblgender.Text = "Not selected" ;
            }

            //For CheckBox
            lblhobby.Text = "";
            if (cbcricket.Checked)
            {
                lblhobby.Text +=  cbcricket.Text+"<br>";
            }
            if (cbswimming.Checked)
            {
                lblhobby.Text +=  cbswimming.Text+"<br> ";
            }
            if (cbreading.Checked)
            {
                lblhobby.Text +=  cbreading.Text;
            }

            lblcity.Text = DropDownList1.SelectedValue;

            lblMobile.Text =  tbMobile.Text;
            if (fuProfilePhoto.HasFile)
            {
                String FileExtension = System.IO.Path.GetExtension(fuProfilePhoto.FileName);
                if (FileExtension.ToLower() != ".jpeg" && FileExtension.ToLower() != ".jpg" && FileExtension.ToLower() != ".png")
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = " Upload only jpeg,jpg and png formate photo !!";
                }
                else
                {
                    fuProfilePhoto.SaveAs(Server.MapPath("~/Upload/" + fuProfilePhoto.FileName));
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = " photo uploaded succssfully";
                }
            }
            ProfilePhoto.ImageUrl = "~/Upload/" + fuProfilePhoto.FileName;
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            tbfname.Text = String.Empty;
            tblname.Text = String.Empty;
            tbemail.Text = String.Empty;
            dob.Text = String.Empty;
            rbfemale.Checked = false;
            rbmale.Checked = false;
            rbtransgender.Checked = false;
            cbcricket.Checked = false;
            cbswimming.Checked = false;
            cbreading.Checked = false;
            DropDownList1.SelectedValue = null;
            tbMobile.Text = String.Empty;
            tbPassword.Text = String.Empty;
            tbCofPassword.Text = String.Empty;
            ProfilePhoto.ImageUrl = null;
            lblfname.Text = string.Empty;
            lbllname.Text = string.Empty;
            lblemail.Text = string.Empty;
            lbldob.Text = string.Empty;
            lblgender.Text = string.Empty;
            lblhobby.Text = string.Empty;
            lblcity.Text = string.Empty;
            lblMobile.Text = string.Empty;
        }

        
    }
}