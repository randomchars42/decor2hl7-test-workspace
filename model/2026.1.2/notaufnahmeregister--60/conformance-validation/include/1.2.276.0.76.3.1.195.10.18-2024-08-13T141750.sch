<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.18
Name: Ersteinschätzung
Description: A acuity entry indicates the triage acuity entry and the triage time of the patient
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750">
   <title>Ersteinschätzung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]"
         id="d15e17842-false-d19329e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]) &gt;= 1">(Ersteinschätzung): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]) &lt;= 1">(Ersteinschätzung): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]"
         id="d15e17859-false-d19386e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@classCode) = ('OBS')">(Ersteinschätzung): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@moodCode) = ('EVN')">(Ersteinschätzung): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="not(hl7:methodCode[@code='713009001']) or hl7:entryRelationship[hl7:observation[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.19']]]">(Ersteinschätzung): Manchester Triage System - anzugeben, wenn verwendetes Ersteinschätzungssystem MTS ist</assert>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="not(hl7:methodCode[@code='713010006']) or hl7:entryRelationship[hl7:observation[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.20']]]">(Ersteinschätzung): Emergency Severity Index - anzugeben, wenn verwendetes Ersteinschätzungssystem EDI ist</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']) &gt;= 1">(Ersteinschätzung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']) &lt;= 1">(Ersteinschätzung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Ersteinschätzung): Element hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Ersteinschätzung): Element hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:text) &lt;= 1">(Ersteinschätzung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Ersteinschätzung): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Ersteinschätzung): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Ersteinschätzung): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Ersteinschätzung): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Ersteinschätzung): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Ersteinschätzung): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Ersteinschätzung): Element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Ersteinschätzung): Element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]) &lt;= 1">(Ersteinschätzung): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]) &lt;= 1">(Ersteinschätzung): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']"
         id="d15e17867-false-d19550e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.18')">(Ersteinschätzung): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.18' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:id
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:id"
         id="d15e17874-false-d19569e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e17880-false-d19582e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="@nullFlavor or (@code='273887006' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Triage index (assessment scale)')">(Ersteinschätzung): Der Elementinhalt MUSS einer von 'code '273887006' codeSystem '2.16.840.1.113883.6.96' displayName='Triage index (assessment scale)'' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:translation[(@code = '75616-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Ersteinschätzung): Element hl7:translation[(@code = '75616-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:translation[(@code = '75616-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Ersteinschätzung): Element hl7:translation[(@code = '75616-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '75616-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:code[(@code = '273887006' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '75616-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e17886-false-d19617e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="@nullFlavor or (@code='75616-3' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Generic five level triage system')">(Ersteinschätzung): Der Elementinhalt MUSS einer von 'code '75616-3' codeSystem '2.16.840.1.113883.6.1' displayName='Generic five level triage system'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:text
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:text"
         id="d15e17894-false-d19637e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:reference) &gt;= 1">(Ersteinschätzung): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="count(hl7:reference) &lt;= 1">(Ersteinschätzung): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:text/hl7:reference
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:text/hl7:reference"
         id="d15e17901-false-d19665e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:statusCode[@code = 'completed']
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:statusCode[@code = 'completed']"
         id="d15e17907-false-d19678e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="@nullFlavor or (@code='completed')">(Ersteinschätzung): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:effectiveTime
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:effectiveTime"
         id="d15e17914-false-d19698e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="not(*)">(Ersteinschätzung): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e17922-false-d19717e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.11-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Ersteinschätzung): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.11 Generic five level triage system (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e17932-false-d19743e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.12-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Ersteinschätzung): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.12 Used Triage System (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="not(@codeSystemVersion) or string-length(@codeSystemVersion)&gt;0">(Ersteinschätzung): Attribute @codeSystemVersion MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemVersion"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@typeCode) = ('COMP')">(Ersteinschätzung): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Ersteinschätzung): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.18
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@typeCode) = ('COMP')">(Ersteinschätzung): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Ersteinschätzung): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
