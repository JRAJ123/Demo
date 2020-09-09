<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="owl-carousel/owl.theme.css">
    
    <!-- CUSTOM STYLE -->      
    <link rel="stylesheet" href="css/template-style.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,400,600,900&subset=latin-ext" rel="stylesheet"> 
    
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
<title>Details</title>
<link rel="stylesheet" href="home.css">
</head>
<body>


        
       <header role="banner" class="position-absolute margin-top-30 margin-m-top-0 margin-s-top-0">    
        <!-- Top Navigation -->
        <nav class="background-transparent background-transparent-hightlight full-width sticky">
          <div class="s-12 l-2">
           <h3>InPatient Details</h3>
             
          </div>
          
        </nav>
      </header>
      <script type="text/javascript">
      function yesnoCheck() {
    	    if (document.getElementById('yesCheck').checked) {
    	        document.getElementById('ifYes').style.visibility = 'visible';
    	    }
    	    else document.getElementById('ifYes').style.visibility = 'hidden';

    	}</script>
<form action="register.jsp" method="post">
  <div class="container">
    <hr>

    <label ><b>Patient Name</b></label><br>
    <input type="text" placeholder="Enter Patient Name" name="patientname" required><br><br>

    <label ><b>District</b></label><br>
    <input type="text" placeholder="Enter District" name="district" required><br><br>

    <label ><b>Confirmed</b></label><br><br>
    <input type="text" name="confirm" placeholder="Enter Yes or No"><br><br>
    
  
    
     <label ><b>Quarantine</b></label><br>
    <input type="text" placeholder=" Enter No Of Days" name="quar">

    <hr>

    
  </div>
   <button type="submit" >Submit</button>
       
</form>


</body>
</html>