<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.35
Name: Pulsoximetrische Sauerstoffsättigung
Description: Pulsoximetrisch bestimmte periphere Sauerstoffsättigung des Patienten in Prozent [%]
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356">
   <title>Pulsoximetrische Sauerstoffsättigung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]"
         id="d15e18998-false-d23110e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]"
         id="d15e19009-false-d23135e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="string(@classCode) = ('OBS')">(Pulsoximetrische Sauerstoffsättigung): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="string(@moodCode) = ('EVN')">(Pulsoximetrische Sauerstoffsättigung): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:id) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:text) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:value) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:value) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']"
         id="d15e19017-false-d23249e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.35')">(Pulsoximetrische Sauerstoffsättigung): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.35' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:id
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:id"
         id="d15e19024-false-d23268e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19030-false-d23281e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="@nullFlavor or (@code='103228002' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Hemoglobin saturation with oxygen (observable entity)')">(Pulsoximetrische Sauerstoffsättigung): Der Elementinhalt MUSS einer von 'code '103228002' codeSystem '2.16.840.1.113883.6.96' displayName='Hemoglobin saturation with oxygen (observable entity)'' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:translation[(@code = '59408-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:translation[(@code = '59408-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:translation[(@code = '59408-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:translation[(@code = '59408-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '59408-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:code[(@code = '103228002' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '59408-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e19036-false-d23316e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="@nullFlavor or (@code='59408-5' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Oxygen saturation in Arterial blood by Pulse oximetry')">(Pulsoximetrische Sauerstoffsättigung): Der Elementinhalt MUSS einer von 'code '59408-5' codeSystem '2.16.840.1.113883.6.1' displayName='Oxygen saturation in Arterial blood by Pulse oximetry'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:text
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:text"
         id="d15e19044-false-d23336e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:reference) &gt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="count(hl7:reference) &lt;= 1">(Pulsoximetrische Sauerstoffsättigung): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:text/hl7:reference
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:text/hl7:reference"
         id="d15e19051-false-d23364e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:statusCode[@code = 'completed']
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:statusCode[@code = 'completed']"
         id="d15e19057-false-d23377e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="@nullFlavor or (@code='completed')">(Pulsoximetrische Sauerstoffsättigung): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:effectiveTime
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:effectiveTime"
         id="d15e19064-false-d23397e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="not(*)">(Pulsoximetrische Sauerstoffsättigung): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.35
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:value
Item: (Pulsoximetrische Sauerstoffsättigung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]/hl7:value"
         id="d15e19069-false-d23414e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Pulsoximetrische Sauerstoffsättigung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="(@nullFlavor or (@unit='%'))">(Pulsoximetrische Sauerstoffsättigung): value MUSS die Einheit '%' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Pulsoximetrische Sauerstoffsättigung): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Pulsoximetrische Sauerstoffsättigung): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
