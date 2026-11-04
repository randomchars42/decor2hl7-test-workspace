<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4067
Name: Weiterbehandlung Verlegung
Description: Weiterbehandlung Verlegung des Patienten
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4067-2025-12-01T000000">
   <title>Weiterbehandlung Verlegung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]"
         id="d15e14565-false-d17033e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]"
         id="d15e14596-false-d17058e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="string(@classCode) = ('ACT')">(Weiterbehandlung Verlegung): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="string(@moodCode) = ('INT')">(Weiterbehandlung Verlegung): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4067']) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:templateId[@root = '1.2.276.0.76.10.4067'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4067']) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:templateId[@root = '1.2.276.0.76.10.4067'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:code) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:code ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:code) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:text) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:templateId[@root = '1.2.276.0.76.10.4067']
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:templateId[@root = '1.2.276.0.76.10.4067']"
         id="d15e14604-false-d17137e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Weiterbehandlung Verlegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4067')">(Weiterbehandlung Verlegung): Der Wert von root MUSS '1.2.276.0.76.10.4067' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:code
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:code"
         id="d15e14611-false-d17158e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Weiterbehandlung Verlegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.53-DYNAMIC.xml')//valueSet[1][conceptList/include[@codeSystem = $theCodeSystem]])">(Weiterbehandlung Verlegung): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.53 Referral actions (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:text
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:text"
         id="d15e14619-false-d17182e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Weiterbehandlung Verlegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:reference) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:reference) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:text/hl7:reference
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:text/hl7:reference"
         id="d15e14626-false-d17210e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Weiterbehandlung Verlegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d15e14632-false-d17225e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="string(@typeCode) = ('DST')">(Weiterbehandlung Verlegung): Der Wert von typeCode MUSS 'DST' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d15e14641-false-d17259e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="string(@classCode) = ('SDLOC')">(Weiterbehandlung Verlegung): Der Wert von classCode MUSS 'SDLOC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Weiterbehandlung Verlegung): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e14647-false-d17293e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Weiterbehandlung Verlegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Weiterbehandlung Verlegung): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.17 Fachabteilungsschlüssel (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="count(hl7:originalText) &lt;= 1">(Weiterbehandlung Verlegung): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4067
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText
Item: (Weiterbehandlung Verlegung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText"
         id="d15e14653-false-d17326e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4067-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Weiterbehandlung Verlegung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
