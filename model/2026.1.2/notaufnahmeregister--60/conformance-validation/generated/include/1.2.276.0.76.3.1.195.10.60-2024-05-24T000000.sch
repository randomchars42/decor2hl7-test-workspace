<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.60
Name: CT Extremitäten durchgeführt
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Extremitäten durchgeführt?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000">
   <title>CT Extremitäten durchgeführt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]"
         id="d15e20012-false-d26061e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]) &gt;= 1">(CT Extremitäten durchgeführt): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]"
         id="d15e20023-false-d26086e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(CT Extremitäten durchgeführt): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(CT Extremitäten durchgeführt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="@negationInd">(CT Extremitäten durchgeführt): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CT Extremitäten durchgeführt): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']) &gt;= 1">(CT Extremitäten durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '303681001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CT Extremitäten durchgeführt): Element hl7:code[(@code = '303681001' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '303681001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:code[(@code = '303681001' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CT Extremitäten durchgeführt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']"
         id="d15e20037-false-d26180e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CT Extremitäten durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.60')">(CT Extremitäten durchgeführt): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.60' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:code[(@code = '303681001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:code[(@code = '303681001' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e20045-false-d26199e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CT Extremitäten durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="@nullFlavor or (@code='303681001' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Computed tomography of limb regions (procedure)')">(CT Extremitäten durchgeführt): Der Elementinhalt MUSS einer von 'code '303681001' codeSystem '2.16.840.1.113883.6.96' displayName='Computed tomography of limb regions (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:text
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:text"
         id="d15e20052-false-d26219e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(CT Extremitäten durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(CT Extremitäten durchgeführt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(CT Extremitäten durchgeführt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:text/hl7:reference
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:text/hl7:reference"
         id="d15e20059-false-d26247e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CT Extremitäten durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:statusCode[@code = 'completed']
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:statusCode[@code = 'completed']"
         id="d15e20065-false-d26260e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CT Extremitäten durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(CT Extremitäten durchgeführt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.60
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:effectiveTime
Item: (CT Extremitäten durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]/hl7:effectiveTime"
         id="d15e20072-false-d26280e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CT Extremitäten durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.html"
              test="not(*)">(CT Extremitäten durchgeführt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
