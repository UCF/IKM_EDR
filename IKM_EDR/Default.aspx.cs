using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IKM_EDR.IKM;

namespace IKM_EDR
{
    public partial class Default : System.Web.UI.Page
    {
        IKMDataContext context;

        protected void Page_Load(object sender, EventArgs e)
        {
            mv_page.ActiveViewIndex = 0;

            context = new IKMDataContext(new Uri("https://hub.smca.ucf.edu/sites/hub/IKM/_vti_bin/listdata.svc"));
            context.Credentials = CredentialCache.DefaultNetworkCredentials;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            cv_cb_ack.Validate();

            if (!Page.IsValid)
                return;

            try
            {
                ExternalDataRequestsItem newItem = new ExternalDataRequestsItem();
                newItem.Name = tb_firstName.Text + " " + tb_lastName.Text;
                newItem.EmailAddress = tb_email.Text;
                newItem.PhoneNumber = tb_phone.Text;
                newItem.CompanyName = tb_companyName.Text;
                newItem.Address = tb_address1.Text;
                newItem.Address2 = tb_address2.Text;
                newItem.City = tb_city.Text;
                newItem.StateValue = ddl_State.SelectedValue;
                newItem.Zip = tb_zip.Text;
                newItem.InformationRequested = tb_InfoRequest.Text;
                newItem.DeliveryMethodValue = ddl_deliveryMethod.SelectedValue;
                newItem.DateRequired = DateTime.Parse(tb_dateRequired.Text);
                newItem.StatusValue = "New";

                context.AddToExternalDataRequests(newItem);

                context.SaveChanges();

                mv_page.ActiveViewIndex = 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void cv_cb_ack_Validate(object sender, ServerValidateEventArgs e)
        {
            if (cb_ack.Checked)
                e.IsValid = true;
            else
                e.IsValid = false;
        }
    }
}