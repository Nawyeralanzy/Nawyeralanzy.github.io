﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SettingAdmin.aspx.cs" Inherits="SettingAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> Setting Admin Login  </title>

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


             .auto-style4 {
            margin-left: 396px;
        }
          
    .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style3 {
            width: 849px;
        }
        .auto-style6 {
            width: 1535px;
            height: 258px;
        }
           .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 807px;
        }
        .auto-style9 {
            width: 822px;
        }
           .auto-style10 {
            width: 1535px;
            height: 362px;
        }

            .auto-style1 {
            position: absolute;
            top: 150%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 350px;
            height: 452px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: #6eabdf;
        }
           </style>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
</head>
<body>
          <div class="menu">
        <ul>
            <li> <a  href="#" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Main Page </a> </li>
      

            <li><a href="#" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Clinic</a></li>
  
			 <li><a  href="Setting.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Setting</a></li>
			  <li><a  href="Login.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Login</a></li>
        </ul>
    </div>
    

    
    <div>

        <img src="img/LogobACK2.jpg" class="auto-style6" />
    </div>

            <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />        <br />

   <div id='cssmenuMM'>
                        <ul>
              <li style="font-size: medium" class="auto-style9"><a href='Setting.aspx' class="auto-style8">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large; font-family: 'Times New Roman', Times, serif; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; About FOR U&nbsp; Website</span></a><span class="auto-style2"><span style="font-size: medium; font-family: 'Times New Roman', Times, serif;"> </span>
                  </span></li>                 

                     <li style="font-size: medium"><a href='SettingAdmin.aspx' class="auto-style7" style="color: #FFFFFF"><span style="font-size: medium; font-family: 'Times New Roman', Times, serif; color: #000000;">LogIn Admin</span></a></li>
            
                        

                        </ul>
                    </div>
    <div>
                <img src="img/about.jfif" class="auto-style10" />


    </div>
                        <br />
   <div class="auto-style1">
         <h2>Login to For U </h2>
            <br />
                        <br />

        <form runat="server">

            <asp:Label  CssClass="lblemail" runat="server" Text="Email" />
            <asp:TextBox  placeholder="Enter Email" CssClass="txtemail" runat="server" ID="email"></asp:TextBox>
           
             <asp:Label CssClass="lblpass" runat="server" Text="Password"></asp:Label>
            <asp:TextBox  placeholder="*************" CssClass="txtpass" runat="server" ID="password"></asp:TextBox>

                         <asp:Label CssClass="lblemail" runat="server" Text="Select User"></asp:Label>

             <asp:DropDownList ID="DropDownList1" runat="server" Width="258px" Height="32px"  >
                    <asp:ListItem>Admin </asp:ListItem>
                   

                </asp:DropDownList>
            <br />
              <br />       
                   <br />
      <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="Incorrect User Credentials"></asp:Label>
             <br />
            <asp:Button runat="server" Text="Sign in" CssClass="btnsubmit" OnClick="Unnamed4_Click"  />
            
               </form>
    </div>
                      

    
          <br />        <br />
                        <br />
                        <br />        <br />
                        <br />
                        <br />        <br />
                        <br />
                        <br />        <br />
                        <br />
          
</body>
</html>
