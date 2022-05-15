<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Googlemap.aspx.cs" Inherits="Googlemap" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> google map to clinic </title>

    <script type="text/html">
        function load(){
        if(GBrowserIsCompatible()){
var map = new GMap2(document.getElementById("map"));
        map.addControl(new GSmallMapControl());
         map.addControl(new GMapTypeControl());
        var center = new GLatLng(30.0764008, 31.2454738);
        map.setCenter(center, 14);
        map.setMapType(G_SATELLITE_MAP);
        geocoder = new GClientGeocoder();

        var marker = new GMarker(center, { draggable: true });
        map.addOverlay(marker);

        document.getElementByIs("lat").value = center.lat();
        document.getElementByIs("lng").value = center.lng();

        geocoder = new GClientGeocoder(); 

        GEvent.addListener(marker, "dragent", function() {
        var point = marker.getPoint();
        map.panTo(point);
        alert(point);
        document.getElementById("lat").value = point.lat();
        document.getElementById("lng").value = point.lng();
        });

        
        GEvent.addListener(map, "moveend", function() {
        map.clearOverlays();
        var center = map.getCenter();
      var marker = new GMarker (center, { draggable: true });
        map.addOverlay(marker);
        document.getElementById("lat").value = center.lat();
        document.getElementById("lng").value = center.lng();

                GEvent.addListener(marker, "dragent", function() {
        var point = marker.getpoint();

        map.panTo(point);
          document.getElementById("lat").value = center.lat();
        document.getElementById("lng").value = center.lng();
 
                 });
              });
            }
        }

        function showAddress(address){

        var map = new GMap2(document.getElementById("map"));
        map.addControl(new GSmallMapControl());
        map.addControl(new GMapTypeControl());
        if(geocoder){
        geocoder.getLatLng( 
        address, 
        Function(point){
        if(!point){
        alert(address + "city not found !");
        }
        else{
         document.getElementById("lat").value = point.lat();
        document.getElementById("lng").value = point.lng();
        map.clearOverlays()
        map.setCenter(point, 14);
        var marker = new GMarker(point, {draggable: true});
        map.addOverlay(marker);

           GEvent.addListener(marker, "dragent", function() {
        var pt = marker.getpoint();
          map.panTo(pt);
          document.getElementById("lat").value = pt.lat();
          document.getElementById("lng").value = pt.lng();
           });

          GEvent.addListener(map, "moveend", function() {
        map.clearOverlays();
        var center = map.getCenter();
      var marker = new GMarker (center, { draggable: true });
        map.addOverlay(marker);
        document.getElementById("lat").value = center.lat();
        document.getElementById("lng").value = center.lng();

 GEvent.addListener(marker, "dragent", function() {
        var pt = marker.getpoint();
          map.panTo(pt);
          document.getElementById("lat").value = pt.lat();
          document.getElementById("lng").value = pt.lng();
           });
          });
        }
        }
          );
        }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       
    
        <asp:Label ID="Label1" runat="server" Text="street"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
       
     <asp:Label ID="Label2" runat="server" Text="city"></asp:Label>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br />

         <asp:Label ID="Label3" runat="server" Text="state"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />

         <asp:Label ID="Label4" runat="server" Text="country"></asp:Label>
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
  
            <br />
        <asp:Button ID="Button1" runat="server" Text="Show Map" OnClick="Button1_Click1" />

          </div>
        <cc1:GMap ID="GMap1" runat="server" />
    </form>
</body>
</html>
