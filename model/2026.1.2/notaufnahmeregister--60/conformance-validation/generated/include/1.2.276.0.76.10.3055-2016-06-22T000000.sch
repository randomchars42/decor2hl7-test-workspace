<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3055
Name: Abschlussdiagnosen (Basis)
Description: Abschlussdiagnosen Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3055-2016-06-22T000000">
   <title>Abschlussdiagnosen (Basis)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]
Item: (Abschlussdiagnosen (Basis))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]
Item: (Abschlussdiagnosen (Basis))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]"
         id="d15e5083-false-d3688e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Abschlussdiagnosen (Basis)): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3055']) &gt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:templateId[@root = '1.2.276.0.76.10.3055'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3055']) &lt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:templateId[@root = '1.2.276.0.76.10.3055'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:code[(@code = '11301-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:code[(@code = '11301-9' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:code[(@code = '11301-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:code[(@code = '11301-9' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4048']]]) &lt;= 1">(Abschlussdiagnosen (Basis)): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4048']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:templateId[@root = '1.2.276.0.76.10.3055']
Item: (Abschlussdiagnosen (Basis))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:templateId[@root = '1.2.276.0.76.10.3055']"
         id="d15e5089-false-d3781e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Abschlussdiagnosen (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3055')">(Abschlussdiagnosen (Basis)): Der Wert von root MUSS '1.2.276.0.76.10.3055' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:code[(@code = '11301-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Abschlussdiagnosen (Basis))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:code[(@code = '11301-9' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e5096-false-d3800e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Abschlussdiagnosen (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="@nullFlavor or (@code='11301-9' and @codeSystem='2.16.840.1.113883.6.1')">(Abschlussdiagnosen (Basis)): Der Elementinhalt MUSS einer von 'code '11301-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:title[not(@nullFlavor)]
Item: (Abschlussdiagnosen (Basis))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:title[not(@nullFlavor)]"
         id="d15e5103-false-d3820e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Abschlussdiagnosen (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="text()='Abschlussdiagnosen'">(Abschlussdiagnosen (Basis)): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Abschlussdiagnosen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:text[not(@nullFlavor)]
Item: (Abschlussdiagnosen (Basis))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:text[not(@nullFlavor)]"
         id="d15e5111-false-d3839e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Abschlussdiagnosen (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3055
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4048']]]
Item: (Abschlussdiagnosen (Basis))
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4048']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="string(@typeCode) = ('COMP')">(Abschlussdiagnosen (Basis)): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3055-2016-06-22T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Abschlussdiagnosen (Basis)): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
