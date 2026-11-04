<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.50
Name: Sonographie angefordert
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine Sonographie angefordert?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000">
   <title>Sonographie angefordert</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]"
         id="d15e19632-false-d24846e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]) &gt;= 1">(Sonographie angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]) &lt;= 1">(Sonographie angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]"
         id="d15e19643-false-d24871e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(Sonographie angefordert): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="string(@moodCode) = ('RQO')">(Sonographie angefordert): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="@negationInd">(Sonographie angefordert): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Sonographie angefordert): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']) &gt;= 1">(Sonographie angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']) &lt;= 1">(Sonographie angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '16310003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Sonographie angefordert): Element hl7:code[(@code = '16310003' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '16310003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Sonographie angefordert): Element hl7:code[(@code = '16310003' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Sonographie angefordert): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Sonographie angefordert): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Sonographie angefordert): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Sonographie angefordert): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']"
         id="d15e19657-false-d24965e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Sonographie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.50')">(Sonographie angefordert): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.50' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:code[(@code = '16310003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:code[(@code = '16310003' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19665-false-d24984e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Sonographie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="@nullFlavor or (@code='16310003' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Ultrasonography (procedure)')">(Sonographie angefordert): Der Elementinhalt MUSS einer von 'code '16310003' codeSystem '2.16.840.1.113883.6.96' displayName='Ultrasonography (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:text
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:text"
         id="d15e19672-false-d25004e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Sonographie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Sonographie angefordert): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Sonographie angefordert): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:text/hl7:reference
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:text/hl7:reference"
         id="d15e19679-false-d25032e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Sonographie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:statusCode[@code = 'completed']
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:statusCode[@code = 'completed']"
         id="d15e19685-false-d25045e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Sonographie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Sonographie angefordert): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.50
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:effectiveTime
Item: (Sonographie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]/hl7:effectiveTime"
         id="d15e19692-false-d25065e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Sonographie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.html"
              test="not(*)">(Sonographie angefordert): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
