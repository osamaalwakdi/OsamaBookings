<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				<titel>
					Xslt And Html
				</titel>
			</head>
			<Body>
				<table border="2" bgcolor="pink">
					<tr>
						<th>رقم الحجز</th>
						<th>إسم العميل</th>
						<th>البريد الالكتروني</th>
						<th>عدد الافراد</th>
						<th>تاريخ الوصول</th>
						<th>تاريخ المغادرة</th>
						<th>نوع الحجز</th>
					</tr>
					<xsl:for-each select="Bookings/Booking">
						<tr>
							<td>
								<xsl:value-of select="BookingID"/>
							</td>
							<td>
								<xsl:value-of select="CustName"/>
							</td>
							<td>
								<xsl:value-of select="CustEmail"/>
							</td>
							<td>
								<xsl:value-of select="GuestNo"/>
							</td>
							<td>
								<xsl:value-of select="InDate"/>
							</td>
							<td>
								<xsl:value-of select="OutDate"/>
							</td>
							<td>
								<xsl:value-of select="RoomType"/>
							</td>
						</tr>
						
					</xsl:for-each>
				</table>
			</Body>
			
		</html>
    </xsl:template>
</xsl:stylesheet>
