﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

	<xsl:template match="Bookings">
		<Bookings>
			<xsl:apply-templates/>
		</Bookings>

	</xsl:template>
	<xsl:template match="Booking">
		<Booking>
			<xsl:for-each select="*">
				<xsl:attribute name="{name()}">
					<xsl:value-of select="text()"/>
				</xsl:attribute>
			</xsl:for-each>
		</Booking>
	</xsl:template>
</xsl:stylesheet>
