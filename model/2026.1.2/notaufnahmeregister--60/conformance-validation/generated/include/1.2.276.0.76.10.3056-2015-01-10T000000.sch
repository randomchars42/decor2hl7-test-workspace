<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3056
Name: Weiteres Procedere / Therapieempfehlung / Weiterbehandler
Description: Weiteres Procedere / Therapieempfehlung / Weiterbehandler Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3056-2015-01-10T000000">
   <title>Weiteres Procedere / Therapieempfehlung / Weiterbehandler</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]"
         id="d15e5184-false-d3916e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3056']) &gt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:templateId[@root = '1.2.276.0.76.10.3056'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3056']) &lt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:templateId[@root = '1.2.276.0.76.10.3056'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:code[(@code = '67661-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:code[(@code = '67661-9' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:code[(@code = '67661-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:code[(@code = '67661-9' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]) &lt;= 1">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:templateId[@root = '1.2.276.0.76.10.3056']
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:templateId[@root = '1.2.276.0.76.10.3056']"
         id="d15e5190-false-d4003e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3056')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Der Wert von root MUSS '1.2.276.0.76.10.3056' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:code[(@code = '67661-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:code[(@code = '67661-9' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e5197-false-d4022e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="@nullFlavor or (@code='67661-9' and @codeSystem='2.16.840.1.113883.6.1')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Der Elementinhalt MUSS einer von 'code '67661-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:title[not(@nullFlavor)]
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:title[not(@nullFlavor)]"
         id="d15e5204-false-d4042e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="text()='Weiteres Procedere / Therapieempfehlung / Weiterbehandler'">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Weiteres Procedere / Therapieempfehlung / Weiterbehandler'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:text[not(@nullFlavor)]
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:text[not(@nullFlavor)]"
         id="d15e5212-false-d4061e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3056
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]
Item: (Weiteres Procedere / Therapieempfehlung / Weiterbehandler)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4067']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@typeCode) = ('COMP')">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3056-2015-01-10T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Weiteres Procedere / Therapieempfehlung / Weiterbehandler): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
