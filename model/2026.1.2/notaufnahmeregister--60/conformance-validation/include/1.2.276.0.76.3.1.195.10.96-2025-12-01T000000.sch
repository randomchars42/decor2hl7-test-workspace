<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.96
Name: Vitalparameter
Description: Vital Signs Section, diese kann mehrere Vital Signs Container umfassen.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000">
   <title>Vitalparameter</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]
Item: (Vitalparameter)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]
Item: (Vitalparameter)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]"
         id="d15e25623-false-d45022e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Vitalparameter): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']) &gt;= 1">(Vitalparameter): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']) &lt;= 1">(Vitalparameter): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Vitalparameter): Element hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Vitalparameter): Element hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Vitalparameter): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Vitalparameter): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Vitalparameter): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Vitalparameter): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']
Item: (Vitalparameter)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']"
         id="d15e25629-false-d45126e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Vitalparameter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.96')">(Vitalparameter): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.96' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Vitalparameter)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e25636-false-d45145e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Vitalparameter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="@nullFlavor or (@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')">(Vitalparameter): Der Elementinhalt MUSS einer von 'code '8716-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:title[not(@nullFlavor)]
Item: (Vitalparameter)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:title[not(@nullFlavor)]"
         id="d15e25643-false-d45165e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Vitalparameter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:text[not(@nullFlavor)]
Item: (Vitalparameter)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:text[not(@nullFlavor)]"
         id="d15e25649-false-d45178e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Vitalparameter): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.96
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]
Item: (Vitalparameter)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
