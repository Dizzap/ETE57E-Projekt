<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
{
	"Launcher": {		
		"MainForm":<xsl:for-each select="Launcher/MainForm"> {
			"user": "<xsl:value-of select="user"/>",
			"password": "<xsl:value-of select="password"/>",
			"uses-permission": "<xsl:value-of select="uses-permission"/>",
				"api": <xsl:for-each select="api"> {
				"url": "<xsl:value-of select="url"/>",
				"method": "<xsl:value-of select="method"/>",
				"return": "<xsl:value-of select="return"/>"
			},</xsl:for-each>
			"uiSpecification":<xsl:for-each select="uiSpecification"> {
				"format": "<xsl:value-of select="format"/>",
				"version": "<xsl:value-of select="version"/>",
				"screenOrientation": "<xsl:value-of select="screenOrientation"/>",
				"screenSize": "<xsl:value-of select="screenSize"/>",
				"screenLayout": "<xsl:value-of select="screenLayout"/>"
			},</xsl:for-each>
			"connections":<xsl:for-each select="connections"> {
				"protocol": "<xsl:value-of select="protocol"/>",
				"timeout": "<xsl:value-of select="timeout"/>"
			},</xsl:for-each>
			"width": "<xsl:value-of select="width"/>",
			"height": "<xsl:value-of select="height"/>",
			"adjustable": "<xsl:value-of select="adjustable"/>",
			"controls": "<xsl:value-of select="controls"/>",
			"movable": "<xsl:value-of select="movable"/>",
			"defaultPosition": "<xsl:value-of select="defaultPosition"/>",
			"opacity": "<xsl:value-of select="opacity"/>",
			"text": "<xsl:value-of select="text"/>",
			"serverPath": "<xsl:value-of select="serverPath"/>",
			"localPath": "<xsl:value-of select="localPath"/>",
			"dataCheck": "<xsl:value-of select="dataCheck"/>",
			"updateRequired": "<xsl:value-of select="updateRequired"/>",
			"loginButton": {<xsl:for-each select="loginButton">
				"visible": "<xsl:value-of select="visible"/>",
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>"
			},</xsl:for-each>
			"backgroundImage": {<xsl:for-each select="backgroundImage">
				"path": "<xsl:value-of select="path"/>",
				"visible": "<xsl:value-of select="visible"/>",
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>"
			},</xsl:for-each>
			"label1": {<xsl:for-each select="label1">
				"visible": "<xsl:value-of select="visible"/>",
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>"
			},</xsl:for-each>
			"gallery": {<xsl:for-each select="gallery">
				"visible": "<xsl:value-of select="visible"/>",
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",
				"imageSource": {<xsl:for-each select="imageSource">
					"path": "<xsl:value-of select="path"/>",
					"ending": "<xsl:value-of select="ending"/>",
					"max_count": "<xsl:value-of select="max_count"/>"
				},</xsl:for-each>
				"slideshow": "<xsl:value-of select="slideshow"/>",
				"slideTime": "<xsl:value-of select="slideTime"/>"
			},</xsl:for-each>
			"progressBar": {<xsl:for-each select="progressBar">
				"value": "<xsl:value-of select="value"/>",
				"visible": "<xsl:value-of select="visible"/>",
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",
				"increaseBy": "<xsl:value-of select="increaseBy"/>"
			}</xsl:for-each>	
		},</xsl:for-each>
		"InputForm": {<xsl:for-each select="Launcher/InputForm">
			"width": "<xsl:value-of select="width"/>",
			"height": "<xsl:value-of select="height"/>",
			"adjustable": "<xsl:value-of select="adjustable"/>",
			"controls": "<xsl:value-of select="controls"/>",
			"movable": "<xsl:value-of select="movable"/>",
			"defaultPosition": "<xsl:value-of select="defaultPosition"/>",
			"opacity": "<xsl:value-of select="opacity"/>",
			"text": "<xsl:value-of select="text"/>",
			"headingTextbox": {<xsl:for-each select="headingTextbox">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",
				"maxLenght": "<xsl:value-of select="maxLenght"/>",
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"bodyTextBox": {<xsl:for-each select="bodyTextBox">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",
				"maxLenght": "<xsl:value-of select="maxLenght"/>",
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"headingLabel": {<xsl:for-each select="headingLabel">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"bodyLabel": {<xsl:for-each select="bodyLabel">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"sendButton": {<xsl:for-each select="sendButton">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"closeButton": {<xsl:for-each select="closeButton">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			}</xsl:for-each>			
		},</xsl:for-each>
		"LoginForm": {<xsl:for-each select="Launcher/LoginForm">
			"width": "<xsl:value-of select="width"/>",
			"height": "<xsl:value-of select="height"/>",
			"adjustable": "<xsl:value-of select="adjustable"/>",
			"controls": "<xsl:value-of select="controls"/>",
			"movable": "<xsl:value-of select="movable"/>",
			"defaultPosition": "<xsl:value-of select="defaultPosition"/>",
			"opacity": "<xsl:value-of select="opacity"/>",
			"text": "<xsl:value-of select="text"/>",
			"loginLabel": {<xsl:for-each select="loginLabel">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"pswdLabel": {<xsl:for-each select="pswdLabel">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"loginTextBox": {<xsl:for-each select="loginTextBox">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>",
				"maxInput": "<xsl:value-of select="maxInput"/>"
			},</xsl:for-each>
			"pswdTextBox": {<xsl:for-each select="pswdTextBox">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>",
				"char": "<xsl:value-of select="char"/>",
				"maxInput": "<xsl:value-of select="maxInput"/>"
			},</xsl:for-each>
			"image": {<xsl:for-each select="image">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>"
			},</xsl:for-each>
			"loginButton": {<xsl:for-each select="loginButton">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			},</xsl:for-each>
			"cancelButton": {<xsl:for-each select="cancelButton">
				"width": "<xsl:value-of select="width"/>",
				"height": "<xsl:value-of select="height"/>",				
				"text": "<xsl:value-of select="text"/>"
			}</xsl:for-each>
		}</xsl:for-each>
	}
}
</xsl:template>
</xsl:stylesheet>
