<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Policy.aspx.cs" Inherits="Ecommerce.User.ShopDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 60px">
           <p></p>           
            <h2 class="font-weight-semi-bold text-uppercase mb-3">Our Policy</h2>
            
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Shop Detail Start -->

        <div class="row px-xl-5">
            <div class="col">
                <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                    <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Return & Refund</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Payment Methos</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Our Guarantee</a>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-pane-1">
                        <center>
                        <img src="../UserTemplate/img/d8.jpg" alt="Image" height="250"> <img src="../UserTemplate/img/d7.jpg" alt="Image" height="250">
                        </center>

                        <h4 class="mb-3">Return & Refund</h4>                
                            <p>1. Your item must be unused and in the same condition that you received it.</p>
                            <p>2. The item must be in the original packaging.</p>
                            <p>3. To complete your return, we require a receipt or proof of purchase.</p>
                            <p>4. Only regular priced items may be refunded, sale items cannot be refunded.</p>
                            <p>5. If the item in question was marked as a gift when purchased and shipped directly to you, you will receive a gift credit for the value of your return.</p>
                            <p>6. Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</p>
                            <p>7. Any item that is returned more than 30 days after delivery.</p>    
                    </div>
                    <div class="tab-pane fade" id="tab-pane-2">
                        
                            <center>
                                <img src="../UserTemplate/img/d9.jpg" alt="Image" height="250"> 
                            </center>
                        <left>  <img src="../UserTemplate/img/payments.png" alt="Image"> <h4 class="mb-3">Payment Method</h4> </left>
                        
                        <h5 class="mb-3">Credit and Debit Cards</h5>                        
                            <p>We accept all major credit and debit cards, including Visa, MasterCard, American Express, and Discover.</p>
                         <h5 class="mb-3">PayPal</h5>                        
                            <p>Pay conveniently and securely using PayPal.</p>
                        <h5 class="mb-3">Apple Pay</h5>                        
                            <p>Use Apple Pay for a quick and secure checkout experience on your Apple devices.</p>
                        <h5 class="mb-3">Google Pay</h5>                        
                            <p>Google Pay is available for fast, easy payments on your Android devices.</p>
                        <h5 class="mb-3">Bank Transfer</h5>                        
                            <p>Direct bank transfers are accepted. Simply select 'Bank Transfer' at checkout and follow the instructions</p>
                        </div>
                    <div class="tab-pane fade" id="tab-pane-3">
                            <center>
                                <img src="../UserTemplate/img/d6.jpg" alt="Image" height="250"> 
                            </center>
                            <h4 class="mb-3">Our Guarantee</h4>
                            <p>1. We guarantee your satisfaction with every purchase or your money back.</p>
                            <p>2. If you're not completely satisfied with your purchase, return it within 30 days for a full refund.</p>
                            <p>3. We guarantee timely delivery on all orders, or we’ll refund your shipping costs.</p>
                            <p>4. If your item arrives damaged or defective, we'll replace it at no extra cost.</p>
                            <p>5. Our customer support team guarantees a response within 24 hours.</p>
                            <p>6. We guarantee that all products sold are 100% authentic and brand new.</p>
                            <p>7. We guarantee that your online shopping experience is safe and secure.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Detail End -->



</asp:Content>
