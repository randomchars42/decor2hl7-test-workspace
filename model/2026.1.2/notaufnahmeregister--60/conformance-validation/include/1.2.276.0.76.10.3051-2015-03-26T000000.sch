<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3051
Name: Allergien und Unverträglichkeiten
Description: Beschreibung der Allergien und Medikamentenunverträglichkeiten
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3051-2015-03-26T000000">
   <title>Allergien und Unverträglichkeiten</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]
Item: (Allergien und Unverträglichkeiten)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]
Item: (Allergien und Unverträglichkeiten)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]"
         id="d15e4634-false-d2877e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Allergien und Unverträglichkeiten): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(Allergien und Unverträglichkeiten): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3051']) &gt;= 1">(Allergien und Unverträglichkeiten): Element hl7:templateId[@root = '1.2.276.0.76.10.3051'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3051']) &lt;= 1">(Allergien und Unverträglichkeiten): Element hl7:templateId[@root = '1.2.276.0.76.10.3051'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Allergien und Unverträglichkeiten): Element hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Allergien und Unverträglichkeiten): Element hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Allergien und Unverträglichkeiten): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Allergien und Unverträglichkeiten): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Allergien und Unverträglichkeiten): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Allergien und Unverträglichkeiten): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]) &lt;= 1">(Allergien und Unverträglichkeiten): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:templateId[@root = '1.2.276.0.76.10.3051']
Item: (Allergien und Unverträglichkeiten)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:templateId[@root = '1.2.276.0.76.10.3051']"
         id="d15e4642-false-d2972e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Allergien und Unverträglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3051')">(Allergien und Unverträglichkeiten): Der Wert von root MUSS '1.2.276.0.76.10.3051' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Allergien und Unverträglichkeiten)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e4649-false-d2991e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Allergien und Unverträglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="@nullFlavor or (@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')">(Allergien und Unverträglichkeiten): Der Elementinhalt MUSS einer von 'code '48765-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:title[not(@nullFlavor)]
Item: (Allergien und Unverträglichkeiten)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:title[not(@nullFlavor)]"
         id="d15e4657-false-d3011e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Allergien und Unverträglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="text()='Allergien und Unverträglichkeiten'">(Allergien und Unverträglichkeiten): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Allergien und Unverträglichkeiten'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:text[not(@nullFlavor)]
Item: (Allergien und Unverträglichkeiten)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:text[not(@nullFlavor)]"
         id="d15e4664-false-d3030e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Allergien und Unverträglichkeiten): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3051
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]
Item: (Allergien und Unverträglichkeiten)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@typeCode) = ('COMP')">(Allergien und Unverträglichkeiten): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3051-2015-03-26T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Allergien und Unverträglichkeiten): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
