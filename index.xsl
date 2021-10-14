<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xsl 
BSD 3-Clause License

Copyright (c) 2021, 2024, 5 Mode
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-->

	<xsl:template match="CONTENT">

	  <HTML>
	  <HEAD>

      <TITLE>PHP Tips</TITLE>
	  
	  	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
		  <meta name="description" content="Welcome to PHP Tips. Tips about PHP, its usage, application, deployment and behond.."/>
	    <meta name="robots" content="index,follow"/>
      <meta name="author" content="5 Mode"/> 
     
	    <link rel="shortcut icon" href="/res/favicon.ico"/>
	  	
	  	<script language="text/javascript">
	  	<![CDATA[
      ]]>
		  </script>
		
	  </HEAD>

    <BODY style="background-color:#FFFFFF; margin:0">
      
      <table border="0" width="100%" height="100%">
      <tr>
        <td style="border-bottom: 4px solid gray; padding-top:7px;" align="left" colspan="2">
          &#8201;&#8201;<b>PHP tips</b>
          &#8201;&#8201;&#8201;&#8201;Downloads
          &#8201;&#8201;&#8201;&#8201;On Github
          &#8201;&#8201;&#8201;&#8201;Ask
          &#8201;&#8201;&#8201;&#8201;Feedback
          <br/>
        </td>
      </tr>   
		  <tr>
		    <td width="80%" height="100%" align="left" style="padding-left:10px; border-right: 4px solid gray;">
          
          <xsl:for-each select="ITEM[TYPE='tip']">
		
			    <xsl:sort select="INDEX" data-type="number" order="ascending"/>
		
			    <p>
		      	<span style="font-style:italic">
              <xsl:value-of select="DATE"/>
            </span><br/>
            <h2><xsl:value-of select="TITLE"/>
            </h2>
            <hr style="border-top: 1px dotted lightgray;"/>    
            <xsl:value-of select="BODY"/><br/><br/>
          </p>
		
	      	</xsl:for-each>
          
        </td>
        
        <td width="20%" height="100%" align="left">
          &#8201;
        </td>
        
      </tr>
      </table>
      
	  </BODY>
	  </HTML>
     	
	</xsl:template>

</xsl:stylesheet> 
