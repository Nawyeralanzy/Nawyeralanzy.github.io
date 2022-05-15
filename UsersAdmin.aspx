<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UsersAdmin.aspx.cs" Inherits="UsersAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="StyleSheet.css" rel="stylesheet" />
      <link rel="stylesheet" href="css/style.css"/>
    <link href="StyleSheet2.css" rel="stylesheet" />


    <style>

        
         
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
           
        .auto-style8 {
            width: 885px;
        }
           
    </style>
</head>
<body>

<div class="container">
    <div class="menu">
        <ul>
            <li> <a  href="MainPage.aspx">Main Page</a> </li>
             <li><a href="RegisterAdmin.aspx">Register User</a></li>

            <li><a href="UsersAdmin.aspx">Users in Website</a></li>
  
			 <li><a  href="medic.html">Medicines Encyclopedia</a></li>
			  <li><a  href="Consult.html">Consult a doctor</a></li>
        </ul>
    </div>
	</div>

     <div>
    
                <img src="img/LogobACK2.jpg" class="auto-style6" />


    </div>

    <form runat="server">
        <h3 style="color: #0000FF; font-style: italic" class="auto-style8">View All Users Information</h3>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</form>
</body>
</html>