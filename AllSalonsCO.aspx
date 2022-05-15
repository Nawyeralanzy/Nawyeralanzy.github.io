<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSalonsCO.aspx.cs" Inherits="AllSalonsCO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> All Services of Salones </title>
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
             .auto-style10 {
            left: 0px;
            top: 0px;
            height: 36px;
        }
        </style>
</head>
<body>

<div class="container">
        <div class="menu">
        <ul>
            <li> <a  href="MainPageSalon.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Salones Page </a> </li>
      

            <li><a href="MainPage.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Clinic Pages</a></li>
  
			 <li><a  href="Setting.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Setting</a></li>
			  <li><a  href="Login.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Logout</a></li>
        </ul>
    </div>
	</div>

     <div>
    
                <img src="img/LogobACK2.jpg" class="auto-style6" />


    </div>


   
        
     <form id="form2" runat="server">

                <div id='cssmenuMM'>
                        <ul class="auto-style10">
         
  <h2 style="color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text=" View All Service of Salons" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" ></asp:Label>
     

                            </h2>
   
                        </ul>

                    </div>

  <br />

   
        
    <div>
    

        <asp:GridView ShowHeaderWhenEmpyu="true" ID="gvPhoneBook" runat="server" AutoGenerateColumns="False"  DataKeyNames="PhoneBookID"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"  Height="168px" HorizontalAlign="Center" Width="918px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#4eb977" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
     
            <Columns>
                <asp:TemplateField HeaderText="Name of Salones">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("First") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfirst" Text='<%# Eval("First") %>' runat="server" />
                    </EditItemTemplate>
              
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Services of Salones">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Last") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtlast" Text='<%# Eval("Last") %>' runat="server" />
                    </EditItemTemplate>
              
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Price of Services for Salones">
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Ibsuccess" Text="" runat="server" ForeColor="Green" />
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="iberror" Text="" runat="server" ForeColor="Red" />

    </div>
    </form>





</body>
</html>