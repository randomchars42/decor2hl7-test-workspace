<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4049
Name: Problem Observation (Abschlussdiagnose)
Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4049-2017-02-13T000000">
   <title>Problem Observation (Abschlussdiagnose)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]"
         id="d15e9319-false-d10184e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]"
         id="d15e9516-false-d10217e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="string(@classCode) = ('OBS')">(Problem Observation (Abschlussdiagnose)): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="string(@moodCode) = ('EVN')">(Problem Observation (Abschlussdiagnose)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Problem Observation (Abschlussdiagnose)): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4049']) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:templateId[@root = '1.2.276.0.76.10.4049'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4049']) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:templateId[@root = '1.2.276.0.76.10.4049'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:code[(@code = '29308-4' and @codeSystem = '2.16.840.1.113883.6.1') or (@code = '75324-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:code[(@code = '29308-4' and @codeSystem = '2.16.840.1.113883.6.1') or (@code = '75324-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:code[(@code = '29308-4' and @codeSystem = '2.16.840.1.113883.6.1') or (@code = '75324-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:code[(@code = '29308-4' and @codeSystem = '2.16.840.1.113883.6.1') or (@code = '75324-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:text) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:value) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:value) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:templateId[@root = '1.2.276.0.76.10.4049']
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:templateId[@root = '1.2.276.0.76.10.4049']"
         id="d15e9530-false-d10343e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4049')">(Problem Observation (Abschlussdiagnose)): Der Wert von root MUSS '1.2.276.0.76.10.4049' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:id[not(@nullFlavor)]
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:id[not(@nullFlavor)]"
         id="d15e9538-false-d10362e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:code[(@code = '29308-4' and @codeSystem = '2.16.840.1.113883.6.1') or (@code = '75324-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:code[(@code = '29308-4' and @codeSystem = '2.16.840.1.113883.6.1') or (@code = '75324-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e9543-false-d10376e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="@nullFlavor or (@code='29308-4' and @codeSystem='2.16.840.1.113883.6.1') or (@code='75324-4' and @codeSystem='2.16.840.1.113883.6.1')">(Problem Observation (Abschlussdiagnose)): Der Elementinhalt MUSS einer von 'code '29308-4' codeSystem '2.16.840.1.113883.6.1' oder code '75324-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
      <report role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="@code='75324-4'">(Problem Observation (Abschlussdiagnose)): Code LOINC 75324-4 sollte durch LOINC 29308-4 ersetzt werden.</report>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:text
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:text"
         id="d15e9555-false-d10398e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:reference) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:reference) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:text/hl7:reference
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:text/hl7:reference"
         id="d15e9562-false-d10426e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="@value">(Problem Observation (Abschlussdiagnose)): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:statusCode[@code = 'completed']
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:statusCode[@code = 'completed']"
         id="d15e9574-false-d10444e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="@nullFlavor or (@code='completed')">(Problem Observation (Abschlussdiagnose)): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:effectiveTime
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:effectiveTime"
         id="d15e9581-false-d10464e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:low) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:low) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:high) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:effectiveTime/hl7:low
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:effectiveTime/hl7:low"
         id="d15e9592-false-d10501e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="not(*)">(Problem Observation (Abschlussdiagnose)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:effectiveTime/hl7:high
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:effectiveTime/hl7:high"
         id="d15e9597-false-d10518e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="not(*)">(Problem Observation (Abschlussdiagnose)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value"
         id="d15e9603-false-d10539e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:originalText) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='8']) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:qualifier[hl7:name/@code='8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='FSTAT']) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:qualifier[hl7:name/@code='FSTAT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='20228-3']) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:qualifier[hl7:name/@code='20228-3'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:originalText
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:originalText"
         id="d15e9624-false-d10594e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90027
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='8']
Item: (Diagnosesicherheit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='8']"
         id="d10601e7-false-d10607e0">
      <extends rule="CR"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CR')">(Diagnosesicherheit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="count(hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &gt;= 1">(Diagnosesicherheit): Element hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="count(hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &lt;= 1">(Diagnosesicherheit): Element hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Diagnosesicherheit): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Diagnosesicherheit): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90027
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='8']/hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]
Item: (Diagnosesicherheit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='8']/hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]"
         id="d10601e24-false-d10652e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Diagnosesicherheit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="@nullFlavor or (@code='8' and @codeSystem='2.16.840.1.113883.3.7.1.0')">(Diagnosesicherheit): Der Elementinhalt MUSS einer von 'code '8' codeSystem '2.16.840.1.113883.3.7.1.0'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90027
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='8']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Diagnosesicherheit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='8']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d10601e31-false-d10674e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Diagnosesicherheit): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90027-2017-03-02T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.121-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Diagnosesicherheit): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.121 S_ICD_DIAGNOSESICHERHEIT (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']"
         id="d15e9785-false-d10696e0">
      <extends rule="CR"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CR')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Problem Observation (Abschlussdiagnose)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]"
         id="d15e9802-false-d10741e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="@nullFlavor or (@code='FSTAT' and @codeSystem='1.2.276.0.76.3.1.195.5.72')">(Problem Observation (Abschlussdiagnose)): Der Elementinhalt MUSS einer von 'code 'FSTAT' codeSystem '1.2.276.0.76.3.1.195.5.72'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4049
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Problem Observation (Abschlussdiagnose))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e9809-false-d10763e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Problem Observation (Abschlussdiagnose)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4049-2017-02-13T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Problem Observation (Abschlussdiagnose)): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.73 Befundstatus Verdacht/Gesichert (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90026
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='20228-3']
Item: (Lateralität)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='20228-3']"
         id="d10781e7-false-d10787e0">
      <extends rule="CR"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CR')">(Lateralität): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="count(hl7:name[(@code = '20228-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Lateralität): Element hl7:name[(@code = '20228-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="count(hl7:name[(@code = '20228-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Lateralität): Element hl7:name[(@code = '20228-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Lateralität): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Lateralität): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90026
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='20228-3']/hl7:name[(@code = '20228-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Lateralität)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='20228-3']/hl7:name[(@code = '20228-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d10781e24-false-d10832e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Lateralität): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="@nullFlavor or (@code='20228-3' and @codeSystem='2.16.840.1.113883.6.1')">(Lateralität): Der Elementinhalt MUSS einer von 'code '20228-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90026
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='20228-3']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Lateralität)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4049']]/hl7:value/hl7:qualifier[hl7:name/@code='20228-3']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d10781e31-false-d10854e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Lateralität): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Lateralität): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.412 Lateralität (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.412-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90026-2017-02-13T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Lateralität): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.412 Lateralität (DYNAMIC).</assert>
   </rule>
</pattern>
