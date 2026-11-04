<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3048
Name: Beschwerden bei Vorstellung
Description: Beschwerden bei Vorstellung / Grund der Vorstellung
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3048-2015-01-10T000000">
   <title>Beschwerden bei Vorstellung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]
Item: (Beschwerden bei Vorstellung)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]
Item: (Beschwerden bei Vorstellung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]"
         id="d15e3955-false-d1158e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Beschwerden bei Vorstellung): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3048']) &gt;= 1">(Beschwerden bei Vorstellung): Element hl7:templateId[@root = '1.2.276.0.76.10.3048'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3048']) &lt;= 1">(Beschwerden bei Vorstellung): Element hl7:templateId[@root = '1.2.276.0.76.10.3048'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Beschwerden bei Vorstellung): Element hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Beschwerden bei Vorstellung): Element hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Beschwerden bei Vorstellung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Beschwerden bei Vorstellung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Beschwerden bei Vorstellung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Beschwerden bei Vorstellung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]) &gt;= 1">(Beschwerden bei Vorstellung): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]) &lt;= 1">(Beschwerden bei Vorstellung): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:templateId[@root = '1.2.276.0.76.10.3048']
Item: (Beschwerden bei Vorstellung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:templateId[@root = '1.2.276.0.76.10.3048']"
         id="d15e3961-false-d1253e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Beschwerden bei Vorstellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3048')">(Beschwerden bei Vorstellung): Der Wert von root MUSS '1.2.276.0.76.10.3048' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Beschwerden bei Vorstellung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e3968-false-d1272e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Beschwerden bei Vorstellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="@nullFlavor or (@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')">(Beschwerden bei Vorstellung): Der Elementinhalt MUSS einer von 'code '46239-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:title[not(@nullFlavor)]
Item: (Beschwerden bei Vorstellung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:title[not(@nullFlavor)]"
         id="d15e3975-false-d1292e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Beschwerden bei Vorstellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="text()='Beschwerden bei Vorstellung'">(Beschwerden bei Vorstellung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Beschwerden bei Vorstellung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:text[not(@nullFlavor)]
Item: (Beschwerden bei Vorstellung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:text[not(@nullFlavor)]"
         id="d15e3983-false-d1311e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Beschwerden bei Vorstellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3048
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]
Item: (Beschwerden bei Vorstellung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@typeCode) = ('COMP')">(Beschwerden bei Vorstellung): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3048-2015-01-10T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Beschwerden bei Vorstellung): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
