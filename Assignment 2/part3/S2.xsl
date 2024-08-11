<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/forecast">
    <html>
        <head>
            <title>Singapore weather forecast</title>
        </head>

        <body>
            <h1><xsl:value-of select="@queryLocation" /> [<xsl:value-of select="@queryTime" />]</h1>
        </body>

        <table style="width: 60%;text-align: center; border:2px solid black; margin: 0 auto;">
            <tr> 
                <th bgcolor="#D2691E" style="border:2px solid black; width:5%; font-weight: bold;">Date</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Mon</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Tue</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Wed</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Thu</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Fri</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Sat</th>
                <th bgcolor="#D2691E" style="border:2px solid black; width:10%; font-weight: bold;">Sun</th>
            </tr>

            <xsl:for-each select="weather">
                    <xsl:sort select="@yyyymmdd" order="descending"/>
                    <tr style="height: 100px;">
                        <td bgcolor="#D2691E" style="border:2px solid black;">
                            <xsl:value-of select="date" />
                            <xsl:text> </xsl:text>
                            <xsl:if test="month = 3"> 
                                <xsl:text> Jan</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 2"> 
                                <xsl:text> Feb</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 3"> 
                                <xsl:text> Mar</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 4"> 
                                <xsl:text> Apr</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 5"> 
                                <xsl:text> May</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 6"> 
                                <xsl:text> June</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 7"> 
                                <xsl:text> July</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 8"> 
                                <xsl:text> Aug</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 9"> 
                                <xsl:text> Sept</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 10"> 
                                <xsl:text> Oct</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 11"> 
                                <xsl:text> Nov</xsl:text>
                            </xsl:if>
                            <xsl:if test="month = 12"> 
                                <xsl:text> Dec</xsl:text>
                            </xsl:if>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Mon'">

                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />

                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partySunny.png" alt="rain" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Tues'">

                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />
                                    
                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partySunny.png" alt="rain" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Wed'">

                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />

                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partlySunny.png" alt="partlySunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Thu'">

                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />

                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partySunny.png" alt="rain" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Fri'">

                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />

                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partySunny.png" alt="rain" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Sat'">

                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />

                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partySunny.png" alt="rain" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td style="border:2px solid black;">
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Sun'">
                                    <xsl:value-of select="lowest" />° - <xsl:value-of select="highest" />° <br />

                                    <xsl:if test="overallCode = 'cloudy'">
                                        <img src="cloudy.png" alt="cloudy" /> <br />
                                        <span style="color: blue;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'thunderstorm'">
                                        <img src="thunderstorm.png" alt="thunderstorm" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'rain'">
                                        <img src="rain.png" alt="rain" /> <br />
                                        <span style="color: orange;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'sunny'">
                                        <img src="sunny.png" alt="sunny" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                    <xsl:if test="overallCode = 'partlySunny'">
                                        <img src="partySunny.png" alt="rain" /> <br />
                                        <span style="color: red;">
                                            <xsl:value-of select="overall" />
                                        </span>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text> </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        
                    </tr>
                </xsl:for-each>
        </table>

    </html>
  </xsl:template>

</xsl:stylesheet>