<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.75
Name: Zeitpunkt Entscheidung zur Verlegung / Entlassung
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Der Zeitpunkt, zu dem die Entscheidung zur stationären Verlegung oder ambulanten Entlassung festgelegt wurden. 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000">
   <title>Zeitpunkt Entscheidung zur Verlegung / Entlassung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]"
         id="d15e20613-false-d27657e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]) &gt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]"
         id="d15e20624-false-d27682e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']) &gt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-124' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:code[(@code = 'FLN-124' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-124' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:code[(@code = 'FLN-124' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:value) &gt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:value) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']"
         id="d15e20632-false-d27781e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.75')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.75' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:code[(@code = 'FLN-124' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:code[(@code = 'FLN-124' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e20639-false-d27800e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-124' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Zeitpunkt Entscheidung zur Verlegung / Entlassung')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Der Elementinhalt MUSS einer von 'code 'FLN-124' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Zeitpunkt Entscheidung zur Verlegung / Entlassung'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:text
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:text"
         id="d15e20647-false-d27820e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:text/hl7:reference
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:text/hl7:reference"
         id="d15e20654-false-d27848e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:statusCode[@code = 'completed']
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:statusCode[@code = 'completed']"
         id="d15e20660-false-d27861e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:effectiveTime
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:effectiveTime"
         id="d15e20667-false-d27881e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="not(*)">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.75
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:value
Item: (Zeitpunkt Entscheidung zur Verlegung / Entlassung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]/hl7:value"
         id="d15e20672-false-d27898e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.html"
              test="not(*)">(Zeitpunkt Entscheidung zur Verlegung / Entlassung): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
