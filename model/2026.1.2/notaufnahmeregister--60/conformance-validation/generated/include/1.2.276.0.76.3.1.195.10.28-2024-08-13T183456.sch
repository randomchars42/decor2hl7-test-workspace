<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.28
Name: Unfall-Anamnese
Description: Injury Event Detail
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456">
   <title>Unfall-Anamnese</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]
Item: (Unfall-Anamnese)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]"
         id="d15e18695-false-d22089e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@classCode) = ('ACT')">(Unfall-Anamnese): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@moodCode) = ('EVN')">(Unfall-Anamnese): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']) &gt;= 1">(Unfall-Anamnese): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']) &lt;= 1">(Unfall-Anamnese): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:code[(@code = '74209-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Unfall-Anamnese): Element hl7:code[(@code = '74209-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:code[(@code = '74209-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Unfall-Anamnese): Element hl7:code[(@code = '74209-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:text) &lt;= 1">(Unfall-Anamnese): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Unfall-Anamnese): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Unfall-Anamnese): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]) &lt;= 1">(Unfall-Anamnese): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]) &lt;= 1">(Unfall-Anamnese): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]) &lt;= 1">(Unfall-Anamnese): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']"
         id="d15e18703-false-d22199e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.28')">(Unfall-Anamnese): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.28' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:code[(@code = '74209-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:code[(@code = '74209-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e18710-false-d22218e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="@nullFlavor or (@code='74209-8' and @codeSystem='2.16.840.1.113883.6.1')">(Unfall-Anamnese): Der Elementinhalt MUSS einer von 'code '74209-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:text
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:text"
         id="d15e18718-false-d22238e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:reference) &gt;= 1">(Unfall-Anamnese): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:reference) &lt;= 1">(Unfall-Anamnese): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:text/hl7:reference
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:text/hl7:reference"
         id="d15e18725-false-d22266e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:effectiveTime
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:effectiveTime"
         id="d15e18731-false-d22279e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:low) &gt;= 1">(Unfall-Anamnese): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:low) &lt;= 1">(Unfall-Anamnese): Element hl7:low kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:effectiveTime/hl7:low
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:effectiveTime/hl7:low"
         id="d15e18735-false-d22307e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="not(*)">(Unfall-Anamnese): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]"
         id="d15e18741-false-d22326e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@typeCode) = ('DEV')">(Unfall-Anamnese): Der Wert von typeCode MUSS 'DEV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(Unfall-Anamnese): Element hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(Unfall-Anamnese): Element hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d15e18747-false-d22360e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@classCode) = ('INST')">(Unfall-Anamnese): Der Wert von classCode MUSS 'INST' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Unfall-Anamnese): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Unfall-Anamnese): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e18753-false-d22394e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Unfall-Anamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.8-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Unfall-Anamnese): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.8 Fahrzeug des Verunfallten (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@typeCode) = ('COMP')">(Unfall-Anamnese): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Unfall-Anamnese): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.28
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]
Item: (Unfall-Anamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@typeCode) = ('COMP')">(Unfall-Anamnese): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Unfall-Anamnese): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
