<%@ Page Title="IKM Information Request" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="SidebarContent" runat="server" ContentPlaceHolderID="SidebarContent">

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
 <h3>Information Requests</h3>
 <p>Please fill out this form to begin the request process. Be as specific as possible with your request.  Allow up to 10 working days for your request to be completed.  Please note that for requests from entities outside of UCF their may be a fee assessed for your request.</p>
<form>
    <div class="row-fluid"> 
       <div class="span3">
           <label class="control-label" for="firstName">First Name</label> 
           <div class="controls"> 
             <input class="input-medium" type="text" id="firstName"/> 
           </div>
       </div> 
       <div class="span5">
          <label class="control-label" for="lastName">Last Name</label> 
           <div class="controls"> 
             <input type="text" id="lastName"/> 
           </div> 
        </div>
    </div> 
    <div class="row-fluid">
        <div class="span4">
           <label class="control-label" for="email">Email Address</label> 
           <div class="controls"> 
             <input type="text" id="email" "/> 
           </div>    
        </div>
        <div class="span4">
           <label class="control-label" for="phone">Phone Number</label> 
           <div class="controls"> 
             <input class="input-medium" type="text" id="phone"/> 
           </div>
        </div>
    </div> 
    <div class="row-fluid">
        <div class="span9">
           <label class="control-label" for="companyName">Company Name</label> 
           <div class="controls"> 
             <input class="input-xlarge" type="text" id="companyName" "/> 
           </div>    
        </div>
    </div> 
    <div class="row-fluid">
        <div class="span9">
           <label class="control-label" for="address">Address</label> 
           <div class="controls"> 
             <input class="input-xlarge" type="text" id="address" "/> 
           </div>    
        </div>
    </div>
    <div class="row-fluid">
        <div class="span9">
           <label class="control-label" for="address2">Address 2</label> 
           <div class="controls"> 
             <input class="input-xlarge" type="text" id="address2"/> 
           </div>
        </div>
    </div> 
    <div class="row-fluid">
        <div class="span3">
           <label class="control-label" for="city">City</label> 
           <div class="controls"> 
             <input class="input-medium" type="text" id="City" "/> 
           </div>    
        </div>
        <div class="span3">
           <label class="control-label" for="state">State</label> 
           <div class="controls"> 
             <select class="input-medium" id="state">
                <option value=""></option>
		        <option value="AL">Alabama</option>
		        <option value="AK">Alaska</option>
		        <option value="AZ">Arizona</option>
		        <option value="AR">Arkansas</option>
		        <option value="CA">California</option>
		        <option value="CO">Colorado</option>
		        <option value="CT">Connecticut</option>
		        <option value="DE">Delaware</option>
		        <option value="DC">District of Columbia</option>
		        <option value="FL">Florida</option>
		        <option value="GA">Georgia</option>
		        <option value="HI">Hawaii</option>
		        <option value="ID">Idaho</option>
		        <option value="IL">Illinois</option>
		        <option value="IN">Indiana</option>
		        <option value="IA">Iowa</option>
		        <option value="KS">Kansas</option>
		        <option value="KY">Kentucky</option>
		        <option value="LA">Louisiana</option>
		        <option value="ME">Maine</option>
		        <option value="MT">Montana</option>
		        <option value="NE">Nebraska</option>
		        <option value="NV">Nevada</option>
		        <option value="NH">New Hampshire</option>
		        <option value="NJ">New Jersey</option>
		        <option value="NM">New Mexico</option>
		        <option value="NY">New York</option>
		        <option value="NC">North Carolina</option>
		        <option value="ND">North Dakota</option>
		        <option value="OH">Ohio</option>
		        <option value="OK">Oklahoma</option>
		        <option value="OR">Oregon</option>
		        <option value="MD">Maryland</option>
		        <option value="MA">Massachusetts</option>
		        <option value="MI">Michigan</option>
		        <option value="MN">Minnesota</option>
		        <option value="MS">Mississippi</option>
		        <option value="MO">Missouri</option>
		        <option value="PA">Pennsylvania</option>
		        <option value="RI">Rhode Island</option>
		        <option value="SC">South Carolina</option>
		        <option value="SD">South Dakota</option>
		        <option value="TN">Tennessee</option>
		        <option value="TX">Texas</option>
		        <option value="UT">Utah</option>
		        <option value="VT">Vermont</option>
		        <option value="VA">Virginia</option>
		        <option value="WA">Washington</option>
		        <option value="WV">West Virginia</option>
		        <option value="WI">Wisconsin</option>
		        <option value="WY">Wyoming</option>
            </select>
           </div>
        </div>
        <div class="span3">
           <label class="control-label" for="zip">Zip</label> 
           <div class="controls"> 
             <input class="input-mini" type="text" id="zip" "/> 
           </div>    
        </div>
    </div> 
    <div class="row-fluid">
        <div class="span9">
           <label class="control-label" for="infoRequest">Information Requested</label> 
           <div class="controls"> 
             <textarea rows="5" class="input-xxlarge" id="infoRequest"></textarea> 
           </div>    
        </div>
    </div>
    <div class="row-fluid">
        <div class="span3">
           <label class="control-label" for="dateRequired">Date Required</label> 
           <div class="controls"> 
             <input type="date" class="input-medium" id="dateRequired" />
           </div>    
        </div>
        <div class="span3">
           <label class="control-label" for="deliveryMethod">Delivery Method</label> 
           <div class="controls"> 
             <select class="input-medium" id="deliveryMethod">
                <option value=""></option>
                <option value="pick-up">CD Pick-up</option>
                <option value="mail">CD Mail</option>
                <option value="express">CD Express Mail</option>
                <option value="other">Other</option>
             </select>
           </div>    
        </div>
    </div>
    <div class="row-fluid">
        <div class="span9">
           <div class="controls"> 
            <label class="checkbox" for="feeAck">
                 <input type="checkbox" id="feeAck" /> By checking this box you acknowledge that there may be a fee associated with this request.
            </label>
           </div>    
        </div>
    </div>
</form>
</asp:Content>
