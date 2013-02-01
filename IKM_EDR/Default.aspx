<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IKM_EDR.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="res/js/jquery-1.4.1.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SidebarContent" runat="server">
          <div id="primary_navigation">
                <h1>More Information:</h1>
                <ul>
                    <li><a href="http://www.iroffice.ucf.edu/home.html">About <abbr title="Instituational Knowledge Management">IKM</abbr> </a></li>
                </ul>
            </div>
           <div id="secondary_navigation">
                <h1>Other Data Sources:</h1>
                <ul>
                    <li><a href="http://www.iroffice.ucf.edu/character/current.html">Facts at a Glance</a></li>
                    <li><a href="http://www.iroffice.ucf.edu/character/honorscutpoints_grd_clss_std.html">Graduation Data</a></li>
                    <li><a href="http://www.iroffice.ucf.edu/degrees/degreesconferred.html">Degrees Awarded</a></li>
                    <li><a href="http://www.iroffice.ucf.edu/enrollment/index.html">Enrollment Data</a></li>
                </ul>
            </div>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
<asp:ScriptManager ID="sm_main" runat="server" />
<asp:UpdatePanel ID="up_main" runat="server" UpdateMode="Always">
    <ContentTemplate>
    <asp:MultiView ID="mv_page" runat="server">
        <asp:View ID="formView" runat="server">
        <h3>Information Requests</h3>
     <p>Please fill out this form to begin the request process. Be as specific as possible with your request.  Allow up to 10 working days for your request to be completed.  Please note that for requests from entities outside of UCF their may be a fee assessed for your request.</p>
        <div class="row-fluid">
            <div class="span9">
                <asp:ValidationSummary ID="valsum_main" runat="server" DisplayMode="BulletList" CssClass="alert-error" ValidationGroup="valgrp_main" />
            </div>
        </div>
        <div class="row-fluid"> 
           <div class="span3">
               <label class="control-label" for="tb_firstName">First Name</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_firstName" runat="server" CssClass="input-medium" />
                 <asp:RequiredFieldValidator ID="rfv_firstName" runat="server" ControlToValidate="tb_firstName" 
                    Display="Dynamic" Text="*" ErrorMessage="First name is required." ValidationGroup="valgrp_main" />
               </div>
           </div> 
           <div class="span3">
              <label class="control-label" for="tb_lastName">Last Name</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_lastName" runat="server" CssClass="input-medium" />
                 <asp:RequiredFieldValidator ID="rfv_lastName" runat="server" ControlToValidate="tb_lastName" 
                    Display="Dynamic" Text="*" ErrorMessage="Last name is required." ValidationGroup="valgrp_main" />
               </div> 
            </div>
        </div> 
        <div class="row-fluid">
            <div class="span4">
               <label class="control-label" for="tb_email">Email Address</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_email" runat="server" CssClass="input-large" />
                 <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="tb_email" 
                    Display="Dynamic" Text="*" ErrorMessage="Email is required." ValidationGroup="valgrp_main" />
               </div>    
            </div>
            <div class="span4">
               <label class="control-label" for="tb_phone">Phone Number</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_phone" runat="server" CssClass="input-medium" />
               </div>
            </div>
        </div> 
        <div class="row-fluid">
            <div class="span9">
               <label class="control-label" for="tb_companyName">Company Name</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_companyName" runat="server" CssClass="input-xlarge" />
               </div>    
            </div>
        </div> 
        <div class="row-fluid">
            <div class="span9">
               <label class="control-label" for="tb_address1">Address</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_address1" runat="server" CssClass="input-xlarge" />
                 <asp:RequiredFieldValidator ID="rfv_address1" runat="server" ControlToValidate="tb_address1" 
                    Display="Dynamic" Text="*" ErrorMessage="Address is required." ValidationGroup="valgrp_main" />
               </div>    
            </div>
        </div>
        <div class="row-fluid">
            <div class="span9">
               <label class="control-label" for="tb_address2">Address 2</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_address2" runat="server" CssClass="input-xlarge" /> 
               </div>
            </div>
        </div> 
        <div class="row-fluid">
            <div class="span3">
               <label class="control-label" for="tb_city">City</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_city" runat="server" CssClass="input-medium" />
                 <asp:RequiredFieldValidator ID="rfv_city" runat="server" ControlToValidate="tb_city" 
                    Display="Dynamic" Text="*" ErrorMessage="City is required." ValidationGroup="valgrp_main" />
               </div>    
            </div>
            <div class="span3">
               <label class="control-label" for="ddl_state">State</label> 
               <div class="controls"> 
                <asp:DropDownList ID="ddl_State" runat="server" CssClass="input-medium" >
                    <asp:ListItem Value="" Text="" />
                    <asp:ListItem Value="AL" Text="Alabama" />
                    <asp:ListItem Value="AK" Text="Alaska" />
		            <asp:ListItem Value="AZ" Text="Arizona" />
		            <asp:ListItem Value="AR" Text="Arkansas" />
		            <asp:ListItem Value="CA" Text="California" />
		            <asp:ListItem Value="CO" Text="Colorado" />
		            <asp:ListItem Value="CT" Text="Connecticut" />
		            <asp:ListItem Value="DE" Text="Delaware" />
		            <asp:ListItem Value="DC" Text="District of Columbia" />
		            <asp:ListItem Value="FL" Text="Florida" />
		            <asp:ListItem Value="GA" Text="Georgia" />
		            <asp:ListItem Value="HI" Text="Hawaii" />
		            <asp:ListItem Value="ID" Text="Idaho" />
		            <asp:ListItem Value="IL" Text="Illinois" />
		            <asp:ListItem Value="IN" Text="Indiana" />
		            <asp:ListItem Value="IA" Text="Iowa" />
		            <asp:ListItem Value="KS" Text="Kansas" />
		            <asp:ListItem Value="KY" Text="Kentucky" />
		            <asp:ListItem Value="LA" Text="Louisiana" />
		            <asp:ListItem Value="ME" Text="Maine" />
		            <asp:ListItem Value="MT" Text="Montana" />
		            <asp:ListItem Value="NE" Text="Nebraska" />
		            <asp:ListItem Value="NV" Text="Nevada" />
		            <asp:ListItem Value="NH" Text="New Hampshire" />
		            <asp:ListItem Value="NJ" Text="New Jersey" />
		            <asp:ListItem Value="NM" Text="New Mexico" />
		            <asp:ListItem Value="NY" Text="New York" />
		            <asp:ListItem Value="NC" Text="North Carolina" />
		            <asp:ListItem Value="ND" Text="North Dakota" />
		            <asp:ListItem Value="OH" Text="Ohio" />
		            <asp:ListItem Value="OK" Text="Oklahoma" />
		            <asp:ListItem Value="OR" Text="Oregon" />
		            <asp:ListItem Value="MD" Text="Maryland" />
		            <asp:ListItem Value="MA" Text="Massachusetts" />
		            <asp:ListItem Value="MI" Text="Michigan" />
		            <asp:ListItem Value="MN" Text="Minnesota" />
		            <asp:ListItem Value="MS" Text="Mississippi" />
		            <asp:ListItem Value="MO" Text="Missouri" />
		            <asp:ListItem Value="PA" Text="Pennsylvania" />
		            <asp:ListItem Value="RI" Text="Rhode Island" />
		            <asp:ListItem Value="SC" Text="South Carolina" />
		            <asp:ListItem Value="SD" Text="South Dakota" />
		            <asp:ListItem Value="TN" Text="Tennessee" />
		            <asp:ListItem Value="TX" Text="Texas" />
		            <asp:ListItem Value="UT" Text="Utah" />
		            <asp:ListItem Value="VT" Text="Vermont" />
		            <asp:ListItem Value="VA" Text="Virginia" />
		            <asp:ListItem Value="WA" Text="Washington" />
		            <asp:ListItem Value="WV" Text="West Virginia" />
		            <asp:ListItem Value="WI" Text="Wisconsin" />
		            <asp:ListItem Value="WY" Text="Wyoming" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_state" runat="server" ControlToValidate="ddl_state" 
                    Display="Dynamic" Text="*" ErrorMessage="State is required." ValidationGroup="valgrp_main" />
               </div>
            </div>
            <div class="span3">
               <label class="control-label" for="tb_zip">Zip</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_zip" runat="server" CssClass="input-mini" />
                 <asp:RequiredFieldValidator ID="rfv_zip" runat="server" ControlToValidate="tb_zip" 
                    Display="Dynamic" Text="*" ErrorMessage="Zip code is required." ValidationGroup="valgrp_main" />
               </div>    
            </div>
        </div> 
        <div class="row-fluid">
            <div class="span9">
               <label class="control-label" for="tb_infoRequest">Information Requested</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_InfoRequest" runat="server" CssClass="input-xxlarge" Rows="5" TextMode="MultiLine" />
                 <asp:RequiredFieldValidator ID="rfv_infoRequest" runat="server" ControlToValidate="tb_infoRequest" 
                    Display="Dynamic" Text="*" ErrorMessage="Request is required." ValidationGroup="valgrp_main" />
               </div>    
            </div>
        </div>
        <div class="row-fluid">
            <div class="span3">
               <label class="control-label" for="tb_dateRequired">Date Required</label> 
               <div class="controls"> 
                 <asp:TextBox ID="tb_dateRequired" runat="server" CssClass="input-medium" type="date" />
               </div>    
            </div>
            <div class="span3">
               <label class="control-label" for="deliveryMethod">Delivery Method</label> 
               <div class="controls"> 
                <asp:DropDownList ID="ddl_deliveryMethod" runat="server" CssClass="input-medium">
                    <asp:ListItem Value="Pick-up" Text="CD Pick-up" />
                    <asp:ListItem Value="Mail" Text="CD Mail" />
                    <asp:ListItem Value="Express" Text="CD Express Mail" />
                    <asp:ListItem Value="Other" Text="Other" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_deliveryMethod" runat="server" ControlToValidate="ddl_deliveryMethod" 
                    Display="Dynamic" Text="*" ErrorMessage="Please choose a delivery method." ValidationGroup="valgrp_main" />
               </div>    
            </div>
        </div>
        <div class="row-fluid">
            <div class="span9">
               <div class="controls"> 
                <asp:CheckBox ID="cb_ack" runat="server" Text="By checking this box you acknowledge that there may be a fee associated with this request." CssClass="checkbox" />
                <asp:CustomValidator ID="cv_cb_ack" runat="server" Display="Dynamic" Text="*" 
                    ErrorMessage="You must acknowledge that there may be a fee associated with this request."
                    ValidationGroup="valgrp_main" OnServerValidate="cv_cb_ack_Validate" />
               </div>    
            </div>
        </div>
        <div class="row-fluid">
            <div class="span3 offset8">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn-large" 
                    onclick="btn_submit_Click" />
            </div>
        </div>
        </asp:View>
        <asp:View ID="confirmView" runat="server">
            <h3>Congratulations!</h3>
            <p>Your request has been submitted. You will be contacted by our office in 'some amount of time'.</p>
        </asp:View>
    </asp:MultiView>
    </ContentTemplate>
</asp:UpdatePanel>
        </form>
</asp:Content>