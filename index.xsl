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

      <TITLE>PHP Tips: All the tips..</TITLE>
	  
	  	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
		  <meta name="description" content="Welcome to PHP Tips. Tips about PHP, its usage, application, deployment and behond.."/>
	    <meta name="robots" content="index,follow"/>
      <meta name="author" content="5 Mode"/> 
     
	    <link rel="shortcut icon" href="/res/favicon.ico"/>
	  	
      <script src="./js/jquery-3.1.0.min.js" type="text/javascript"></script>

      <link href="/css/style1.css" type="text/css" rel="stylesheet"/>
    
	  </HEAD>

    <BODY style="background-color:#FFFFFF; margin:0">
      
      <table border="0" width="100%" height="100" style="border:0;margin:0;">
      <tr>
        <td width="100%" style="background-color:#e7e7e7;border-bottom: 3.5px solid #4c5d8d; padding-left:15px; padding-top:13px; padding-bottom:13px;" align="left" colspan="3">
        
          <div class="header-logo"><a href="/" class="aaa"><span style="font-size:32px;color:black;"><i>php</i></span><span style="color:red;">tips</span></a></div>
          <div class="header-link"><a href="https://github.com/par7133/phptips.net/tree/main/donwloads" class="aaa" style="font-size:20px;">Downloads</a></div>
          <div class="header-link"><a href="http://github.com/par7133/phptips.net" class="aaa" style="font-size:20px;">On Github</a></div>
          <div class="header-link"><a href="http://github.com/par7133/phptips.net/discussions" class="aaa" style="font-size:20px;">Ask</a></div>
          <div class="header-link"><a href="mailto:info@phptips.net" class="aaa" style="font-size:20px;">Feedback</a></div>
          
          <div style="float:right;position:relative;top;+14px;"><input id="q" list="liveres" type="text" placeholder="search" maxlength="30" style="width:29%;height:24px;min-width:375px;font-size:13px"/>&#8201;&#8201;</div>
          
          <datalist id="liveres">
          <xsl:for-each select="ITEM[TYPE='tip']">
		
			    <xsl:sort select="ID" data-type="number" order="ascending"/>

          <option>
            <xsl:attribute name="value"><xsl:value-of select="TITLE"/></xsl:attribute>
          </option>

	      	</xsl:for-each>
          </datalist>
          
          <br/>
          
        </td>   
      </tr>
      <tr>
        <td width="100%" style="background-color:#828eaf; border-bottom: 3.5px solid #4c5d8d;padding-left:15px;padding-top:13px; padding-bottom:13px;" colspan="3">
          
          <div class="cat"><a href="/" class="aaa3-selected">all</a></div>
          <div class="cat"><a href="/deployment.xml" class="aaa3">deployment</a></div>
          <div class="cat"><a href="/security.xml" class="aaa3">security</a></div>
          
        </td>  
      </tr>     
		  <tr>
		    <td width="70%" align="left" style="height:1900px; background-color:#4c5d8d; color:#FFFFFF; padding-top:10px; padding-left:10px; padding-right:10px; border-right: 0.5px solid lightgray; vertical-align:top;">
          
          <xsl:for-each select="ITEM[TYPE='tip']">
		
			    <xsl:sort select="ID" data-type="number" order="ascending"/>
		
			    <div>
            <xsl:attribute name="id"><xsl:value-of select="ID"/></xsl:attribute>
            <xsl:attribute name="style">padding:10px;</xsl:attribute>
		      	<span style="font-style:italic">
              <xsl:value-of select="DATE"/>
            </span><br/>
            <a>
              <xsl:attribute name="href"><xsl:value-of select="CAT"/>.xml</xsl:attribute>
              <xsl:attribute name="style">font-weight:900; color:#31bc31;</xsl:attribute>
              [&#8201;<xsl:value-of select="CAT"/>&#8201;]
            </a>
            &#8201;&#8201;<span style="font-weight:900;"><xsl:value-of select="TITLE"/></span>
            <hr style="border-top: 1px dotted lightgray;"/>    
            <pre><xsl:value-of select="BODY"/></pre>
            
            <xsl:choose>
            <xsl:when test="SEE!=''">
              see:&#8201;
              <a>
                <xsl:attribute name="href"><xsl:value-of select="SEEURL"/></xsl:attribute>
                <xsl:attribute name="style">font-weight:600; font-style:italic; color:#FFFFFF;</xsl:attribute>
                "<xsl:value-of select="SEE"/>"
              </a>  
            </xsl:when> 
            </xsl:choose>
             
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
              <span style="color:lightgray" class="bi bi-card-text">&lt; &gt;</span>&#8201;&#8201;<span style="white-space:no-wrap"><xsl:value-of select="TITLE"/></span>
            </a>
          </div>

          <hr style="border:0px; border-top: 1px dotted #f0f0f0;"/>  
    
	      	</xsl:for-each>

        </td>
        
        <td width="4%">
          &#8201;
        </td>  
      </tr>
      </table>
      
      <div id="footerCont">&#8201;</div>
      <div id="footer"><span style="background:#FFFFFF;opacity:0.7;">&#8201;&#8201;<a class="aaa" href="dd.html">Disclaimer</a>.&#8201;&#8201;A <a class="aaa" href="http://5mode.com">5 Mode</a> project and <a class="aaa" href="http://wysiwyg.systems">WYSIWYG</a> system. Some rights reserved.</span></div>

	  	<script>
        
        var linkt = [];
        var linkids = [];
        
        <xsl:for-each select="ITEM[TYPE='tip']">
  
        <xsl:sort select="ID" data-type="number" order="ascending"/>
  
        linkt[<xsl:value-of select="ID"/>] = "<xsl:value-of select='TITLE'/>";
        linkids[<xsl:value-of select="ID"/>] = <xsl:value-of select="ID"/>;
        
        </xsl:for-each>
         
        <![CDATA[                
      
          $("input#q").on("keydown",function(e){
            key = e.which; 
            if (key===13) {
              e.preventDefault();
              search(this);
            } else {
            }
          });    
      
         function search(this1) {
           var text = $(this1).val();
           var re = new RegExp(text, "gi");
           //reshtml = "<datalist id='liveres'>";
           for(i=1;i<linkt.length;i++) {
             title = linkt[i];
             id =  linkids[i];
             if (re.test(title)) {
               //reshtml = reshtml + "<option value='" + title + "'>";
               window.open("#"+id, "_self");
             }
           }
           //reshtml = reshtml + "</datalist>";
           //$("#contres").html(reshtml);    
         }
      
         function setFooterPos() {
           if (document.getElementById("footerCont")) {
             tollerance = 16;
             $("#footerCont").css("top", parseInt( window.innerHeight - $("#footerCont").height() - tollerance ) + "px");
             $("#footer").css("top", parseInt( window.innerHeight - $("#footer").height() - tollerance ) + "px");
           }
         }
      
         function mymain() {
         
           setTimeout("setFooterPos()", 1000);
     
         } 
                     
         mymain();
         
         window.addEventListener("resize", function() {
            mymain();
         });

      ]]>   
		  </script>
      
	  </BODY>
	  </HTML>
     	
	</xsl:template>

</xsl:stylesheet> 
