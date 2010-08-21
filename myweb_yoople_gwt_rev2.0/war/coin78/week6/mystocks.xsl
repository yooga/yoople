<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>
	<xsl:template match="/">
	  <html>
	     <body>
	        <h1 align="center">My Favorite Stocks</h1>
	        <xsl:for-each select="mystocks/stock">
            <table border="0" cellpadding="2" cellspacing="1" width="960" align="center">
              <tr bgcolor="#938A8A">
                 <th>Summary</th>
                 <th>Profile</th>
                 <th>Key Statistics</th>
              </tr>
              <tr bgcolor="#F8F2F2">
                 <td width="200">
                 Stock Symbol:
                 <xsl:value-of select="summary/symbol"/>
                 <br />
                 Last Trade:
                 <xsl:value-of select="summary/last_trade"/>
                 <br />
                 Previous Close:
                 <xsl:value-of select="summary/previous_close"/>
                 <br />
                 Trade Volume:
                 <xsl:value-of select="summary/volume"/>
                 <br />
                 Day Range:
                 <xsl:value-of select="summary/day_range"/>
                 <br />
                 </td>
                 <td width="560">
                 Company Name:
                 <xsl:value-of select="profile/company_name"/>
                 <br />
                 Address:
                 <xsl:value-of select="profile/address"/>
                 <br />
                 Phone:
                 <xsl:value-of select="profile/phone"/>
                 <br />
                 Fax:
                 <xsl:value-of select="profile/fax"/>
                 <br />
                 Website:
                 <xsl:apply-templates select="profile/website" /> 
                 <br />
                 Sector:
                 <xsl:value-of select="profile/sector"/>
                 <br />
                 </td>
                 <td width="200">
                 Market Cap:
                 <xsl:value-of select="key_statistics/market_cap"/>
                 <br />
                 Profit Margin:
                 <xsl:value-of select="key_statistics/profit_margin"/>
                 <br />
                 Revenue:
                 <xsl:value-of select="key_statistics/revenue"/>
                 <br />
                 Total Cash:
                 <xsl:value-of select="key_statistics/total_cash"/>
                 <br />
                 Total Debt:
                 <xsl:value-of select="key_statistics/total_debt"/>
                 <br />
                 Shares_outstanding:
                 <xsl:value-of select="key_statistics/shares_outstanding"/>
                 <br />
                 </td>
              </tr>
            </table>
            <br />
            </xsl:for-each>
	     </body>
	  </html>
	</xsl:template>
	<xsl:template match="website">
       <a>
          <xsl:attribute name="href">
             <xsl:value-of select="./@href" /> 
          </xsl:attribute>
          <xsl:attribute name="title">
             <xsl:value-of select="." /> 
          </xsl:attribute>
          <xsl:attribute name="target">_blank</xsl:attribute> 
          <xsl:value-of select="." /> 
       </a>
    </xsl:template>
</xsl:stylesheet>