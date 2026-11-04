<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3053
Name: Notfallanamnese
Description: History of present illness section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3053-2025-12-01T000000">
   <title>Notfallanamnese</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]
Item: (Notfallanamnese)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]"
         id="d15e4763-false-d3123e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Notfallanamnese): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3053']) &gt;= 1">(Notfallanamnese): Element hl7:templateId[@root = '1.2.276.0.76.10.3053'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3053']) &lt;= 1">(Notfallanamnese): Element hl7:templateId[@root = '1.2.276.0.76.10.3053'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '10164-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Notfallanamnese): Element hl7:code[(@code = '10164-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:code[(@code = '10164-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Notfallanamnese): Element hl7:code[(@code = '10164-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Notfallanamnese): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Notfallanamnese): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Notfallanamnese): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Notfallanamnese): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]) &lt;= 1">(Notfallanamnese): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]) &lt;= 1">(Notfallanamnese): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:templateId[@root = '1.2.276.0.76.10.3053']
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:templateId[@root = '1.2.276.0.76.10.3053']"
         id="d15e4769-false-d3226e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Notfallanamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3053')">(Notfallanamnese): Der Wert von root MUSS '1.2.276.0.76.10.3053' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:code[(@code = '10164-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:code[(@code = '10164-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e4776-false-d3245e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Notfallanamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="@nullFlavor or (@code='10164-2' and @codeSystem='2.16.840.1.113883.6.1')">(Notfallanamnese): Der Elementinhalt MUSS einer von 'code '10164-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:title[not(@nullFlavor)]
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:title[not(@nullFlavor)]"
         id="d15e4783-false-d3265e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Notfallanamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="text()='Notfallanamnese'">(Notfallanamnese): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Notfallanamnese'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:text[not(@nullFlavor)]
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:text[not(@nullFlavor)]"
         id="d15e4791-false-d3284e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Notfallanamnese): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.28']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="@typeCode">(Notfallanamnese): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="not(@typeCode) or (string-length(@typeCode) &gt; 0 and not(matches(@typeCode,'\s')))">(Notfallanamnese): Attribute @typeCode MUSS vom Datentyp 'cs' sein  - '<value-of select="@typeCode"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Notfallanamnese): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3053
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]
Item: (Notfallanamnese)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="@typeCode">(Notfallanamnese): Attribut @typeCode MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="not(@typeCode) or (string-length(@typeCode) &gt; 0 and not(matches(@typeCode,'\s')))">(Notfallanamnese): Attribute @typeCode MUSS vom Datentyp 'cs' sein  - '<value-of select="@typeCode"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3053-2025-12-01T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Notfallanamnese): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
</pattern>
