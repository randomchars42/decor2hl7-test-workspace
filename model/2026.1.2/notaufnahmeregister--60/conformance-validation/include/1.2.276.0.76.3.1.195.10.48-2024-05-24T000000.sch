<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.48
Name: BGA angefordert
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine BGA angefordert?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000">
   <title>BGA angefordert</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]"
         id="d15e19480-false-d24360e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]) &gt;= 1">(BGA angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]) &lt;= 1">(BGA angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]"
         id="d15e19491-false-d24385e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(BGA angefordert): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="string(@moodCode) = ('RQO')">(BGA angefordert): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="@negationInd">(BGA angefordert): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(BGA angefordert): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']) &gt;= 1">(BGA angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']) &lt;= 1">(BGA angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '278297009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(BGA angefordert): Element hl7:code[(@code = '278297009' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '278297009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(BGA angefordert): Element hl7:code[(@code = '278297009' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(BGA angefordert): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(BGA angefordert): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(BGA angefordert): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(BGA angefordert): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']"
         id="d15e19505-false-d24479e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BGA angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.48')">(BGA angefordert): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.48' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:code[(@code = '278297009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:code[(@code = '278297009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19513-false-d24498e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BGA angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="@nullFlavor or (@code='278297009' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Blood gas analysis (procedure)')">(BGA angefordert): Der Elementinhalt MUSS einer von 'code '278297009' codeSystem '2.16.840.1.113883.6.96' displayName='Blood gas analysis (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:text
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:text"
         id="d15e19520-false-d24518e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(BGA angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(BGA angefordert): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(BGA angefordert): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:text/hl7:reference
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:text/hl7:reference"
         id="d15e19527-false-d24546e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(BGA angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:statusCode[@code = 'completed']
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:statusCode[@code = 'completed']"
         id="d15e19533-false-d24559e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(BGA angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(BGA angefordert): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.48
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:effectiveTime
Item: (BGA angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]/hl7:effectiveTime"
         id="d15e19540-false-d24579e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(BGA angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.html"
              test="not(*)">(BGA angefordert): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
