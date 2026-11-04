<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.86
Name: Name des EDIS
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Name der lokal verwendeten Software zur primären Datenerfassung (EDIS, emergency department information system); wenn keine ED-Spezialanwendung verwendet wird, das KIS.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000">
   <title>Name des EDIS</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]"
         id="d15e20909-false-d28723e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]) &gt;= 1">(Name des EDIS): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]) &lt;= 1">(Name des EDIS): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]"
         id="d15e20920-false-d28748e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(Name des EDIS): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Name des EDIS): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']) &gt;= 1">(Name des EDIS): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']) &lt;= 1">(Name des EDIS): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-135' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(Name des EDIS): Element hl7:code[(@code = 'FLN-135' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-135' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(Name des EDIS): Element hl7:code[(@code = 'FLN-135' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Name des EDIS): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Name des EDIS): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Name des EDIS): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Name des EDIS): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:value) &gt;= 1">(Name des EDIS): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:value) &lt;= 1">(Name des EDIS): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']"
         id="d15e20928-false-d28847e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.86')">(Name des EDIS): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.86' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:code[(@code = 'FLN-135' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:code[(@code = 'FLN-135' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e20935-false-d28866e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-135' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Name des EDIS')">(Name des EDIS): Der Elementinhalt MUSS einer von 'code 'FLN-135' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Name des EDIS'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:text
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:text"
         id="d15e20943-false-d28886e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Name des EDIS): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Name des EDIS): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:text/hl7:reference
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:text/hl7:reference"
         id="d15e20950-false-d28914e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:statusCode[@code = 'completed']
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:statusCode[@code = 'completed']"
         id="d15e20956-false-d28927e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Name des EDIS): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:effectiveTime
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:effectiveTime"
         id="d15e20963-false-d28947e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="not(*)">(Name des EDIS): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.86
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:value
Item: (Name des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.86']]/hl7:value"
         id="d15e20968-false-d28964e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Name des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
