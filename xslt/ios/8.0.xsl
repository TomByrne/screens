<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<archive type="com.apple.InterfaceBuilder3.Cocoa.XIB" version="8.00">
			<xsl:apply-templates/>
		</archive>
	</xsl:template>

	<xsl:template match="container">
		<xsl:if test="layout[@type='horizontal' or @type='vertical']">
			<object class="IBUIView">
				<!-- Add layout stuff here -->
				<xsl:apply-templates/>
			</object>
		</xsl:if>
	</xsl:template>


	<xsl:template match="text-button">
		<object class="IBUIButton">
			<xsl:apply-templates select="node()|@*"/>
		</object>
	</xsl:template>

	<xsl:template match="checkbox">
		<object class="IBUISwitch">
			<xsl:apply-templates select="node()|@*"/>
		</object>
	</xsl:template>

	<xsl:template match="text-input">
		<object class="IBUITextField">
			<xsl:apply-templates select="node()|@*"/>
		</object>
	</xsl:template>

	<xsl:template match="@id">
		<xsl:copy/>
	</xsl:template>
</xsl:stylesheet>