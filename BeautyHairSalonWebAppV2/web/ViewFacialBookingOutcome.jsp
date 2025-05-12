<%@ page import="za.ac.tut.entity.NailDesign" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    NailDesign booking = (NailDesign) request.getAttribute("booking");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>View Booking - Kimè Salon</title>
  <link rel="icon" type="image/jpg" href="logo2.jpg" />
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #fff;
      color: #333;
    }

    nav {
      background-color: #333;
      overflow: hidden;
    }

    nav a {
      float: left;
      display: block;
      color: #ccc;
      text-align: center;
      padding: 20px 130px;
      text-decoration: none;
      font-weight: bold;
    }

    nav a:hover {
      background-color: #575757;
      color: white;
    }

    .hero {
      background: 
        linear-gradient(to right, rgba(91, 73, 59, 0.8), rgba(250, 217, 193, 0.8)),
        url(logo.jpeg);
      background-size: cover;
      text-align: center;
      padding: 50px 20px;
      color: #fff;
    }

    .hero img {
      width: 150px;
      border-radius: 50%;
    }

    .container {
      padding: 50px 15px;
      max-width: 800px;
      margin: auto;
      background: linear-gradient(to right, rgba(160, 161, 156, 0.2), rgba(250, 245, 241, 0.4));
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      text-align: center;
    }

    .booking-details {
      margin-top: 30px;
      font-size: 18px;
      line-height: 1.6;
    }

    .booking-details p {
      margin: 10px 0;
    }

    .btn {
      display: inline-block;
      padding: 10px 20px;
      margin-top: 20px;
      border: 2px solid #555;
      background-color: transparent;
      color: #555;
      text-decoration: none;
      font-weight: bold;
      border-radius: 5px;
      transition: 0.3s;
    }

    .btn:hover {
      background-color: #555;
      color: #fff;
    }

    footer {
      background: linear-gradient(to left, rgba(160, 161, 156, 0.8), rgba(250, 245, 241, 0.8));
      color: #333;
      padding: 30px 20px;
      text-align: center;
    }

    .footer-columns {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      text-align: left;
    }

    .footer-column {
      flex: 1 1 200px;
      margin: 20px;
    }

    .footer-column h6 {
      font-weight: bold;
    }

    .footer-column a {
      color: dimgray;
      text-decoration: none;
    }

    .footer-column a:hover {
      color: #333;
    }

    .insta {
      width: 20px;
      height: 20px;
      vertical-align: middle;
    }

    @media (max-width: 768px) {
      nav a {
        float: none;
        display: block;
        text-align: left;
      }

      .footer-columns {
        flex-direction: column;
        align-items: center;
      }
    }
  </style>
</head>
<body>

<nav>
  <a href="index.html">Home</a>
  <a href="AboutUs.html">About Us</a>
  <a href="Services.html">Services</a>
  <a href="Contact Us.html">Feedback</a>
</nav>

<div class="hero">
  <img src="logo2.jpg" alt="Logo" />
  <h1>Kimè Nail, Hair & Beauty Salon</h1>
  <p>Booking Lookup</p>
</div>

<div class="container">
  <h2>Your Booking Details</h2>
  <div class="booking-details">
    <% if (booking.getCellNum() != null) { %>
      <p><strong>Name:</strong> <%= booking.getName() %></p>
      <p><strong>Cell Number:</strong> <%= booking.getCellNum() %></p>
      <p><strong>Email:</strong> <%= booking.getEmail() %></p>
      <p><strong>Date:</strong> <%= booking.getDate() %></p>
      
    <% } else { %>
      <p style="color: red; font-weight: bold;">No booking found for the provided cell number.</p>
    <% } %>
  </div>
  <a href="ViewPedicureBooking.html" class="btn">Back</a>
</div>

<footer>
  <div class="footer-columns">
    <div class="footer-column">
      <h6 style="font-size:15px">Kimè Nail, Hair & Beauty Salon</h6>
      <img src="logo2.jpg" alt="Logo" style="width: 150px; border-radius: 50%;" />
    </div>
    <div class="footer-column">
      <h6 style="font-size:15px">Services</h6>
      <p><a href="#">Advanced Nail Design</a></p>
      <p><a href="#">Gel Pedicure</a></p>
      <p><a href="#">Massage</a></p>
      <p><a href="#">Firming Facial</a></p>
      <p><a href="#">Hair</a></p>
    </div>
    <div class="footer-column">
      <h6 style="font-size:15px">Useful Links</h6>
      <p><a href="Kime Nail & beauty salon.html">Home</a></p>
      <p><a href="AboutUs.html">About Us</a></p>
      <p><a href="Services.html">Services</a></p>
      <p><a href="Contact Us.html">Feedback</a></p>
    </div>
    <div class="footer-column">
      <h6 style="font-size:15px">Contact</h6>
      <p>202 Ouklip Rd, Heiderkruh, JHB</p>
      <p>kime.Salon@kime.com</p>
      <p>+27 1 984 675 88</p>
      <p>+27 76 243 521 99</p>
      <p>
        <a href="http://instagram.com/_u/kime.salon/" class="instaLink">
          <img src="instagram.png" class="insta" alt="Instagram" /> kime.salon
        </a>
      </p>
    </div>
  </div>
  <p>© 2025 Kimè Nail, Hair & Beauty Salon</p>
</footer>

</body>
</html>
