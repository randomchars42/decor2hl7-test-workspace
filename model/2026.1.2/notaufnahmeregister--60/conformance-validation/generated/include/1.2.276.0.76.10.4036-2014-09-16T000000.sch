<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4036
Name: Schmerz
Description: Schmerz
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4036-2014-09-16T000000">
   <title>Schmerz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]"
         id="d15e7267-false-d6498e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]) &gt;= 1">(Schmerz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]) &lt;= 1">(Schmerz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]"
         id="d15e7301-false-d6523e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Schmerz): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Schmerz): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4036']) &gt;= 1">(Schmerz): Element hl7:templateId[@root = '1.2.276.0.76.10.4036'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4036']) &lt;= 1">(Schmerz): Element hl7:templateId[@root = '1.2.276.0.76.10.4036'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:id) &gt;= 1">(Schmerz): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:id) &lt;= 1">(Schmerz): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '72514-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Schmerz): Element hl7:code[(@code = '72514-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '72514-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Schmerz): Element hl7:code[(@code = '72514-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:text) &lt;= 1">(Schmerz): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Schmerz): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Schmerz): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Schmerz): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Schmerz): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Schmerz): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:templateId[@root = '1.2.276.0.76.10.4036']
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:templateId[@root = '1.2.276.0.76.10.4036']"
         id="d15e7309-false-d6637e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4036')">(Schmerz): Der Wert von root MUSS '1.2.276.0.76.10.4036' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:id
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:id"
         id="d15e7316-false-d6656e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:code[(@code = '72514-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:code[(@code = '72514-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e7322-false-d6669e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@nullFlavor or (@code='72514-3' and @codeSystem='2.16.840.1.113883.6.1')">(Schmerz): Der Elementinhalt MUSS einer von 'code '72514-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:text
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:text"
         id="d15e7329-false-d6689e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:reference) &gt;= 1">(Schmerz): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="count(hl7:reference) &lt;= 1">(Schmerz): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:text/hl7:reference
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:text/hl7:reference"
         id="d15e7336-false-d6717e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:statusCode[@code = 'completed']
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:statusCode[@code = 'completed']"
         id="d15e7342-false-d6730e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Schmerz): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:effectiveTime
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:effectiveTime"
         id="d15e7349-false-d6750e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="not(*)">(Schmerz): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4036
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:value
Item: (Schmerz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]/hl7:value"
         id="d15e7354-false-d6767e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Schmerz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=10))">(Schmerz): value MUSS im Bereich [0..10] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Schmerz): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Schmerz): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="@value">(Schmerz): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4036-2014-09-16T000000.html"
              test="string(@unit) = ('{score}')">(Schmerz): Der Wert von unit MUSS '{score}' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
</pattern>
