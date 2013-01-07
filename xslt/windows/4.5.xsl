<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">

	<xsl:template match="container">
		<xsl:if test="layout[@type='horizontal' or @type='vertical']">
			<StackPanel>
				<xsl:if test="layout[@type='horizontal']">
					<xsl:attribute name="Orientation">Horizontal</xsl:attribute>
				</xsl:if>
				<xsl:apply-templates/>
			</StackPanel>
		</xsl:if>
	</xsl:template>

	<xsl:template match="text-button">
		<Button>
			<xsl:apply-templates select="node()|@*"/>
		</Button>
	</xsl:template>

	<xsl:template match="checkbox">
		<CheckBox>
			<xsl:apply-templates select="node()|@*"/>
		</CheckBox>
	</xsl:template>

	<xsl:template match="text-input">
		<TextBox>
			<xsl:apply-templates select="node()|@*"/>
		</TextBox>
	</xsl:template>

	
	<xsl:template match="@id">
		<xsl:attribute name="x:Name">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>