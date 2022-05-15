<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClinicOwner.aspx.cs" Inherits="ClinicOwner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clinic Pages for Owner</title>
    
    <style type="text/css">
          table {
  width: 85%;
 
  border: 0px solid black;
  text-align: center;
}

          .center {
  text-align: center;

}
          #cssmenu ul
        {
            margin: 0;
            padding: 0;
            list-style-type: none;
            position: relative;
            display: block;
            height: 36px;
           
            font-size: 14px;
            font-weight: bold;
            background: #6eabdf;
            font-family: Helvetica, Arial, Verdana, sans-serif;
            border-bottom: 7px solid #004c99;
            border-top: 1px solid #74b0c6;
            width: auto;
        }
        #cssmenu li
        {
            display: block;
            float: left;
            margin: 0;
            padding: 0;
        }
        #cssmenu li a
        {
            display: block;
           text-align: center;
            color: #000000;
            text-decoration: none;
            font-weight: bold;
            padding: 12px 20px 0 20px;
            height: 24px;
              direction: ltr;
          }
        #cssmenu li a:hover
        {
          
            color: #808080
        }
          


         
          #cssmenuMM ul
        {
            margin: 0;
            padding: 0;
            list-style-type: none;
            position: relative;
            display: block;
            height: 36px;
           
            font-size: 14px;
            font-weight: bold;
            background: #ffffff;
            font-family: Helvetica, Arial, Verdana, sans-serif;
            border-bottom: 5px solid #004c99;
            border-top: 0px solid #74b0c6;
            width: auto;
        }
        #cssmenuMM li
        {
            display: block;
            float: left;
            margin: 0;
            padding: 0;
        }
        #cssmenuMM li a
        {
            display: block;
           text-align: center;
            color: #000000;
            text-decoration: none;
            font-weight: bold;
            padding: 12px 20px 0 20px;
            height: 24px;
              direction: ltr;
          }
        #cssmenuMM li a:hover
        {
          
            color: #808080
        }


             .auto-style6 {
            width: 1535px;
            height: 258px;
        }
           .auto-style10 {
            left: 0px;
            top: 0px;
            height: 36px;
        }
           
* {box-sizing: border-box}
.mySlides1, .mySlides2 {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a grey background color */
.prev:hover, .next:hover {
  background-color: #f1f1f1;
  color: black;
}
body{

        background-image: url('img/6065.jpg_wh860.jpg');

}
           </style>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
</head>


<body>
     

    
<div class="container">
        <div class="menu">
        <ul>
            <li> <a  href="MainPage.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Main Page </a> </li>
      

            <li><a href="Clinic page.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Clinic Page</a></li>
  
			 <li><a  href="Setting.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Setting</a></li>
			  <li><a  href="Login.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Logout</a></li>
        </ul>
    </div>
	</div>


  

      <br />    <br />  
     
    
   
           <br />    <br />  
     


      
         <div id='cssmenuMM'>
                        <ul class="auto-style10">
         
  <h2 style="color: #000000">View Clinic Page</h2>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
                        </ul>

                    </div>
      <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
    <img src="img/salman.jpg" style="width:1535px; height: 350px;"/>
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="img/takh.jpg" style="width:1535px; height: 350px"/>
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="pic/clinic4.jpg" style="width:1535px; height: 350px"/>
  <div class="text"></div>
</div>

</div>
<br/>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>
               <br />

     <form id="form1" runat="server">
    <div>
    

        <asp:GridView ShowHeaderWhenEmpyu="true" ID="gvPhoneBook" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="PhoneBookID"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="168px" HorizontalAlign="Center" Width="694px" EnableViewState="False">
            <FooterStyle BackColor="White" ForeColor="#000066" Wrap="True" />
            <HeaderStyle BackColor="#4eb977" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
     
            <Columns>
                <asp:TemplateField HeaderText="Name of Clinic">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("First") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfirst" Text='<%# Eval("First") %>' runat="server" />
                    </EditItemTemplate>
           
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Services of Clinic">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Last") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtlast" Text='<%# Eval("Last") %>' runat="server" />
                    </EditItemTemplate>
             
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Price of Services" >
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Contact") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtContact"  Text='<%# Eval("Contact") %>' runat="server" />
                    </EditItemTemplate>
                 
                </asp:TemplateField>

          

            </Columns>
               </asp:GridView>
         <br />
      
    </div>
    </form>


</body>
</html>
