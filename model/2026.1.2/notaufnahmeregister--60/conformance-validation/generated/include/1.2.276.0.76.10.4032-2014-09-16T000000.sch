<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4032
Name: Blutdruck systolisch
Description: Blutdruck systolisch
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4032-2014-09-16T000000">
   <title>Blutdruck systolisch</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]"
         id="d15e5642-false-d4673e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]) &gt;= 1">(Blutdruck systolisch): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]) &lt;= 1">(Blutdruck systolisch): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]"
         id="d15e5676-false-d4698e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Blutdruck systolisch): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Blutdruck systolisch): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4032']) &gt;= 1">(Blutdruck systolisch): Element hl7:templateId[@root = '1.2.276.0.76.10.4032'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4032']) &lt;= 1">(Blutdruck systolisch): Element hl7:templateId[@root = '1.2.276.0.76.10.4032'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:id) &gt;= 1">(Blutdruck systolisch): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:id) &lt;= 1">(Blutdruck systolisch): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '8480-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Blutdruck systolisch): Element hl7:code[(@code = '8480-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '8480-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Blutdruck systolisch): Element hl7:code[(@code = '8480-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:text) &lt;= 1">(Blutdruck systolisch): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Blutdruck systolisch): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Blutdruck systolisch): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Blutdruck systolisch): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Blutdruck systolisch): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Blutdruck systolisch): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:templateId[@root = '1.2.276.0.76.10.4032']
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:templateId[@root = '1.2.276.0.76.10.4032']"
         id="d15e5684-false-d4812e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4032')">(Blutdruck systolisch): Der Wert von root MUSS '1.2.276.0.76.10.4032' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:id
Item: (Blutdruck systolisch)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:code[(@code = '8480-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:code[(@code = '8480-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e5697-false-d4840e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8480-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Systolic blood pressure')">(Blutdruck systolisch): Der Elementinhalt MUSS einer von 'code '8480-6' codeSystem '2.16.840.1.113883.6.1' displayName='Systolic blood pressure'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:text
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:text"
         id="d15e5704-false-d4860e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:reference) &gt;= 1">(Blutdruck systolisch): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="count(hl7:reference) &lt;= 1">(Blutdruck systolisch): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:text/hl7:reference
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:text/hl7:reference"
         id="d15e5711-false-d4888e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:statusCode[@code = 'completed']
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:statusCode[@code = 'completed']"
         id="d15e5717-false-d4901e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Blutdruck systolisch): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:effectiveTime
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:effectiveTime"
         id="d15e5724-false-d4921e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="not(*)">(Blutdruck systolisch): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4032
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:value
Item: (Blutdruck systolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]/hl7:value"
         id="d15e5729-false-d4938e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Blutdruck systolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='mm[Hg]'))">(Blutdruck systolisch): value MUSS die Einheit 'mm[Hg]' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Blutdruck systolisch): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4032-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Blutdruck systolisch): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
