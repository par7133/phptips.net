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

      <table border="0" width="100%" height="100" style="border:0;margin:0;">
      <tr>
        <td width="100%" style="background-color:#e7e7e7;border-bottom: 3.5px solid #4c5d8d; padding-left:10px; padding-top:13px; padding-bottom:13px;" align="left" colspan="3">
          &#8201;&#8201;&#8201;<a href="/" class="aaa"><span style="font-size:32px;color:black;"><i>php</i></span><span style="color:red;">tips</span></a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net/Downloads" class="aaa" style="font-size:20px;">Downloads</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net" class="aaa" style="font-size:20px;">On Github</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="http://github.com/par7133/phptips.net/discussions" class="aaa" style="font-size:20px;">Ask</a>
          &#8201;&#8201;&#8201;&#8201;&#8201;<a href="mailto:info@phptips.net" class="aaa" style="font-size:20px;">Feedback</a>
          
          <div style="float:right;position:relative;top;+14px;"><input id="q" list="liveres" type="text" placeholder="search" maxlength="30" style="width:25%;height:24px;min-width:345px;font-size:13px"/>&#8201;&#8201;</div>
          
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
        <td style="border-bottom: 3.5px solid #4c5d8d;padding-top:13px; padding-bottom:13px;" colspan="3">
    
          &#8201;&#8201;&#8201;&#8201;<a class="aaa2" href="#" onclick="loadData2('');">all</a>
          
          <xsl:for-each select="ITEM/CAT">
		
          <xsl:sort select="text()" data-type="text" order="ascending"/>
    
          &#8201;&#8201;&#8201;&#8201;
          <a>
            <xsl:attribute name="class">aaa2</xsl:attribute>
            <xsl:attribute name="href">#</xsl:attribute>
            <xsl:attribute name="onclick">loadData2("<xsl:value-of select='text()'/>");</xsl:attribute>
            <xsl:value-of select="text()"/>
          </a>
    
	      	</xsl:for-each>

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

      <script type="text/javascript">
      <![CDATA[
        var xslStylesheet2;
        var xsltProcessor2 = new XSLTProcessor();
        
        var myDOM2;
        
        var xmlDoc2;

        function loadData2(stylesheet) {

          switch (stylesheet) {
             case "":
               ss = "ss1.xsl";
               break; 
             default:
               ss = stylesheet + ".xsl";
               break; 
          } 

          // load the xslt file, example1.xsl
          var myXMLHTTPRequest2 = new XMLHttpRequest();
          myXMLHTTPRequest2.open("GET", ss, true);
          myXMLHTTPRequest2.send(null);

          xslStylesheet2 = myXMLHTTPRequest2.responseXML;
          xsltProcessor2.importStylesheet(xslStylesheet);

          // load the xml file, example1.xml
          myXMLHTTPRequest2 = new XMLHttpRequest();
          myXMLHTTPRequest2.open("GET", "data.xml", true);
          myXMLHTTPRequest2.send(null);

          xmlDoc2 = myXMLHTTPRequest2.responseXML;

          var fragment2 = xsltProcessor2.transformToFragment(xmlDoc2, document);
          
          var myDOM2 = fragment2;
          
          //document.getElementById("content").textContent = "";
          
          document.getElementById("content").appendChild(fragment2);
        }
       ]]>
      </script>  


	  	<script type="text/javascript">
        
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
      
         function loadres() {
         
         }
      
         function mymain() {
         
           //alert("hello!");
         
           setTimeout("setFooterPos()", 1000);
         
           //document.getElementById("tdl").style.min-height = parseInt(window.innerHeight) + "px"; 
         } 
                     
         mymain();
      ]]>   
		  </script>
      
	</xsl:template>

</xsl:stylesheet> 
