<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4045
Name: Modified Rankin Scale
Description: Modified Rankin Skala
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4045-2015-03-03T000000">
   <title>Modified Rankin Scale</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]"
         id="d15e8633-false-d8824e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]) &gt;= 1">(Modified Rankin Scale): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]) &lt;= 1">(Modified Rankin Scale): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]"
         id="d15e8667-false-d8849e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@classCode) = ('OBS')">(Modified Rankin Scale): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@moodCode) = ('EVN')">(Modified Rankin Scale): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4045']) &gt;= 1">(Modified Rankin Scale): Element hl7:templateId[@root = '1.2.276.0.76.10.4045'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4045']) &lt;= 1">(Modified Rankin Scale): Element hl7:templateId[@root = '1.2.276.0.76.10.4045'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:id) &gt;= 1">(Modified Rankin Scale): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:id) &lt;= 1">(Modified Rankin Scale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:code[(@code = '75859-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Modified Rankin Scale): Element hl7:code[(@code = '75859-9' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:code[(@code = '75859-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Modified Rankin Scale): Element hl7:code[(@code = '75859-9' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:text) &lt;= 1">(Modified Rankin Scale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Modified Rankin Scale): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Modified Rankin Scale): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Modified Rankin Scale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:value) &gt;= 1">(Modified Rankin Scale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:value) &lt;= 1">(Modified Rankin Scale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:templateId[@root = '1.2.276.0.76.10.4045']
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:templateId[@root = '1.2.276.0.76.10.4045']"
         id="d15e8675-false-d8963e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4045')">(Modified Rankin Scale): Der Wert von root MUSS '1.2.276.0.76.10.4045' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:id
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:id"
         id="d15e8682-false-d8982e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:code[(@code = '75859-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:code[(@code = '75859-9' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e8688-false-d8995e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@nullFlavor or (@code='75859-9' and @codeSystem='2.16.840.1.113883.6.1')">(Modified Rankin Scale): Der Elementinhalt MUSS einer von 'code '75859-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:text
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:text"
         id="d15e8695-false-d9015e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:reference) &gt;= 1">(Modified Rankin Scale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="count(hl7:reference) &lt;= 1">(Modified Rankin Scale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:text/hl7:reference
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:text/hl7:reference"
         id="d15e8702-false-d9043e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:statusCode[@code = 'completed']
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:statusCode[@code = 'completed']"
         id="d15e8708-false-d9056e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Modified Rankin Scale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:effectiveTime
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:effectiveTime"
         id="d15e8715-false-d9076e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="not(*)">(Modified Rankin Scale): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4045
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:value
Item: (Modified Rankin Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]/hl7:value"
         id="d15e8720-false-d9093e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Modified Rankin Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=6))">(Modified Rankin Scale): value MUSS im Bereich [0..6] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Modified Rankin Scale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Modified Rankin Scale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="@value">(Modified Rankin Scale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4045-2015-03-03T000000.html"
              test="string(@unit) = ('{score}')">(Modified Rankin Scale): Der Wert von unit MUSS '{score}' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
</pattern>
