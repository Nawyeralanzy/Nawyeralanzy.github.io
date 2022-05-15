<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login For U  Website</title>

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
          

        .auto-style1 {
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 350px;
            height: 452px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: #6eabdf;
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
            width: 100px;
            height: 100px;
            overflow: hidden;
            top: 80px;
            left: 40px;
            position: absolute;
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
                        <br />        <br />
                        <br />
                        <br />        <br />
                        <br />
                        <br />        <br />
                        <br />
                        <br />        <br />
                        <br />
                        <br />        <br />
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
                    <asp:ListItem>Customer </asp:ListItem>
             

                    <asp:ListItem>Owner</asp:ListItem>
                                 

                </asp:DropDownList>
            <br />
              <br />       

            <asp:Button runat="server" Text="Sign in" CssClass="btnsubmit" OnClick="Unnamed4_Click"  />
               <br />
      <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="Incorrect User Credentials"></asp:Label>
             <br />
              &nbsp; &nbsp; <asp:LinkButton href="Register.aspx"  CssClass="btregister"  Text ="Not registered? Create an account" runat="server" />
            
               </form>
    </div>
     
</body>
</html>
