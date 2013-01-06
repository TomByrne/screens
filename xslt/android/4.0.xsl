<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:android="http://schemas.android.com/apk/res/android">

	<xsl:template match="container">
		<xsl:if test="layout[@type='horizontal' or @type='vertical']">
			<LinearLayout>
				<xsl:attribute name="android:orientation">
					<xsl:value-of select="layout/@type"/>
				</xsl:attribute>

				<xsl:apply-templates/>
			</LinearLayout>
		</xsl:if>
	</xsl:template>


</xsl:stylesheet>