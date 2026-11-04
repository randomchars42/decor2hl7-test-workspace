<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.58
Name: CT Thorax durchgeführt
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein CT des Thorax durchgeführt?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000">
   <title>CT Thorax durchgeführt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]"
         id="d15e19860-false-d25575e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]) &gt;= 1">(CT Thorax durchgeführt): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]) &lt;= 1">(CT Thorax durchgeführt): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]"
         id="d15e19871-false-d25600e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(CT Thorax durchgeführt): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(CT Thorax durchgeführt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="@negationInd">(CT Thorax durchgeführt): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CT Thorax durchgeführt): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']) &gt;= 1">(CT Thorax durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']) &lt;= 1">(CT Thorax durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '169069000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CT Thorax durchgeführt): Element hl7:code[(@code = '169069000' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '169069000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CT Thorax durchgeführt): Element hl7:code[(@code = '169069000' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(CT Thorax durchgeführt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CT Thorax durchgeführt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CT Thorax durchgeführt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CT Thorax durchgeführt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']"
         id="d15e19885-false-d25694e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CT Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.58')">(CT Thorax durchgeführt): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.58' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:code[(@code = '169069000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:code[(@code = '169069000' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19893-false-d25713e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CT Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="@nullFlavor or (@code='169069000' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Computed tomography of chest (procedure)')">(CT Thorax durchgeführt): Der Elementinhalt MUSS einer von 'code '169069000' codeSystem '2.16.840.1.113883.6.96' displayName='Computed tomography of chest (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:text
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:text"
         id="d15e19900-false-d25733e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(CT Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(CT Thorax durchgeführt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(CT Thorax durchgeführt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:text/hl7:reference
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:text/hl7:reference"
         id="d15e19907-false-d25761e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CT Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:statusCode[@code = 'completed']
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:statusCode[@code = 'completed']"
         id="d15e19913-false-d25774e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CT Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(CT Thorax durchgeführt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.58
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:effectiveTime
Item: (CT Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]/hl7:effectiveTime"
         id="d15e19920-false-d25794e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CT Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.html"
              test="not(*)">(CT Thorax durchgeführt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
