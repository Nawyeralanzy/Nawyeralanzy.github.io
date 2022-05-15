<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clinicCustomer.aspx.cs" Inherits="clinicCustomer" %>

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
           
        .auto-style7 {
            margin-left: 400px;
                       text-align: center;
            margin-top: 14px;
                        font-size: 18px;
                        margin-right:auto;
            margin-bottom: 0px;
        }
           
        .auto-style8 {
            height: 306px;
        }
           
    </style>
</head>
<body>

<div class="container">
        <div class="menu">
        <ul>
            <li> <a  href="MainPage.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Salones Page </a> </li>
      

            <li><a href="MainPage.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Clinic Pages</a></li>
  
			 <li><a  href="Setting.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Setting</a></li>
			  <li><a  href="Login.aspx" style="font-weight: bold; font-family: 'times New Roman', Times, serif">Logout</a></li>
        </ul>
    </div>
	</div>

     <div>
    
                <img src="img/LogobACK2.jpg" class="auto-style6" />


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
  <img src="img/salmat.png" style="width:1535px; height: 350px"/>
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
    <br />

    <div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Text=" All Cilnic" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" BackColor="#99CCFF"></asp:Label>
     

        <br />


    </div>               


    <div id="department">
        <div class="section">
            <h3>Specialty Medical Clinics</h3>
            <img  src="img/clinic1.jpg" class="auto-style8" />
               <br />
        </div>

        <div class="section">
            <h3>My skin clinics</h3>
            <img src="img/clinic2.jpg" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
               <br />

        </div>

        <div class="section">
            <h3>Gulf Clinic</h3>
                        <img src="img/clinic3.jfif" />

            <br />
              <br />  <br />
            <br />
            <br />
            <br />
        </div>

                    <a href="ClinicOwner.aspx" style="font-family: 'Times New Roman', Times, serif; color: #000000">Read More >> </a>

    </div>



    <br />
    <br />
     <div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text=" Offers" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" BackColor="#99CCFF"></asp:Label>
     </div>

<br />

    <form id="form1" runat="server">
  
<asp:Label ID="lblResult" runat="server"/>


    <br />  
    <br />  
  
<div>  
    <asp:GridView runat="server" ID="gvImage" AutoGenerateColumns="False" AllowPaging="True" OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="ImageId" CellPadding="4" OnRowEditing="gvImage_RowEditing" OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" HeaderStyle-BackColor="Tomato" CssClass="auto-style7" HorizontalAlign="Center" GridLines="None" ForeColor="#333333">  
        <AlternatingRowStyle BackColor="White" />
        <Columns>  
            <asp:TemplateField HeaderText="Sr.No" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblImgId" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>  
                </ItemTemplate>  

<HeaderStyle Width="200px"></HeaderStyle>
            </asp:TemplateField>  
            <asp:TemplateField HeaderText="Offer Name" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("ImageName") %>'></asp:Label>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("ImageName") %>'></asp:TextBox>  
                </EditItemTemplate>  

<HeaderStyle Width="200px"></HeaderStyle>
            </asp:TemplateField>  
            <asp:TemplateField HeaderText="Offer Clinic Image" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="100px" />  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:Image ID="img_user" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="100px" />  
                    <br />  
                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                </EditItemTemplate>  

<HeaderStyle Width="200px"></HeaderStyle>
            </asp:TemplateField>  
         
        </Columns>  
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />

<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>  
</div>  
 
</form>
</body>
</html>