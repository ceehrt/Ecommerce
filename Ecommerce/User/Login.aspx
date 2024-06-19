<%@ Page Language="C#" MasterPageFile="~/User/User.Master"
    AutoEventWireup="true" CodeBehind="Login.aspx.cs"
    Inherits="Ecommerce.User.CreateUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 60px">
           <p></p>            
            <h2 class="font-weight-semi-bold text-uppercase mb-3">Log In</h2>
            
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Shop Detail Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">

                <div id="product-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner border">
                        <div class="carousel-item active">
                            <img class="w-100 h-100" src="../UserTemplate/img/d10.jpg" alt="Image">
                        </div>
                       
                    </div>
                   
                </div>
            </div>

            <div class="col-lg-7 pb-5">
                <div class="control-group">
                    <h6 class="font-weight-semi-bold text-uppercase mb-3">Account ID (Email)</h6>
                    <asp:TextBox runat="server" ID="txtAcc" CssClass="form-control" placeholder="Your Account ID"  />  
                     <p class="help-block text-danger"></p>

                    <br />
                    <h6 class="font-weight-semi-bold text-uppercase mb-3">Password</h6>
                    <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password" placeholder="Password"  />  
                    <p class="help-block text-danger"></p>                 
                </div>
                <div>
                   <asp:Button OnClientClick="$('#myModal').modal('show');" CssClass="btn btn-primary py-2 px-4" runat="server" Text="Log In" OnClick="Submit_Click2" />
                </div>
            </div>
        </div>
 
    </div>

</asp:Content>
