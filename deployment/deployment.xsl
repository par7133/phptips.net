<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: deployment.xsl 
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

      <TITLE>PHP Tips: Deployment</TITLE>
	  
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
	  	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
		  <meta name="description" content="Welcome to PHP Tips. Tips about PHP, its usage, application, deployment and beyond.."/>
	    <meta name="robots" content="index,follow"/>
      <meta name="author" content="5 Mode"/> 
     
	    <link rel="shortcut icon" href="../res/favicon.ico"/>
	  	
      <script src="../js/jquery-3.6.0.min.js" type="text/javascript"></script>

      <script src="https://missfries.com/phptips" type="text/javascript"></script>

      <link href="../css/style1.css" type="text/css" rel="stylesheet"/>
    
	  </HEAD>

    <BODY>
      
      <table class="main-table">
      <tr>
        <td class="header-td">
        
          <div class="burger-menu" style="display:none;"><img src="../res/burger-menu2.png" style="width:40px"/></div>
        
          <div class="header-logo"><a href="/" class="header-aaa"><span style="color:black;"><i>php</i></span><span style="color:red; font-size:20px;">tips</span></a></div>
          <div class="header-link noxs"><a href="https://github.com/par7133/phptips.net/tree/main/downloads" class="header-aaa">Downloads</a></div>
          <div class="header-link dktoponly"><a href="http://github.com/par7133/phptips.net/discussions" class="header-aaa">Talk</a></div>
          <div class="header-link dktoponly"><a href="http://github.com/par7133/phptips.net" class="header-aaa">Join in</a></div>
          <div class="header-link dktoponly"><a href="mailto:info@phptips.net" class="header-aaa">Feedback</a></div>

        </td>   
        <td class="search-td">  
          
          <input id="q" list="liveres" type="text" class="search-box" placeholder="search" maxlength="30"/>&#8201;&#8201;
          
          <datalist id="liveres">
          <xsl:for-each select="ITEM[TYPE='tip' and CAT='deployment']">
		
			    <xsl:sort select="ID" data-type="number" order="ascending"/>

          <option>
            <xsl:attribute name="value"><xsl:value-of select="TITLE"/></xsl:attribute>
          </option>

	      	</xsl:for-each>
          </datalist>
          
          <br/>
          
        </td>   
      </tr>
      <tr class="cat-list-tr">
        <td class="cat-list-td" colspan="2">
          
          <div class="cat" onclick="openLink('/','_self')"><a href="/" class="aaa3">all</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/deployment','_self')"><a href="/deployment" class="aaa3-selected">deployment</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/security','_self')"><a href="/security" class="aaa3">security</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/tuning','_self')"><a href="/tuning" class="aaa3">tuning</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/data','_self')"><a href="/data" class="aaa3">data</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/syntax','_self')"><a href="/syntax" class="aaa3">syntax</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/polyfills','_self')"><a href="/polyfills" class="aaa3">polyfills</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/oop','_self')"><a href="/oop" class="aaa3">oop</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/net','_self')"><a href="/net" class="aaa3">net</a></div><br class="mblonly" style="display:none;"/>
          <div class="cat" onclick="openLink('/int','_self')"><a href="/int" class="aaa3">int</a></div><br class="mblonly" style="display:none;"/>
          
        </td>  
      </tr>      
      <tr>
        <td id="content-td" colspan="2">
      
        <div id="content-cont">
      
        <table class="content-table">     
        <tr>
          <td class="tips-td">
            
            <xsl:for-each select="ITEM[TYPE='tip' and CAT='deployment']">
      
            <xsl:sort select="ID" data-type="number" order="ascending"/>
      
            <div>
              <xsl:attribute name="id"><xsl:value-of select="ID"/></xsl:attribute>
              <xsl:attribute name="style">padding:10px;</xsl:attribute>
              <span style="font-style:italic">
                <xsl:value-of select="DATE"/>
              </span><br/>
              <a>
                <xsl:attribute name="href">/<xsl:value-of select="CAT"/></xsl:attribute>
                <xsl:attribute name="style">font-weight:900; color:#31bc31;</xsl:attribute>
                [&#8201;<xsl:value-of select="CAT"/>&#8201;]
              </a>
              &#8201;&#8201;<span style="font-weight:900;"><xsl:value-of select="TITLE"/></span>
              <hr class="hr-tips"/>    
              <lt-content><pre style="width:100%;white-space:break-spaces;"><xsl:value-of select="BODY"/></pre></lt-content>
              
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
            
            <br/><br/><br/>
            
          </td>
          
          <td id="tdl" class="index-td">

            <xsl:for-each select="ITEM[TYPE='tip' and CAT='deployment']">
      
            <xsl:sort select="ID" data-type="number" order="ascending"/>
      
            <div class="index-ve-cont">
              <a>
                <xsl:attribute name="target">_self</xsl:attribute> 
                <xsl:attribute name="class">aaa2</xsl:attribute>
                <xsl:attribute name="href">#<xsl:value-of select="ID"/></xsl:attribute>
                <span style="color:lightgray">&lt; &gt;</span>&#8201;&#8201;<span style="white-space:no-wrap"><xsl:value-of select="TITLE"/></span>
              </a>
            </div>

            <hr class="hr-index"/>  
      
            </xsl:for-each>

          </td>
          
          <td width="4%" class="index-empty-td">
            &#8201;
          </td>  
        </tr>
        </table>
        </div>
      
      </td>  
      </tr>
      </table>

      <div id="footerCont">&#8201;</div>
      <div id="footer"><span style="background:#FFFFFF;opacity:0.7;">&#8201;&#8201;<a class="aaa" href="https://5mode.com/dd.html">Disclaimer</a>.&#8201;&#8201;A <a class="aaa" href="http://5mode.com">5 Mode</a> project and <a class="aaa" href="http://demo.5mode.com">WYSIWYG</a> system. Some rights reserved.</span></div>

	  	<script>
        
        var linkt = [];
        var linkids = [];
        
        <xsl:for-each select="ITEM[TYPE='tip' and CAT='deployment']">
  
        <xsl:sort select="ID" data-type="number" order="ascending"/>
  
        linkt[<xsl:value-of select="ID"/>] = "<xsl:value-of select='TITLE'/>";
        linkids[<xsl:value-of select="ID"/>] = <xsl:value-of select="ID"/>;
        
        </xsl:for-each>
         
      </script>
         
      <script src="../js/common.js" type="text/javascript"></script>

     
	  </BODY>
	  </HTML>
     	
	</xsl:template>

</xsl:stylesheet> 
