<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4033
Name: Herzfrequenz
Description: Herzfrequenz des Patienten [Schläge/min] per EKG abgeleitet
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4033-2014-09-16T000000">
   <title>Herzfrequenz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]"
         id="d15e5904-false-d4977e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]) &gt;= 1">(Herzfrequenz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]) &lt;= 1">(Herzfrequenz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]"
         id="d15e5938-false-d5002e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Herzfrequenz): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Herzfrequenz): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4033']) &gt;= 1">(Herzfrequenz): Element hl7:templateId[@root = '1.2.276.0.76.10.4033'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4033']) &lt;= 1">(Herzfrequenz): Element hl7:templateId[@root = '1.2.276.0.76.10.4033'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:id) &gt;= 1">(Herzfrequenz): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:id) &lt;= 1">(Herzfrequenz): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '8867-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Herzfrequenz): Element hl7:code[(@code = '8867-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '8867-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Herzfrequenz): Element hl7:code[(@code = '8867-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:text) &lt;= 1">(Herzfrequenz): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Herzfrequenz): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Herzfrequenz): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Herzfrequenz): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Herzfrequenz): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Herzfrequenz): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:templateId[@root = '1.2.276.0.76.10.4033']
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:templateId[@root = '1.2.276.0.76.10.4033']"
         id="d15e5946-false-d5116e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4033')">(Herzfrequenz): Der Wert von root MUSS '1.2.276.0.76.10.4033' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:id
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:id"
         id="d15e5953-false-d5135e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:code[(@code = '8867-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:code[(@code = '8867-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e5959-false-d5148e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8867-4' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Heart Rate')">(Herzfrequenz): Der Elementinhalt MUSS einer von 'code '8867-4' codeSystem '2.16.840.1.113883.6.1' displayName='Heart Rate'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:text
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:text"
         id="d15e5966-false-d5168e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:reference) &gt;= 1">(Herzfrequenz): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="count(hl7:reference) &lt;= 1">(Herzfrequenz): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:text/hl7:reference
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:text/hl7:reference"
         id="d15e5973-false-d5196e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:statusCode[@code = 'completed']
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:statusCode[@code = 'completed']"
         id="d15e5979-false-d5209e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Herzfrequenz): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:effectiveTime
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:effectiveTime"
         id="d15e5986-false-d5229e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="not(*)">(Herzfrequenz): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4033
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:value
Item: (Herzfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]/hl7:value"
         id="d15e5991-false-d5246e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Herzfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='/min'))">(Herzfrequenz): value MUSS die Einheit '/min' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Herzfrequenz): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4033-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Herzfrequenz): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
