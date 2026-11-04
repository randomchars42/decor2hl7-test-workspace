<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.17
Name: Direkter Arztkontakt
Description: Wurde keine Ersteinschätzung durchgeführt, da ein direkter Arztkontakt erfolgt ist?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000">
   <title>Direkter Arztkontakt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]"
         id="d15e17765-false-d19041e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]) &gt;= 1">(Direkter Arztkontakt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]) &lt;= 1">(Direkter Arztkontakt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]"
         id="d15e17776-false-d19066e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(Direkter Arztkontakt): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Direkter Arztkontakt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']) &gt;= 1">(Direkter Arztkontakt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']) &lt;= 1">(Direkter Arztkontakt): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-13' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(Direkter Arztkontakt): Element hl7:code[(@code = 'FLN-13' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-13' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(Direkter Arztkontakt): Element hl7:code[(@code = 'FLN-13' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Direkter Arztkontakt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Direkter Arztkontakt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Direkter Arztkontakt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Direkter Arztkontakt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:value[(@code = '305660003' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(Direkter Arztkontakt): Element hl7:value[(@code = '305660003' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:value[(@code = '305660003' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(Direkter Arztkontakt): Element hl7:value[(@code = '305660003' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']"
         id="d15e17784-false-d19165e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.17')">(Direkter Arztkontakt): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.17' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:code[(@code = 'FLN-13' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:code[(@code = 'FLN-13' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e17791-false-d19184e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-13' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Wurde keine Ersteinschätzung durchgeführt, da ein direkter Arztkontakt erfolgt ist?')">(Direkter Arztkontakt): Der Elementinhalt MUSS einer von 'code 'FLN-13' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Wurde keine Ersteinschätzung durchgeführt, da ein direkter Arztkontakt erfolgt ist?'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:text
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:text"
         id="d15e17799-false-d19204e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Direkter Arztkontakt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Direkter Arztkontakt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:text/hl7:reference
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:text/hl7:reference"
         id="d15e17806-false-d19232e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:statusCode[@code = 'completed']
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:statusCode[@code = 'completed']"
         id="d15e17812-false-d19245e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Direkter Arztkontakt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:effectiveTime
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:effectiveTime"
         id="d15e17819-false-d19265e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="not(*)">(Direkter Arztkontakt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.17
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:value[(@code = '305660003' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (Direkter Arztkontakt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]/hl7:value[(@code = '305660003' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e17824-false-d19282e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Direkter Arztkontakt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.html"
              test="@nullFlavor or (@code='305660003' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Seen by physician (finding)')">(Direkter Arztkontakt): Der Elementinhalt MUSS einer von 'code '305660003' codeSystem '2.16.840.1.113883.6.96' displayName='Seen by physician (finding)'' sein.</assert>
   </rule>
</pattern>
