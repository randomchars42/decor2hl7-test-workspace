<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3054
Name: Prozeduren und Maßnahmen
Description: Patient care narrative Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3054-2025-12-01T000000">
   <title>Prozeduren und Maßnahmen</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]
Item: (Prozeduren und Maßnahmen)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]"
         id="d15e4909-false-d3412e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Prozeduren und Maßnahmen): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3054']) &gt;= 1">(Prozeduren und Maßnahmen): Element hl7:templateId[@root = '1.2.276.0.76.10.3054'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3054']) &lt;= 1">(Prozeduren und Maßnahmen): Element hl7:templateId[@root = '1.2.276.0.76.10.3054'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '67781-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Prozeduren und Maßnahmen): Element hl7:code[(@code = '67781-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '67781-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Prozeduren und Maßnahmen): Element hl7:code[(@code = '67781-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Prozeduren und Maßnahmen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Prozeduren und Maßnahmen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Prozeduren und Maßnahmen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Prozeduren und Maßnahmen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]) &lt;= 1">(Prozeduren und Maßnahmen): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:templateId[@root = '1.2.276.0.76.10.3054']
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:templateId[@root = '1.2.276.0.76.10.3054']"
         id="d15e4915-false-d3508e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Prozeduren und Maßnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3054')">(Prozeduren und Maßnahmen): Der Wert von root MUSS '1.2.276.0.76.10.3054' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:code[(@code = '67781-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:code[(@code = '67781-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e4922-false-d3527e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Prozeduren und Maßnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="@nullFlavor or (@code='67781-5' and @codeSystem='2.16.840.1.113883.6.1')">(Prozeduren und Maßnahmen): Der Elementinhalt MUSS einer von 'code '67781-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:title[not(@nullFlavor)]
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:title[not(@nullFlavor)]"
         id="d15e4929-false-d3547e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Prozeduren und Maßnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="text()='Prozeduren und Maßnahmen'">(Prozeduren und Maßnahmen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Prozeduren und Maßnahmen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:text[not(@nullFlavor)]
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:text[not(@nullFlavor)]"
         id="d15e4937-false-d3566e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Prozeduren und Maßnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Prozeduren und Maßnahmen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Prozeduren und Maßnahmen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3054
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.90']]]
Item: (Prozeduren und Maßnahmen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.90']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Prozeduren und Maßnahmen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3054-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Prozeduren und Maßnahmen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
