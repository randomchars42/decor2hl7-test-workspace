<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.87
Name: Version des EDIS
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Versionsnummer und/oder Bezeichnung (nach Herstellerangaben) des EDIS (ggf. KIS)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000">
   <title>Version des EDIS</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]"
         id="d15e20978-false-d28983e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]) &gt;= 1">(Version des EDIS): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]) &lt;= 1">(Version des EDIS): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]"
         id="d15e20989-false-d29008e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(Version des EDIS): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Version des EDIS): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']) &gt;= 1">(Version des EDIS): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']) &lt;= 1">(Version des EDIS): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-136' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(Version des EDIS): Element hl7:code[(@code = 'FLN-136' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-136' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(Version des EDIS): Element hl7:code[(@code = 'FLN-136' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Version des EDIS): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Version des EDIS): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Version des EDIS): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Version des EDIS): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:value) &gt;= 1">(Version des EDIS): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:value) &lt;= 1">(Version des EDIS): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']"
         id="d15e20997-false-d29107e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.87')">(Version des EDIS): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.87' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:code[(@code = 'FLN-136' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:code[(@code = 'FLN-136' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e21004-false-d29126e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-136' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Version des EDIS')">(Version des EDIS): Der Elementinhalt MUSS einer von 'code 'FLN-136' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Version des EDIS'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:text
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:text"
         id="d15e21012-false-d29146e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Version des EDIS): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Version des EDIS): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:text/hl7:reference
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:text/hl7:reference"
         id="d15e21019-false-d29174e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:statusCode[@code = 'completed']
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:statusCode[@code = 'completed']"
         id="d15e21025-false-d29187e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Version des EDIS): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:effectiveTime
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:effectiveTime"
         id="d15e21032-false-d29207e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="not(*)">(Version des EDIS): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.87
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:value
Item: (Version des EDIS)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.87']]/hl7:value"
         id="d15e21037-false-d29224e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Version des EDIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
