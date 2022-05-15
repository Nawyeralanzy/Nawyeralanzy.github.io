using System;
using Subgurim.Controles;

using System.Configuration;

public partial class Googlemap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {

        string fulladdress = string.Format("{0}.{1}.{2}", TextBox1.Text, txtCity.Text, txtCountry.Text);
        string skey = ConfigurationManager.AppSettings["googlemaps.subgurim.net"];
        GeoCode geocode;
        geocode = GMap1.getGeoCodeRequest(fulladdress);
        var glatlng = new Subgurim.Controles.GLatLng(geocode.Placemark.coordinates.lat, geocode.Placemark.coordinates.lng);
        GMap1.setCenter(glatlng, 16, Subgurim.Controles.GMapType.GTypes.Normal);
        var oMarker = new Subgurim.Controles.GMarker(glatlng);
        GMap1.addGMarker(oMarker);
    }
}
