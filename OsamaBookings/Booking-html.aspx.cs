using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace OsamaBookings
{
    public partial class Booking_html : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Xml1.DocumentSource = "Bookings-Xml.xml";
            Xml1.TransformSource = "BookingsCssHtml.xslt";
        }
    }
}