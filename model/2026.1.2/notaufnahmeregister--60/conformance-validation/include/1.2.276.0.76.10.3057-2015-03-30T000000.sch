<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3057
Name: Zusatzmodule (weitere Dokumentation)
Description: Zusatzmodule Section (weitere Dokumentation)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3057-2015-03-30T000000">
   <title>Zusatzmodule (weitere Dokumentation)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]"
         id="d15e5314-false-d4138e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Zusatzmodule (weitere Dokumentation)): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3057']) &gt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:templateId[@root = '1.2.276.0.76.10.3057'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3057']) &lt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:templateId[@root = '1.2.276.0.76.10.3057'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]) &gt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]) &lt;= 1">(Zusatzmodule (weitere Dokumentation)): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:templateId[@root = '1.2.276.0.76.10.3057']
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:templateId[@root = '1.2.276.0.76.10.3057']"
         id="d15e5320-false-d4233e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zusatzmodule (weitere Dokumentation)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3057')">(Zusatzmodule (weitere Dokumentation)): Der Wert von root MUSS '1.2.276.0.76.10.3057' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:code[(@code = '11516-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e5327-false-d4252e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Zusatzmodule (weitere Dokumentation)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="@nullFlavor or (@code='11516-2' and @codeSystem='2.16.840.1.113883.6.1')">(Zusatzmodule (weitere Dokumentation)): Der Elementinhalt MUSS einer von 'code '11516-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:title[not(@nullFlavor)]
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:title[not(@nullFlavor)]"
         id="d15e5334-false-d4272e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Zusatzmodule (weitere Dokumentation)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="text()='Zusatzmodule'">(Zusatzmodule (weitere Dokumentation)): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Zusatzmodule'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:text[not(@nullFlavor)]
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:text[not(@nullFlavor)]"
         id="d15e5342-false-d4291e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Zusatzmodule (weitere Dokumentation)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3057
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]
Item: (Zusatzmodule (weitere Dokumentation))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4070']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@typeCode) = ('COMP')">(Zusatzmodule (weitere Dokumentation)): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3057-2015-03-30T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Zusatzmodule (weitere Dokumentation)): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
