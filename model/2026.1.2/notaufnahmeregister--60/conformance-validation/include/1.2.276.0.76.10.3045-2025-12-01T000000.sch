<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3045
Name: Transportmittel
Description: Transport method Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3045-2025-12-01T000000">
   <title>Transportmittel</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]
Item: (Transportmittel)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]"
         id="d15e3550-false-d311e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Transportmittel): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3045']) &gt;= 1">(Transportmittel): Element hl7:templateId[@root = '1.2.276.0.76.10.3045'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3045']) &lt;= 1">(Transportmittel): Element hl7:templateId[@root = '1.2.276.0.76.10.3045'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Transportmittel): Element hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Transportmittel): Element hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Transportmittel): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Transportmittel): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Transportmittel): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Transportmittel): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]) &lt;= 1">(Transportmittel): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]) &lt;= 1">(Transportmittel): Element hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:templateId[@root = '1.2.276.0.76.10.3045']
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:templateId[@root = '1.2.276.0.76.10.3045']"
         id="d15e3556-false-d407e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Transportmittel): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3045')">(Transportmittel): Der Wert von root MUSS '1.2.276.0.76.10.3045' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:code[(@code = '11459-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e3563-false-d426e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Transportmittel): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="@nullFlavor or (@code='11459-5' and @codeSystem='2.16.840.1.113883.6.1')">(Transportmittel): Der Elementinhalt MUSS einer von 'code '11459-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:title[not(@nullFlavor)]
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:title[not(@nullFlavor)]"
         id="d15e3570-false-d446e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Transportmittel): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="text()='Transportmittel'">(Transportmittel): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Transportmittel'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:text[not(@nullFlavor)]
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:text[not(@nullFlavor)]"
         id="d15e3578-false-d465e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Transportmittel): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4037']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Transportmittel): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Transportmittel): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3045
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]
Item: (Transportmittel)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="string(@typeCode) = ('COMP')">(Transportmittel): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3045-2025-12-01T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Transportmittel): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
