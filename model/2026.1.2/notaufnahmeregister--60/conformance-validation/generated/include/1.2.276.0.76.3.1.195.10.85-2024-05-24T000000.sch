<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.85
Name: Zeit bis zum Export
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Zeit [in vollen Stunden] vom Beginn der Vorstellung bis zum Export-Zeitpunkt aus dem Primärsystem; Bei mehr als 28 Tagen (=672 Stunden) Maximalwert angeben.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000">
   <title>Zeit bis zum Export</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]"
         id="d15e20838-false-d28450e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]) &gt;= 1">(Zeit bis zum Export): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]) &lt;= 1">(Zeit bis zum Export): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]"
         id="d15e20849-false-d28475e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(Zeit bis zum Export): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Zeit bis zum Export): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']) &gt;= 1">(Zeit bis zum Export): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']) &lt;= 1">(Zeit bis zum Export): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-134' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(Zeit bis zum Export): Element hl7:code[(@code = 'FLN-134' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-134' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(Zeit bis zum Export): Element hl7:code[(@code = 'FLN-134' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Zeit bis zum Export): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Zeit bis zum Export): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Zeit bis zum Export): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Zeit bis zum Export): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:value) &gt;= 1">(Zeit bis zum Export): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:value) &lt;= 1">(Zeit bis zum Export): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']"
         id="d15e20857-false-d28574e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.85')">(Zeit bis zum Export): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.85' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:code[(@code = 'FLN-134' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:code[(@code = 'FLN-134' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e20864-false-d28593e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-134' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Zeit bis zum Export')">(Zeit bis zum Export): Der Elementinhalt MUSS einer von 'code 'FLN-134' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Zeit bis zum Export'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:text
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:text"
         id="d15e20872-false-d28613e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Zeit bis zum Export): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Zeit bis zum Export): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:text/hl7:reference
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:text/hl7:reference"
         id="d15e20879-false-d28641e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:statusCode[@code = 'completed']
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:statusCode[@code = 'completed']"
         id="d15e20885-false-d28654e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Zeit bis zum Export): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:effectiveTime
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:effectiveTime"
         id="d15e20892-false-d28674e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="not(*)">(Zeit bis zum Export): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.85
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:value
Item: (Zeit bis zum Export)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.85']]/hl7:value"
         id="d15e20897-false-d28691e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Zeit bis zum Export): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Zeit bis zum Export): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Zeit bis zum Export): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.html"
              test="string(@unit) = ('h')">(Zeit bis zum Export): Der Wert von unit MUSS 'h' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
</pattern>
