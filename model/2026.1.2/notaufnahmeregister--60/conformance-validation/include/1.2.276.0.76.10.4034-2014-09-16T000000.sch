<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4034
Name: Glasgow Coma Scale
Description: Glasgow Coma Scale (GCS) als Summe und mit den drei Achsen Augenöffnen, verbale Antwort und motorische Antwort
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4034-2014-09-16T000000">
   <title>Glasgow Coma Scale</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]
Item: (Glasgow Coma Scale)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]"
         id="d15e6201-false-d5319e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Glasgow Coma Scale): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Glasgow Coma Scale): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4034']) &gt;= 1">(Glasgow Coma Scale): Element hl7:templateId[@root = '1.2.276.0.76.10.4034'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4034']) &lt;= 1">(Glasgow Coma Scale): Element hl7:templateId[@root = '1.2.276.0.76.10.4034'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:id) &lt;= 1">(Glasgow Coma Scale): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9269-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9269-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9269-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9269-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:text) &lt;= 1">(Glasgow Coma Scale): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Glasgow Coma Scale): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Glasgow Coma Scale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Glasgow Coma Scale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']) &lt;= 1">(Glasgow Coma Scale): Element hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']) &lt;= 1">(Glasgow Coma Scale): Element hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']) &lt;= 1">(Glasgow Coma Scale): Element hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:templateId[@root = '1.2.276.0.76.10.4034']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:templateId[@root = '1.2.276.0.76.10.4034']"
         id="d15e6209-false-d5448e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4034')">(Glasgow Coma Scale): Der Wert von root MUSS '1.2.276.0.76.10.4034' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:id
Item: (Glasgow Coma Scale)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:code[(@code = '9269-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:code[(@code = '9269-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e6222-false-d5476e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9269-2' and @codeSystem='2.16.840.1.113883.6.1')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code '9269-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:text
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:text"
         id="d15e6229-false-d5496e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference) &gt;= 1">(Glasgow Coma Scale): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:reference) &lt;= 1">(Glasgow Coma Scale): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:text/hl7:reference
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:text/hl7:reference"
         id="d15e6236-false-d5524e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:statusCode[@code = 'completed']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:statusCode[@code = 'completed']"
         id="d15e6242-false-d5537e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:effectiveTime
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:effectiveTime"
         id="d15e6249-false-d5557e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="not(*)">(Glasgow Coma Scale): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:value
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:value"
         id="d15e6254-false-d5574e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=3 and number(@value)&lt;=15))">(Glasgow Coma Scale): value MUSS im Bereich [3..15] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Glasgow Coma Scale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Glasgow Coma Scale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(Glasgow Coma Scale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit) = ('{score}')">(Glasgow Coma Scale): Der Wert von unit MUSS '{score}' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']"
         id="d15e6272-false-d5617e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode) = ('COMP')">(Glasgow Coma Scale): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd) = ('true')">(Glasgow Coma Scale): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(Glasgow Coma Scale): Element hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(Glasgow Coma Scale): Element hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]"
         id="d15e6280-false-d5653e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Glasgow Coma Scale): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Glasgow Coma Scale): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Glasgow Coma Scale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Glasgow Coma Scale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e6288-false-d5719e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9267-6' and @codeSystem='2.16.840.1.113883.6.1')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code '9267-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']"
         id="d15e6295-false-d5739e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation[hl7:code[(@code = '9267-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value"
         id="d15e6303-false-d5759e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=4))">(Glasgow Coma Scale): value MUSS im Bereich [1..4] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Glasgow Coma Scale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Glasgow Coma Scale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(Glasgow Coma Scale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit) = ('{score}')">(Glasgow Coma Scale): Der Wert von unit MUSS '{score}' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']"
         id="d15e6324-false-d5802e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode) = ('COMP')">(Glasgow Coma Scale): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd) = ('true')">(Glasgow Coma Scale): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(Glasgow Coma Scale): Element hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(Glasgow Coma Scale): Element hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]"
         id="d15e6332-false-d5838e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Glasgow Coma Scale): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Glasgow Coma Scale): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Glasgow Coma Scale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Glasgow Coma Scale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e6340-false-d5904e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9270-0' and @codeSystem='2.16.840.1.113883.6.1')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code '9270-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']"
         id="d15e6347-false-d5924e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation[hl7:code[(@code = '9270-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value"
         id="d15e6355-false-d5944e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=5))">(Glasgow Coma Scale): value MUSS im Bereich [1..5] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Glasgow Coma Scale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Glasgow Coma Scale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(Glasgow Coma Scale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit) = ('{score}')">(Glasgow Coma Scale): Der Wert von unit MUSS '{score}' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']"
         id="d15e6375-false-d5987e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@typeCode) = ('COMP')">(Glasgow Coma Scale): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@contextConductionInd) = ('true')">(Glasgow Coma Scale): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(Glasgow Coma Scale): Element hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(Glasgow Coma Scale): Element hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]"
         id="d15e6383-false-d6023e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@classCode) = ('OBS')">(Glasgow Coma Scale): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@moodCode) = ('EVN')">(Glasgow Coma Scale): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Glasgow Coma Scale): Element hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Glasgow Coma Scale): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &gt;= 1">(Glasgow Coma Scale): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="count(hl7:value) &lt;= 1">(Glasgow Coma Scale): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e6391-false-d6089e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='9268-4' and @codeSystem='2.16.840.1.113883.6.1')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code '9268-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']"
         id="d15e6398-false-d6109e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@nullFlavor or (@code='completed')">(Glasgow Coma Scale): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4034
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value
Item: (Glasgow Coma Scale)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation[hl7:code[(@code = '9268-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value"
         id="d15e6406-false-d6129e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Glasgow Coma Scale): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=6))">(Glasgow Coma Scale): value MUSS im Bereich [1..6] liegen  </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Glasgow Coma Scale): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Glasgow Coma Scale): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="@value">(Glasgow Coma Scale): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4034-2014-09-16T000000.html"
              test="string(@unit) = ('{score}')">(Glasgow Coma Scale): Der Wert von unit MUSS '{score}' sein. Gefunden: "<value-of select="@unit"/>"</assert>
   </rule>
</pattern>
