<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Ecommerce.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 60px">
           <p></p>
            <h2 class="font-weight-semi-bold text-uppercase mb-3">Contact Us</h2>
            <!-- <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Contact</p>
            </div> -->
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Contact For Any Queries</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Your Name"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Your Email"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="subject" placeholder="Subject"
                                required="required" data-validation-required-message="Please enter a subject" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control" rows="6" id="message" placeholder="Message"
                                required="required"
                                data-validation-required-message="Please enter your message"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                            <button class="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">Send
                                Message</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Get In Touch</h5>
                <p>Have questions or need help with your order? Our friendly support team is here to assist you! Contact us and we'll get back to you as soon as possible. Your satisfaction is our top priority.</p>
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
    <!-- Contact End -->
    <center>   
        <img src="../UserTemplate/img/d4.jpg" alt="Image" height="300">
        <img src="../UserTemplate/img/d5.jpg" alt="Image" height="300">    
    </center>
</asp:Content>
