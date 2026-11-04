<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4063
Name: CT o.n.A. durchgeführt
Description: Diagnostik Template Computerized axial tomography
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4063-2015-09-18T000000">
   <title>CT o.n.A. durchgeführt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]"
         id="d15e13615-false-d15677e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]"
         id="d15e13653-false-d15702e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(CT o.n.A. durchgeführt): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(CT o.n.A. durchgeführt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CT o.n.A. durchgeführt): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4063']) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.10.4063'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4063']) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.10.4063'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '25045-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:code[(@code = '25045-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '25045-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:code[(@code = '25045-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:templateId[@root = '1.2.276.0.76.10.4063']
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:templateId[@root = '1.2.276.0.76.10.4063']"
         id="d15e13663-false-d15825e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4063')">(CT o.n.A. durchgeführt): Der Wert von root MUSS '1.2.276.0.76.10.4063' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:id[not(@nullFlavor)]
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:id[not(@nullFlavor)]"
         id="d15e13671-false-d15844e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:code[(@code = '25045-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:code[(@code = '25045-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e13676-false-d15857e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="@nullFlavor or (@code='25045-6' and @codeSystem='2.16.840.1.113883.6.1')">(CT o.n.A. durchgeführt): Der Elementinhalt MUSS einer von 'code '25045-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:text
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:text"
         id="d15e13683-false-d15877e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(CT o.n.A. durchgeführt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(CT o.n.A. durchgeführt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:text/hl7:reference
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:text/hl7:reference"
         id="d15e13690-false-d15905e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:statusCode[@code = 'completed']
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:statusCode[@code = 'completed']"
         id="d15e13696-false-d15918e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(CT o.n.A. durchgeführt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:effectiveTime
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:effectiveTime"
         id="d15e13703-false-d15938e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="not(*)">(CT o.n.A. durchgeführt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4063
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CT o.n.A. durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e13711-false-d15957e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CT o.n.A. durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CT o.n.A. durchgeführt): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4063-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CT o.n.A. durchgeführt): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
