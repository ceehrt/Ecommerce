<%@ Page Language="C#" MasterPageFile="~/User/User.Master"
    AutoEventWireup="true" CodeBehind="Tracking.aspx.cs"
    Inherits="Ecommerce.User.CreateUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 60px">
           <p></p>            
            <h2 class="font-weight-semi-bold text-uppercase mb-3">Track and Trace</h2>
            
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
                            <img class="w-100 h-100" src="../UserTemplate/img/d3.jpg" alt="Image">
                        </div>
                       
                    </div>
                   
                </div>
            </div>

            <div class="col-lg-7 pb-5">
                <div class="control-group">
                    <asp:TextBox runat="server" ID="txtTrack" CssClass="form-control" placeholder="Your Tracking No."  />  
                     <p class="help-block text-danger"></p>

                    <br />

                    <asp:Label runat="server" ID="lblStatus"></asp:Label>
                    <br><asp:Label runat="server" ID="Shipping"></asp:Label>
                    <br><asp:Label runat="server" ID="Delivery"></asp:Label>
                </div>
                <div>
                    <br>
                    <asp:Button OnClientClick="$('#myModal').modal('show');" CssClass="btn btn-primary py-2 px-4" runat="server" Text="Submit" OnClick="Submit_Click1" />
                </div>
            </div>
        </div>
 
    </div>

</asp:Content>
