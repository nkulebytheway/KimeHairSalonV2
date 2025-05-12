<%@page import="java.sql.Time"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <title>Appointment Confirmed</title>
  <style>
    .success-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      text-align: center;
      background-color: #f8f9fa;
    }
    .checkmark {
      font-size: 100px;
      color: green;
    }
    .message {
      font-size: 30px;
      font-weight: bold;
      margin-top: 20px;
      color: #333;
    }
    .home-link {
      margin-top: 30px;
      font-size: 18px;
    }
  </style>
</head>
<body>

  <div class="success-container">
    <div class="checkmark">&#10004;</div>
    <div class="message">Appointment Successfully Booked!</div>
    <div class="home-link">
      <a href="index.html" class="btn btn-primary mt-3">Return to Home</a>
    </div>
  </div>

</body>
</html>
