<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.59
Name: CT Abdomen durchgeführt
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT des Abdomens durchgführt?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000">
   <title>CT Abdomen durchgeführt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]"
         id="d15e19936-false-d25818e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]) &gt;= 1">(CT Abdomen durchgeführt): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]"
         id="d15e19947-false-d25843e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(CT Abdomen durchgeführt): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(CT Abdomen durchgeführt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="@negationInd">(CT Abdomen durchgeführt): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CT Abdomen durchgeführt): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']) &gt;= 1">(CT Abdomen durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '169070004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CT Abdomen durchgeführt): Element hl7:code[(@code = '169070004' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '169070004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:code[(@code = '169070004' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CT Abdomen durchgeführt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']"
         id="d15e19961-false-d25937e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CT Abdomen durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.59')">(CT Abdomen durchgeführt): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.59' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:code[(@code = '169070004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:code[(@code = '169070004' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19969-false-d25956e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CT Abdomen durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="@nullFlavor or (@code='169070004' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Computed tomography of abdomen (procedure)')">(CT Abdomen durchgeführt): Der Elementinhalt MUSS einer von 'code '169070004' codeSystem '2.16.840.1.113883.6.96' displayName='Computed tomography of abdomen (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:text
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:text"
         id="d15e19976-false-d25976e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(CT Abdomen durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(CT Abdomen durchgeführt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(CT Abdomen durchgeführt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:text/hl7:reference
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:text/hl7:reference"
         id="d15e19983-false-d26004e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CT Abdomen durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:statusCode[@code = 'completed']
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:statusCode[@code = 'completed']"
         id="d15e19989-false-d26017e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CT Abdomen durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(CT Abdomen durchgeführt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.59
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:effectiveTime
Item: (CT Abdomen durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]/hl7:effectiveTime"
         id="d15e19996-false-d26037e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CT Abdomen durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.html"
              test="not(*)">(CT Abdomen durchgeführt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
