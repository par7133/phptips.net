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
         window.addEventListener("load", function() {
           document.getElementById("tdl").style.Height = parseInt(window.innerHeight) + "px"; 
         });
      ]]>
		  </script>
		
      <style>
        .aaa {
          color:#8892bf;
          text-decoration: none;
          font-weight:900;
        }
      </style>  
    
	  </HEAD>

    <BODY style="background-color:#FFFFFF; margin:0">
      
      <table border="0" width="100%" height="100" style="border:0;margin:0;">
      <tr>
        <td style="border-bottom: 0.5px solid lightgray; padding-left:55px; padding-top:13px; padding-bottom:13px;" align="left" colspan="2">
          &#8201;&#8201;&#8201;<a href="/" class="aaa"><span style="font-size:20px;color:black;"><i>PHP</i></span><span style="color:red;">tips</span></a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net/Downloads" class="aaa" style="font-size:20px;">Downloads</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net" class="aaa" style="font-size:20px;">On Github</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net/discussions" class="aaa" style="font-size:20px;">Ask</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="mailto:info@phptips.net" class="aaa" style="font-size:20px;">Feedback</a>
          <br/>
        </td>
      </tr>   
		  <tr>
		    <td width="80%" align="left" style="background-color:darkgray; color:#FFFFFF;padding-left:10px; padding-right:10px; border-right: 0.5px solid lightgray;">
          
          <xsl:for-each select="ITEM[TYPE='tip']">
		
			    <xsl:sort select="INDEX" data-type="number" order="ascending"/>
		
			    <p>
		      	<span style="font-style:italic">
              <xsl:value-of select="DATE"/>
            </span><br/>
            <span style="font-size:16px; font-weight:900;"><xsl:value-of select="TITLE"/></span>
            <hr style="border-top: 1px dotted lightgray;"/>    
            <xsl:value-of select="BODY"/><br/><br/>
          </p>
		
	      	</xsl:for-each>
          
        </td>
        
        <td height="100" width="20%" align="left">
          &#8201;
        </td>
        
      </tr>
      </table>
      
	  </BODY>
	  </HTML>
     	
	</xsl:template>

</xsl:stylesheet> 
