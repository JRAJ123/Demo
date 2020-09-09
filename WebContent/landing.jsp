
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%!String mn="mahaboobnagar";
String kn="karimnagar";
String nlgn="nalgonda";
String hyd="hyderabad";
String warangal="warangal";
String ktgm="badradri kothagudem";
String nizam="nizambad";
String adi="adilabad";
String mh="mahabubabad";
String med="medak";
String sp="suryapet";
String sr="sangareddy";
String siddipet="siddipet";
%>



<%
response.setContentType("text/html");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select cases from active where district='"+siddipet+"' ");
if (rs.next())
{
	siddipet=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+sr+"' ");
if (rs.next())
{
	sr=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+sp+"' ");
if (rs.next())
{
	sp=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+med+"' ");
if (rs.next())
{
	med=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+mh+"' ");
if (rs.next())
{
	mh=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+adi+"' ");
if (rs.next())
{
	adi=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+nizam+"' ");
if (rs.next())
{
	nizam=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+kn+"' ");
if (rs.next())
{
	kn=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+mn+"' ");
if (rs.next())
{
	mn=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+warangal+"' ");
if (rs.next())
{
	warangal=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+nlgn+"' ");
if (rs.next())
{
	nlgn=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+hyd+"' ");
if (rs.next())
{
	hyd=rs.getString("cases");
	
}
rs = st.executeQuery("select cases from active where district='"+ktgm+"' ");
if (rs.next())
{
	ktgm=rs.getString("cases");
	
}
con.close();
%>


   
<!DOCTYPE html>
<html>
<head>
<style>
input::placeholder {
text-color:white;
  color: red;
}
</style>
<meta charset="ISO-8859-1">
<%
String email=(String)session.getAttribute("email");

%>
 <title>Covid-20</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css" type="text/css" />
  <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" />
  <link rel="stylesheet" href="css/owl.theme.css" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="owl.carousel.min.js"></script>
  <script>

$(document).ready(function () {
   
  $("#owl-demo").owlCarousel({
 
      navigation :true, // Show next and prev buttons
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 
  });
  
});

</script>
 <style>
body {
  background-image: url('c2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  
}
</style>
</head>


<body>
 
<nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Covid2020</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="active.jsp">Active</a></li>
            <li><a href="deaths.jsp">&nbsp;Deaths</a></li>
            
             
             
           </ul>
          
           
           <% 
          if(email!=null ){	%>
           <ul class="nav navbar-nav">
           
             <li><a href="cured.jsp">&nbsp;Recovery Patients list</a></li>
             <li><a href="quarantine.jsp">&nbsp;Quarantine Patients list</a></li>
             <li><a href="death.jsp">&nbsp;Death Patients list</a></li>
             
             
           </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" ><%= email %> <span class="caret"></span></a>
              
              <ul class="dropdown-menu">

                <li><a href="MyProfile.jsp">Edit Profile</a></li>
                <li><a href="patientreg.jsp">Patient Register</a></li>
                <li><a href="OutPatientDetails.jsp">Patient Discharge Register</a></li>
               <li><a href="logout.jsp"><span>logout</span></a></li>
               </ul>
              </li></ul>
         </ul>
           <%}else{ %>
           <ul class="nav navbar-nav navbar-right">
           <ul><li class="active"><a href="login.jsp" > Login <span class="sr-only">(current)</span></a></li>
            
          
          <li class="active"><a href="registration.jsp" >SignUp<span class="sr-only">(current)</span></a></li>
                     </ul>
                     <%} %>
	
        </div>
      </div>
    </nav>
    <h3 style="font-style:bold;"><marquee>
    <input   placeholder='mahaboobnagar-<%=mn%>'>&nbsp;
    <input  placeholder='karimnagar-<%=kn%>'>&nbsp;
    <input type='text' placeholder='nalgonda-<%=nlgn%>'>&nbsp;
    <input type='text' placeholder='hyderabad-<%=hyd%>'>&nbsp;
    <input type='text' placeholder='warangal-<%=warangal%>'>&nbsp;
    <input type='text' placeholder='badradrikothagudem-<%=ktgm%>'>&nbsp;
    <input type='text' placeholder='nizambad-<%=nizam %>'>&nbsp;
    <input type='text' placeholder='adilabad-<%=adi%>'>&nbsp;
    <input type='text' placeholder='mahabubabad-<%=mh%>'>&nbsp;
    <input type='text' placeholder='medak-<%=med%>'>&nbsp;
    <input type='text' placeholder='suryapet-<%=sp%>'>&nbsp;
    <input type='text' placeholder='sangareddy-<%=sr%>'>&nbsp;
    <input type='text' placeholder='siddipet-<%=siddipet%>'></marquee></h3>
          
          
    </body>
    </html>
    