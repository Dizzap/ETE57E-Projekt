<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
Launcher {
	MainForm<xsl:for-each select="Launcher/MainForm"> {
		"user: "<xsl:value-of select="user"/>"
		"password: "<xsl:value-of select="password"/>"
		"user: "<xsl:value-of select="uses-permission"/>"
		}
		api<xsl:for-each select="api"> {
			"url: "<xsl:value-of select="url"/>"
			"method: "<xsl:value-of select="method"/>"
			"return: "<xsl:value-of select="return"/>"
		}	
		</xsl:for-each>
		uiSpecification <xsl:for-each select="uiSpecification"> { 
			"format :"<xsl:value-of select="format"/>"
			"version :"<xsl:value-of select="version"/>"
			"screenOrientation: "<xsl:value-of select="screenOrientation"/>"
			"screenSize: "<xsl:value-of select="screenSize"/>"
			"screenLayout: "<xsl:value-of select="screenLayout"/>"	
		}
		</xsl:for-each>
	</xsl:for-each>
}
</xsl:template>

</xsl:stylesheet>
