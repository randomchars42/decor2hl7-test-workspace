<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4070
Name: Zusätzliche externe Dokumentation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4070-2015-03-30T000000">
   <title>Zusätzliche externe Dokumentation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]
Item: (Zusätzliche externe Dokumentation)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]
Item: (Zusätzliche externe Dokumentation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]"
         id="d15e14733-false-d17364e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="string(@classCode) = ('ACT')">(Zusätzliche externe Dokumentation): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="string(@moodCode) = ('EVN')">(Zusätzliche externe Dokumentation): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4070']) &gt;= 1">(Zusätzliche externe Dokumentation): Element hl7:templateId[@root = '1.2.276.0.76.10.4070'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4070']) &lt;= 1">(Zusätzliche externe Dokumentation): Element hl7:templateId[@root = '1.2.276.0.76.10.4070'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Zusätzliche externe Dokumentation): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Zusätzliche externe Dokumentation): Element hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Zusätzliche externe Dokumentation): Element hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:text) &lt;= 1">(Zusätzliche externe Dokumentation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:templateId[@root = '1.2.276.0.76.10.4070']
Item: (Zusätzliche externe Dokumentation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:templateId[@root = '1.2.276.0.76.10.4070']"
         id="d15e14741-false-d17441e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zusätzliche externe Dokumentation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4070')">(Zusätzliche externe Dokumentation): Der Wert von root MUSS '1.2.276.0.76.10.4070' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:id[not(@nullFlavor)]
Item: (Zusätzliche externe Dokumentation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:id[not(@nullFlavor)]"
         id="d15e14748-false-d17460e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zusätzliche externe Dokumentation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Zusätzliche externe Dokumentation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e14754-false-d17473e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Zusätzliche externe Dokumentation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="@nullFlavor or (@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')">(Zusätzliche externe Dokumentation): Der Elementinhalt MUSS einer von 'code '11516-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:text
Item: (Zusätzliche externe Dokumentation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:text"
         id="d15e14761-false-d17493e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Zusätzliche externe Dokumentation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:reference) &gt;= 1">(Zusätzliche externe Dokumentation): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="count(hl7:reference) &lt;= 1">(Zusätzliche externe Dokumentation): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:text/hl7:reference
Item: (Zusätzliche externe Dokumentation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:text/hl7:reference"
         id="d15e14768-false-d17521e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4070-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Zusätzliche externe Dokumentation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4070
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]
Item: (Zusätzliche externe Dokumentation)
-->
</pattern>
