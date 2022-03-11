<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- contact -->
    <section class="w3l-contact pb-5" id="contact">
        <div class="container pb-md-5 pb-4">
            <div class="row contact-block">
                <div class="col-lg-5 mt-lg-0 mt-sm-5 mt-4 pr-xl-5 pr-lg-4 order-lg-first order-last">
                    <div class="map-iframe">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317718.69319292053!2d-0.3817765050863085!3d51.528307984912544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2spl!4v1562654563739!5m2!1sen!2spl"
                            width="100%" height="400" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                </div>
                <div class="col-lg-7 contact-right pt-5 mt-lg-4 order-lg-last order-first">
                    <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:600px;">
                        <p class="">Get In Touch</p>
                        <h3 class="title-style">Contact <span>Us</span>
                        </h3>
                    </div>
                    <form action="https://sendmail.w3layouts.com/submitForm" method="post" class="signin-form">
                        <div class="input-grids">
                            <input type="text" name="w3lName" id="w3lName" placeholder="Your Name*"
                                class="contact-input" required="" />
                            <input type="email" name="w3lSender" id="w3lSender" placeholder="Your Email*"
                                class="contact-input" required="" />
                            <input type="text" name="w3lSubect" id="w3lSubect" placeholder="Subject*"
                                class="contact-input" required="" />
                        </div>
                        <div class="form-input">
                            <textarea name="w3lMessage" id="w3lMessage" placeholder="Type your message here*"
                                required=""></textarea>
                        </div>
                        <button class="btn btn-style mt-sm-3">Send Message</button>
                    </form>
                    <div class="contact-left mt-5 pt-lg-4">
                        <div class="row cont-details">
                            <div class="col-sm-6">
                                <div class="d-flex contact-grid">
                                    <div class="cont-left text-center mr-3">
                                        <span class="fas fa-globe"></span>
                                    </div>
                                    <div class="cont-right">
                                        <h6>Company Address</h6>
                                        <p>10001, 5th Avenue, London.</p>
                                    </div>
                                </div>
                                <div class="d-flex contact-grid mt-4 pt-lg-2">
                                    <div class="cont-left text-center mr-3">
                                        <span class="fas fa-phone-alt"></span>
                                    </div>
                                    <div class="cont-right">
                                        <h6>Call Us</h6>
                                        <p><a href="tel:+1(21) 234 4567">+1(21) 112 7368</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 mt-sm-0 mt-4">
                                <div class="d-flex contact-grid">
                                    <div class="cont-left text-center mr-3">
                                        <span class="fas fa-envelope-open-text"></span>
                                    </div>
                                    <div class="cont-right">
                                        <h6>Email Us</h6>
                                        <p><a href="mailto:example@mail.com" class="mail">example@mail.com</a></p>
                                    </div>
                                </div>
                                <div class="d-flex contact-grid mt-4 pt-lg-2">
                                    <div class="cont-left text-center mr-3">
                                        <span class="fas fa-headset"></span>
                                    </div>
                                    <div class="cont-right">
                                        <h6>Customer Support</h6>
                                        <p><a href="mailto:info@support.com" class="mail">info@support.com</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //contact -->
</asp:Content>

