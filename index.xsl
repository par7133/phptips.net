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
	  			
      <style>
        .aaa {
          /*color:#8892bf;*/
          /*color: #824a14;*/
          color: #4c5d8d;
          text-decoration: none;
          font-weight:900;
        }
        .aaa2 {
          /*color:#8892bf;*/
          /*color: #824a14;*/
          color: #454545;
          text-decoration: none;
          font-weight:900;
        }
        .aaa2:hover {
          color: #31bc31;
        }
        #footerCont {
          position: fixed; 
          top: 2000px; 
          left:-10px;
          width: 102%; 
          border: 1px solid #C2DBF2; 
          padding: 7px; 
          background: white; 
          opacity: 0.3;
          color:white; 
          font-family: Sans;
          font-size: 12px; 
          text-align: center; 
          z-index: 99998;
        }
        #footer {
          position: fixed;
          float: right;
          top: 2000px; 
          left:-10px;
          width: 100%; 
          border: 0px solid #C2DBF2; 
          padding: 7px; 
          opacity: 1.0;
          color:black; 
          font-family: Sans;
          font-size: 12px; 
          font-weight: 400;
          text-align: right; 
          z-index: 99999;
        }  
      </style>  
    
      <script src="./js/jquery-3.1.0.min.js" type="text/javascript"></script>
    
	  </HEAD>

    <BODY style="background-color:#FFFFFF; margin:0">
      
      <table border="0" width="100%" height="100" style="border:0;margin:0;">
      <tr>
        <td width="74%" style="background-color:#e7e7e7;border-bottom: 3.5px solid #4c5d8d; padding-left:10px; padding-top:13px; padding-bottom:13px;" align="left" colspan="3">
          &#8201;&#8201;&#8201;<a href="/" class="aaa"><span style="font-size:32px;color:black;"><i>php</i></span><span style="color:red;">tips</span></a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net/Downloads" class="aaa" style="font-size:20px;">Downloads</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net" class="aaa" style="font-size:20px;">On Github</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net/discussions" class="aaa" style="font-size:20px;">Ask</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="mailto:info@phptips.net" class="aaa" style="font-size:20px;">Feedback</a>
          
          <div style="float:right;position:relative;top;+14px;"><input id="q" type="text" placeholder="search" maxlength="30" style="width:25%;height:24px;min-width:345px;font-size:13px"/>&#8201;&#8201;</div>
          
          <br/>
          
        </td>   
      </tr>   
		  <tr>
		    <td width="74%" align="left" style="height:1900px; background-color:#4c5d8d; color:#FFFFFF; padding-top:10px; padding-left:10px; padding-right:10px; border-right: 0.5px solid lightgray; vertical-align:top;">
          
          <xsl:for-each select="ITEM[TYPE='tip']">
		
			    <xsl:sort select="ID" data-type="number" order="ascending"/>
		
			    <div>
            <xsl:attribute name="id"><xsl:value-of select="ID"/></xsl:attribute>
            <xsl:attribute name="style">padding:10px;</xsl:attribute>
		      	<span style="font-style:italic">
              <xsl:value-of select="DATE"/>
            </span><br/>
            <span style="font-size:16px; font-weight:900; color:#31bc31;">[&#8201;<xsl:value-of select="CAT"/>&#8201;]</span>&#8201;<span style="font-size:16px; font-weight:900;"><xsl:value-of select="TITLE"/></span>
            <hr style="border-top: 1px dotted lightgray;"/>    
            <pre><xsl:value-of select="BODY"/></pre>
          </div>
		
	      	</xsl:for-each>
          
        </td>
        
        <td id="tdl" width="26%" align="left" style="padding-top:10px; vertical-align:top; min-width: 350px;">

          <xsl:for-each select="ITEM[TYPE='tip']">
		
			    <xsl:sort select="ID" data-type="number" order="ascending"/>
		
          <div style="padding-top:8px;padding-left:8px;">
            <a>
              <xsl:attribute name="target">_self</xsl:attribute> 
              <xsl:attribute name="class">aaa2</xsl:attribute>
              <xsl:attribute name="href">#<xsl:value-of select="ID"/></xsl:attribute>
              &lt; &gt;&#8201;&#8201;<span style="white-space:no-wrap"><xsl:value-of select="TITLE"/></span>
            </a>
          </div>

          <hr style="border:0px; border-top: 1px dotted #f0f0f0;"/>  
    
	      	</xsl:for-each>

        </td>
        
        <td width="6%">
          &#8201;
        </td>  
      </tr>
      </table>
      
      <div id="footerCont">&#8201;</div>
      <div id="footer"><span style="background:#FFFFFF;opacity:0.7;">&#8201;&#8201;<a class="aaa" href="dd.html">Disclaimer</a>.&#8201;&#8201;A <a class="aaa" href="http://5mode.com">5 Mode</a> project and <a class="aaa" href="http://wysiwyg.systems">WYSIWYG</a> system. Some rights reserved.</span></div>

	  	<script> 
      <![CDATA[                
         function setFooterPos() {
           if (document.getElementById("footerCont")) {
             tollerance = 16;
             $("#footerCont").css("top", parseInt( window.innerHeight - $("#footerCont").height() - tollerance ) + "px");
             $("#footer").css("top", parseInt( window.innerHeight - $("#footer").height() - tollerance ) + "px");
           }
         }
      
         function mymain() {
         
           //alert("hello!");
         
           setTimeout("setFooterPos()", 1000);
         
           //document.getElementById("tdl").style.min-height = parseInt(window.innerHeight) + "px"; 
         } 
                     
         mymain();
      ]]>   
		  </script>
      
	  </BODY>
	  </HTML>
     	
	</xsl:template>

</xsl:stylesheet> 
