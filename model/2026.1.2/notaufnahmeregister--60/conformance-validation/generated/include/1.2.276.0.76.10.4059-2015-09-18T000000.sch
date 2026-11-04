<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4059
Name: BGA durchgeführt
Description: Diagnostik Template Blood gas analysis
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4059-2015-09-18T000000">
   <title>BGA durchgeführt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]"
         id="d15e12500-false-d14413e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]) &gt;= 1">(BGA durchgeführt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]) &lt;= 1">(BGA durchgeführt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]"
         id="d15e12538-false-d14438e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(BGA durchgeführt): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(BGA durchgeführt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(BGA durchgeführt): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4059']) &gt;= 1">(BGA durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.10.4059'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4059']) &lt;= 1">(BGA durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.10.4059'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(BGA durchgeführt): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '18767-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(BGA durchgeführt): Element hl7:code[(@code = '18767-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '18767-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(BGA durchgeführt): Element hl7:code[(@code = '18767-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(BGA durchgeführt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(BGA durchgeführt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(BGA durchgeführt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(BGA durchgeführt): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(BGA durchgeführt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(BGA durchgeführt): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(BGA durchgeführt): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:templateId[@root = '1.2.276.0.76.10.4059']
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:templateId[@root = '1.2.276.0.76.10.4059']"
         id="d15e12548-false-d14561e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4059')">(BGA durchgeführt): Der Wert von root MUSS '1.2.276.0.76.10.4059' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:id[not(@nullFlavor)]
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:id[not(@nullFlavor)]"
         id="d15e12556-false-d14580e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:code[(@code = '18767-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:code[(@code = '18767-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e12561-false-d14593e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="@nullFlavor or (@code='18767-4' and @codeSystem='2.16.840.1.113883.6.1')">(BGA durchgeführt): Der Elementinhalt MUSS einer von 'code '18767-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:text
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:text"
         id="d15e12568-false-d14613e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(BGA durchgeführt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(BGA durchgeführt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:text/hl7:reference
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:text/hl7:reference"
         id="d15e12575-false-d14641e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:statusCode[@code = 'completed']
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:statusCode[@code = 'completed']"
         id="d15e12581-false-d14654e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(BGA durchgeführt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:effectiveTime
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:effectiveTime"
         id="d15e12588-false-d14674e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="not(*)">(BGA durchgeführt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4059
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (BGA durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e12596-false-d14693e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BGA durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(BGA durchgeführt): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4059-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(BGA durchgeführt): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
</pattern>
