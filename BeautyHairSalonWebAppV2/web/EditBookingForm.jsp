<%@ page import="za.ac.tut.entity.NailDesign" %>
<%
    NailDesign booking = (NailDesign) request.getAttribute("booking");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding-top: 80px;
            text-align: center;
        }
        form {
            background-color: #fff;
            padding: 30px;
            width: 400px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }
        input[type="text"], input[type="email"], input[type="date"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

    <form action="LoadBookingForEditServlet.do" method="post">
        <h2>Edit Booking</h2>

        <!-- Hidden cell number (used as key) -->
        <input type="hidden" name="cellNumber" value="<%= booking.getCellNum() %>"/>

        <label>Name:</label><br/>
        <input type="text" name="name" value="<%= booking.getName() %>" required/><br/>

        <label>Email:</label><br/>
        <input type="email" name="email" value="<%= booking.getEmail() %>" required/><br/>

        <label>Date:</label><br/>
        <input type="date" name="date" value="<%= booking.getDate() %>" required/><br/>

        <input type="submit" value="Update Booking"/>
    </form>

</body>
</html>
