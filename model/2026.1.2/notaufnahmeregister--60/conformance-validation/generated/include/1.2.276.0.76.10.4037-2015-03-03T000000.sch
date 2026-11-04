<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4037
Name: Transportmethode
Description: Transportmethode
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4037-2015-03-03T000000">
   <title>Transportmethode</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]"
         id="d15e7468-false-d6818e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]) &gt;= 1">(Transportmethode): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]) &lt;= 1">(Transportmethode): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]"
         id="d15e7501-false-d6843e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="string(@classCode) = ('OBS')">(Transportmethode): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="string(@moodCode) = ('EVN')">(Transportmethode): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4037']) &gt;= 1">(Transportmethode): Element hl7:templateId[@root = '1.2.276.0.76.10.4037'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4037']) &lt;= 1">(Transportmethode): Element hl7:templateId[@root = '1.2.276.0.76.10.4037'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:id) &lt;= 1">(Transportmethode): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Transportmethode): Element hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Transportmethode): Element hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:text) &lt;= 1">(Transportmethode): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Transportmethode): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Transportmethode): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Transportmethode): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Transportmethode): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Transportmethode): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:templateId[@root = '1.2.276.0.76.10.4037']
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:templateId[@root = '1.2.276.0.76.10.4037']"
         id="d15e7509-false-d6954e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4037')">(Transportmethode): Der Wert von root MUSS '1.2.276.0.76.10.4037' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:id
Item: (Transportmethode)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e7522-false-d6982e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="@nullFlavor or (@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')">(Transportmethode): Der Elementinhalt MUSS einer von 'code '11459-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:text
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:text"
         id="d15e7529-false-d7002e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:reference) &gt;= 1">(Transportmethode): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:reference) &lt;= 1">(Transportmethode): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:text/hl7:reference
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:text/hl7:reference"
         id="d15e7536-false-d7030e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:statusCode[@code = 'completed']
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:statusCode[@code = 'completed']"
         id="d15e7542-false-d7043e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Transportmethode): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:effectiveTime
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:effectiveTime"
         id="d15e7549-false-d7063e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:high) &gt;= 1">(Transportmethode): Element hl7:high ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="count(hl7:high) &lt;= 1">(Transportmethode): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:effectiveTime/hl7:high
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:effectiveTime/hl7:high"
         id="d15e7556-false-d7091e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="not(*)">(Transportmethode): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4037
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Transportmethode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e7562-false-d7110e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Transportmethode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Transportmethode): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.41 Transportmethode (2015-11-17T00:00:00)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.41-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4037-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Transportmethode): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.41 Transportmethode (2015-11-17T00:00:00).</assert>
   </rule>
</pattern>
