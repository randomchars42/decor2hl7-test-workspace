<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.77
Name: Zeitpunkt Patient verlegt / entlassen nach
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wann wurde der Patient verlegt oder entlassen?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000">
   <title>Zeitpunkt Patient verlegt / entlassen nach</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]"
         id="d15e20763-false-d28185e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]) &gt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]"
         id="d15e20774-false-d28210e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(Zeitpunkt Patient verlegt / entlassen nach): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Zeitpunkt Patient verlegt / entlassen nach): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']) &gt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-126' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:code[(@code = 'FLN-126' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-126' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:code[(@code = 'FLN-126' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:value) &gt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:value) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']"
         id="d15e20782-false-d28309e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.77')">(Zeitpunkt Patient verlegt / entlassen nach): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.77' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:code[(@code = 'FLN-126' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:code[(@code = 'FLN-126' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e20789-false-d28328e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-126' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Zeitpunkt Patient verlegt / entlassen nach')">(Zeitpunkt Patient verlegt / entlassen nach): Der Elementinhalt MUSS einer von 'code 'FLN-126' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Zeitpunkt Patient verlegt / entlassen nach'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:text
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:text"
         id="d15e20797-false-d28348e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Zeitpunkt Patient verlegt / entlassen nach): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:text/hl7:reference
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:text/hl7:reference"
         id="d15e20804-false-d28376e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:statusCode[@code = 'completed']
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:statusCode[@code = 'completed']"
         id="d15e20810-false-d28389e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Zeitpunkt Patient verlegt / entlassen nach): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:effectiveTime
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:effectiveTime"
         id="d15e20817-false-d28409e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="not(*)">(Zeitpunkt Patient verlegt / entlassen nach): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.77
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:value
Item: (Zeitpunkt Patient verlegt / entlassen nach)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]/hl7:value"
         id="d15e20822-false-d28426e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Zeitpunkt Patient verlegt / entlassen nach): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.html"
              test="not(*)">(Zeitpunkt Patient verlegt / entlassen nach): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
