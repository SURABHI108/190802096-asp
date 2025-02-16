﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- services section -->
    <section class="w3l-content-11-main">
        <div class="content-design-11 py-5">
            <div class="container py-md-5 py-4">
                <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:600px;">
                    <p class="">What we do?</p>
                    <h3 class="title-style">Our <span>Services</span>
                    </h3>
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <div class="content-sec-11">
                        <div class="content-sec-11">
                        <div class="col-lg-6">
                            <div class="services-single d-flex p-sm-5 p-4">
                                <div class="service-icon mr-sm-4 mr-3">
                                    <i class="fas fa-spa"></i>
                                </div>
                                <div class="services-content">
                                    <h5><a href="services.aspx"><%# Eval("title") %></a></h5>
                                    <p><%# Eval("description")%></p>
                                    <a href="#services" class="btn read-button d-flex align-items-center mt-4 p-0">Read
                                        More<i class="fas fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        
                    
                        
              
            </div>
        </div>
        </ItemTemplate>
        </asp:Repeater>
    </section>
    <!-- //services section -->

    <!-- middle -->
    <div class="middle-inner py-5">
        <div class="container py-md-5 py-4">
            <div class="about-left text-center py-lg-4">
                <h3 class="title-big">Extend Your Home With a Beautiful Garden</h3>
                <p>We focus on the needs sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                    minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
                <a href="#started" class="btn btn-style btn-style-white mt-sm-5 mt-4 mr-2">Get started</a>
                <a href="contact.html" class="btn btn-style mt-sm-5 mt-4">Contact Us</a>
            </div>
        </div>
    </div>
    <!-- //middle -->

    <!-- home page block3 -->
    <section class="w3l-serviceblock py-5" id="about">
        <div class="midd-w3">
            <div class="container py-lg-5 py-md-3">
                <div class="row">
                    <div class="col-lg-6 align-self">
                        <h3 class="title-style">Why Choosing <span>Greensward?</span></h3>
                        <p class="mt-4">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo,
                            ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet consectetur
                            adipisicing
                            elit. Non quae, fugiat ad libero ut justo lorem dolor.</p>
                        <ol class="w3l-right mt-lg-5 mt-4">
                            <li>Design & Planting</li>
                            <li>Lawn & Garden Care</li>
                            <li>Water Gardening</li>
                            <li>Garden Help</li>
                            <li>Tree Planting</li>
                            <li>Cutting Leaf</li>
                        </ol>
                    </div>
                    <div class="col-lg-6 mt-lg-0 mt-md-5 mt-4">
                        <div class="position-relative">
                            <img src="src/images1/service.jpg" alt="" class="img-fluid">
                            <a href="#small-dialog"
                                class="popup-with-zoom-anim play-view text-center position-absolute">
                                <span class="video-play-icon">
                                    <span class="fa fa-play"></span>
                                </span>
                            </a>
                            <!-- dialog itself, mfp-hide class is required to make dialog hidden -->
                            <div id="small-dialog" class="zoom-anim-dialog mfp-hide">
                                <iframe src="https://player.vimeo.com/video/92520693" allow="autoplay; fullscreen"
                                    allowfullscreen=""></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- // home page block3 -->

    <!-- service 3 grids -->
    <section class="w3l-service-3 py-5">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:600px;">
                <p class="">Services</p>
                <h3 class="title-style">We Provide the Best <span>Services</span>
                </h3>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="service-single-grid">
                        <div class="service-image">
                            <img src="src/images1/home-s1.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="service-content p-4">
                            <h5 class="mb-2"><a href="#services">Water Gardening</a></h5>
                            <p>Lorem ante ipsum primis in faucibus orci luctus eted ultrices posuere curae fers
                                luctus eted.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-md-0 mt-sm-5 mt-4">
                    <div class="service-single-grid">
                        <div class="service-image">
                            <img src="src/images1/home-s2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="service-content p-4">
                            <h5 class="mb-2"><a href="#services">Landscaping Design</a></h5>
                            <p>Lorem ante ipsum primis in faucibus orci luctus eted ultrices posuere curae fers
                                luctus eted.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-0 mt-sm-5 mt-4">
                    <div class="service-single-grid">
                        <div class="service-image">
                            <img src="src/images1/home-s3.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="service-content p-4">
                            <h5 class="mb-2"><a href="#services">Lawn Maintanance</a></h5>
                            <p>Lorem ante ipsum primis in faucibus orci luctus eted ultrices posuere curae fers
                                luctus eted.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- service 3 grids -->
</asp:Content>

