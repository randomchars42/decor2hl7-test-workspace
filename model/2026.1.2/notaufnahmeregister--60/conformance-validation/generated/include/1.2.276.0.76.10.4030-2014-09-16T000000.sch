<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4030
Name: Atemfrequenz
Description: Atemfrequenz
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4030-2014-09-16T000000">
   <title>Atemfrequenz</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]"
         id="d15e5444-false-d4343e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]) &gt;= 1">(Atemfrequenz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]) &lt;= 1">(Atemfrequenz): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]"
         id="d15e5478-false-d4368e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Atemfrequenz): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Atemfrequenz): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4030']) &gt;= 1">(Atemfrequenz): Element hl7:templateId[@root = '1.2.276.0.76.10.4030'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4030']) &lt;= 1">(Atemfrequenz): Element hl7:templateId[@root = '1.2.276.0.76.10.4030'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:id) &gt;= 1">(Atemfrequenz): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:id) &lt;= 1">(Atemfrequenz): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Atemfrequenz): Element hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Atemfrequenz): Element hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:text) &lt;= 1">(Atemfrequenz): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Atemfrequenz): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Atemfrequenz): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Atemfrequenz): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Atemfrequenz): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Atemfrequenz): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:templateId[@root = '1.2.276.0.76.10.4030']
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:templateId[@root = '1.2.276.0.76.10.4030']"
         id="d15e5486-false-d4482e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4030')">(Atemfrequenz): Der Wert von root MUSS '1.2.276.0.76.10.4030' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:id
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:id"
         id="d15e5493-false-d4501e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e5499-false-d4514e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9279-1' and @codeSystem='2.16.840.1.113883.6.1')">(Atemfrequenz): Der Elementinhalt MUSS einer von 'code '9279-1' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:originalText) &lt;= 1">(Atemfrequenz): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')]/hl7:originalText
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:code[(@code = '9279-1' and @codeSystem = '2.16.840.1.113883.6.1')]/hl7:originalText"
         id="d15e5505-false-d4543e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:text
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:text"
         id="d15e5511-false-d4556e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:reference) &gt;= 1">(Atemfrequenz): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="count(hl7:reference) &lt;= 1">(Atemfrequenz): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:text/hl7:reference
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:text/hl7:reference"
         id="d15e5518-false-d4584e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:statusCode[@code = 'completed']
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:statusCode[@code = 'completed']"
         id="d15e5524-false-d4597e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Atemfrequenz): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:effectiveTime
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:effectiveTime"
         id="d15e5531-false-d4617e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="not(*)">(Atemfrequenz): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4030
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:value
Item: (Atemfrequenz)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]/hl7:value"
         id="d15e5536-false-d4634e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Atemfrequenz): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="(@nullFlavor or (@unit='/min'))">(Atemfrequenz): value MUSS die Einheit '/min' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Atemfrequenz): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4030-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Atemfrequenz): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
