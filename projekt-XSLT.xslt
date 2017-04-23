<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/"> 
      [
      <xsl:for-each select="//loginButton">
        <xsl:if test="width > 70">
          {
          "width: "<xsl:value-of select="width"/>"
          }
        </xsl:if>
      </xsl:for-each>
			]    
    </xsl:template>
</xsl:stylesheet>
