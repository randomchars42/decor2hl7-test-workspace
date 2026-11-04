<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.40
Name: Pulsfrequenz
Description: Puls des Patienten per manuellem Auszählen, Pulsoximeter oder invasiver Druckmessung gemessen
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356">
   <title>Pulsfrequenz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]"
         id="d15e19310-false-d23777e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]) &gt;= 1">(Pulsfrequenz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]) &lt;= 1">(Pulsfrequenz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]"
         id="d15e19321-false-d23802e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="string(@classCode) = ('OBS')">(Pulsfrequenz): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="string(@moodCode) = ('EVN')">(Pulsfrequenz): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']) &gt;= 1">(Pulsfrequenz): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']) &lt;= 1">(Pulsfrequenz): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:id) &lt;= 1">(Pulsfrequenz): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Pulsfrequenz): Element hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Pulsfrequenz): Element hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:text) &lt;= 1">(Pulsfrequenz): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Pulsfrequenz): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Pulsfrequenz): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Pulsfrequenz): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Pulsfrequenz): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:value) &gt;= 1">(Pulsfrequenz): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:value) &lt;= 1">(Pulsfrequenz): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']"
         id="d15e19329-false-d23916e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.40')">(Pulsfrequenz): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.40' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:id
Item: (Pulsfrequenz)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19342-false-d23944e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="@nullFlavor or (@code='78564009' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Heart rate measured at systemic artery (observable entity)')">(Pulsfrequenz): Der Elementinhalt MUSS einer von 'code '78564009' codeSystem '2.16.840.1.113883.6.96' displayName='Heart rate measured at systemic artery (observable entity)'' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:translation[(@code = '8893-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Pulsfrequenz): Element hl7:translation[(@code = '8893-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:translation[(@code = '8893-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Pulsfrequenz): Element hl7:translation[(@code = '8893-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '8893-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:code[(@code = '78564009' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '8893-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e19348-false-d23979e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="@nullFlavor or (@code='8893-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Heart rate Peripheral artery by palpation')">(Pulsfrequenz): Der Elementinhalt MUSS einer von 'code '8893-0' codeSystem '2.16.840.1.113883.6.1' displayName='Heart rate Peripheral artery by palpation'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:text
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:text"
         id="d15e19356-false-d23999e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:reference) &gt;= 1">(Pulsfrequenz): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="count(hl7:reference) &lt;= 1">(Pulsfrequenz): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:text/hl7:reference
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:text/hl7:reference"
         id="d15e19363-false-d24027e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:statusCode[@code = 'completed']
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:statusCode[@code = 'completed']"
         id="d15e19369-false-d24040e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="@nullFlavor or (@code='completed')">(Pulsfrequenz): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:effectiveTime
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:effectiveTime"
         id="d15e19376-false-d24060e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="not(*)">(Pulsfrequenz): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.40
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:value
Item: (Pulsfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]/hl7:value"
         id="d15e19381-false-d24077e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Pulsfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="(@nullFlavor or (@unit='/min'))">(Pulsfrequenz): value MUSS die Einheit '/min' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Pulsfrequenz): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Pulsfrequenz): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
