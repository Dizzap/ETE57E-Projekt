<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
      [
        <xsl:for-each select="univerzita/studenti/student">
          <xsl:sort select="prijmeni"/>
        {
          "jmeno": "<xsl:value-of select="jmeno"/>",
          "prijmeni": "<xsl:value-of select="prijmeni"/>",
          "id": "<xsl:value-of select="@id"/>"          
        }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
      ]
    </xsl:template>
</xsl:stylesheet>
