<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3050
Name: Diagnostik
Description: Relevant diagnostic tests &/or laboratory data Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3050-2025-12-01T000000">
   <title>Diagnostik</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]
Item: (Diagnostik)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]"
         id="d15e4167-false-d1584e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Diagnostik): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3050']) &gt;= 1">(Diagnostik): Element hl7:templateId[@root = '1.2.276.0.76.10.3050'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3050']) &lt;= 1">(Diagnostik): Element hl7:templateId[@root = '1.2.276.0.76.10.3050'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Diagnostik): Element hl7:code[(@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Diagnostik): Element hl7:code[(@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Diagnostik): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Diagnostik): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Diagnostik): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Diagnostik): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4051']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4051']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4052']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4052']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4053']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4053']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4054']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4054']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4055']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4055']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4056']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4056']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.57']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.57']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4058']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4058']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4057']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4057']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4060']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4060']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4061']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4061']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4064']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4064']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4062']]]) &lt;= 1">(Diagnostik): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4062']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:templateId[@root = '1.2.276.0.76.10.3050']
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:templateId[@root = '1.2.276.0.76.10.3050']"
         id="d15e4173-false-d1966e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3050')">(Diagnostik): Der Wert von root MUSS '1.2.276.0.76.10.3050' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:code[(@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:code[(@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e4180-false-d1985e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="@nullFlavor or (@code='30954-2' and @codeSystem='2.16.840.1.113883.6.1')">(Diagnostik): Der Elementinhalt MUSS einer von 'code '30954-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:title[not(@nullFlavor)]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:title[not(@nullFlavor)]"
         id="d15e4187-false-d2005e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="text()='Diagnostik'">(Diagnostik): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Diagnostik'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:text[not(@nullFlavor)]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:text[not(@nullFlavor)]"
         id="d15e4195-false-d2024e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4051']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4051']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4052']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4052']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4053']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4053']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4054']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4054']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4055']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4055']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4056']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4056']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.59']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.60']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.57']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.57']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.58']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4063']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4058']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4058']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4057']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4057']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.48']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4059']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4060']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4060']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4061']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4061']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4064']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4064']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.50']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4062']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4062']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3050
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]
Item: (Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Diagnostik): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3050-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Diagnostik): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
