<%@ Page Language="C#" MasterPageFile="~/User/User.Master"
    AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs"
    Inherits="Ecommerce.User.CreateUser" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 60px">
            <p></p>            
            <h2 class="font-weight-semi-bold text-uppercase mb-3">create account</h2>
            <!--<div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Contact</p>
            </div> -->
        </div>
    </div>
    <!-- Page Header End -->
    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <!--<div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Create User</span></h2>
        </div> -->
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                        <div class="control-group">
                            <h6 class="font-weight-semi-bold text-uppercase mb-3">Email (Your Account ID)</h6>
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="abc@gmail.com"  />  
                            <p class="help-block text-danger"></p>
                        </div> 
                        <div class="control-group">
                            <h6 class="font-weight-semi-bold text-uppercase mb-3">Your name</h6>
                            <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Name"  />  
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <h6 class="font-weight-semi-bold text-uppercase mb-3">Last name</h6>
                            <asp:TextBox runat="server" ID="txtSurname" CssClass="form-control" placeholder="Last Nmae"  />  
                             <p class="help-block text-danger"></p>
                         </div>
                        <div class="control-group">
                            <h6 class="font-weight-semi-bold text-uppercase mb-3">Mobile number</h6>
                            <asp:TextBox runat="server" ID="txtMobile" CssClass="form-control" placeholder="027 338 9999"  />  
                             <p class="help-block text-danger"></p>
                        </div> 
                        
                     <%--   <div class="control-group">
                             <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" placeholder="Address"  />  
                            <p class="help-block text-danger"></p>
                        </div> 
                        <div class="control-group">
                            <asp:TextBox runat="server" ID="txtPostcode" CssClass="form-control" placeholder="Post Code"  />  
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <asp:TextBox runat="server" ID="txtAccount" CssClass="form-control" placeholder="Account ID"  />  
                            <p class="help-block text-danger"></p>
                        </div>       --%>
                        <div class="control-group">
                            <h6 class="font-weight-semi-bold text-uppercase mb-3">Password</h6>
                            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" placeholder="Password must be at least 6 characters."  />  
                            <p class="help-block text-danger"></p>
                        </div>            
                        <div class="control-group">
                            <h6 class="font-weight-semi-bold text-uppercase mb-3">Re-enter Password</h6>
                            <asp:TextBox runat="server" ID="txtRepassword" CssClass="form-control" TextMode="Password" placeholder="Re-enter Password"  />  
                            <p class="help-block text-danger"></p>
                        </div>                                 

                        <div>
                             <asp:Button OnClientClick="$('#myModal').modal('show');" CssClass="btn btn-primary py-2 px-4" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </div>
                       
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Get the best deals!</h5>
                <p>For special discount and valuable membership, you’ll have access to tools that will help you save money every time you shop. Stay up-to-date on the best deals at your favorite stores. We will help you make the most of the hottest Black Friday sales, end-of-season savings and free shipping offers to your address.</p>
                <p><li>Free shipping upto 3 times after register.</li></p>
                <p><li>Online deals and coupons for popular products.</li></p>
                <p><li>Email notifications about special sales and seasonal offers.</li></p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Auckland Office</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>28A Linwood Ave., Mt Albert, Auckland, New Zealand</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i><a href="mailto:info@efashion.co.nz">info@efashion.co.nz</a></p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i><a href="tel:+643456789">+64 345 6789</a></p>
                </div>
                <div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Sydney Office</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, Sydney, Australia</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i><a href="mailto:info@efashion.co.au">info@efashion.co.au</a></p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i><a href="tel:+617496789">+61 749 6789</a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- <button type="button" onclick="showpopup();">Test</button> -->
    <div class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

    <script type="text/javascript">
        function showpopup() {
            $('#myModal').modal('show');
        }
        //});
</script>
    <!-- Contact End -->
</asp:Content>
