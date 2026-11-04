<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4035
Name: Körperkerntemperatur
Description: Körperkerntemperatur
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4035-2014-09-16T000000">
   <title>Körperkerntemperatur</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]"
         id="d15e7069-false-d6181e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]) &gt;= 1">(Körperkerntemperatur): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]) &lt;= 1">(Körperkerntemperatur): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]"
         id="d15e7105-false-d6206e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Körperkerntemperatur): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Körperkerntemperatur): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4035']) &gt;= 1">(Körperkerntemperatur): Element hl7:templateId[@root = '1.2.276.0.76.10.4035'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4035']) &lt;= 1">(Körperkerntemperatur): Element hl7:templateId[@root = '1.2.276.0.76.10.4035'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:id) &gt;= 1">(Körperkerntemperatur): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:id) &lt;= 1">(Körperkerntemperatur): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '8329-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Körperkerntemperatur): Element hl7:code[(@code = '8329-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '8329-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Körperkerntemperatur): Element hl7:code[(@code = '8329-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:text) &lt;= 1">(Körperkerntemperatur): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Körperkerntemperatur): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Körperkerntemperatur): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Körperkerntemperatur): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Körperkerntemperatur): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Körperkerntemperatur): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:templateId[@root = '1.2.276.0.76.10.4035']
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:templateId[@root = '1.2.276.0.76.10.4035']"
         id="d15e7113-false-d6320e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4035')">(Körperkerntemperatur): Der Wert von root MUSS '1.2.276.0.76.10.4035' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:id
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:id"
         id="d15e7120-false-d6339e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:code[(@code = '8329-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:code[(@code = '8329-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e7126-false-d6352e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="@nullFlavor or (@code='8329-5' and @codeSystem='2.16.840.1.113883.6.1')">(Körperkerntemperatur): Der Elementinhalt MUSS einer von 'code '8329-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:text
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:text"
         id="d15e7133-false-d6372e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:reference) &gt;= 1">(Körperkerntemperatur): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="count(hl7:reference) &lt;= 1">(Körperkerntemperatur): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:text/hl7:reference
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:text/hl7:reference"
         id="d15e7140-false-d6400e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:statusCode[@code = 'completed']
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:statusCode[@code = 'completed']"
         id="d15e7146-false-d6413e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Körperkerntemperatur): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:effectiveTime
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:effectiveTime"
         id="d15e7153-false-d6433e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="not(*)">(Körperkerntemperatur): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4035
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:value
Item: (Körperkerntemperatur)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]/hl7:value"
         id="d15e7158-false-d6450e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Körperkerntemperatur): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0.0 and number(@value)&lt;=45.0))">(Körperkerntemperatur): value MUSS im Bereich [0.0..45.0] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Körperkerntemperatur): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Körperkerntemperatur): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4035-2014-09-16T000000.html"
              test="string(@unit) = ('Cel')">(Körperkerntemperatur): Der Wert von unit MUSS 'Cel' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
</pattern>
