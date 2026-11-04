<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.16
Name: Ersteinschätzung
Description: Initial Acuity Assessment Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558">
   <title>Ersteinschätzung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]
Item: (Ersteinschätzung)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]"
         id="d15e17693-false-d18765e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Ersteinschätzung): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']) &gt;= 1">(Ersteinschätzung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']) &lt;= 1">(Ersteinschätzung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:code[(@code = '11283-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Ersteinschätzung): Element hl7:code[(@code = '11283-9' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:code[(@code = '11283-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Ersteinschätzung): Element hl7:code[(@code = '11283-9' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Ersteinschätzung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Ersteinschätzung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Ersteinschätzung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Ersteinschätzung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]) &lt;= 1">(Ersteinschätzung): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]) &gt;= 1">(Ersteinschätzung): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]) &lt;= 1">(Ersteinschätzung): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']"
         id="d15e17699-false-d18886e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.16')">(Ersteinschätzung): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.16' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:code[(@code = '11283-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:code[(@code = '11283-9' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e17706-false-d18905e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="@nullFlavor or (@code='11283-9' and @codeSystem='2.16.840.1.113883.6.1')">(Ersteinschätzung): Der Elementinhalt MUSS einer von 'code '11283-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:title[not(@nullFlavor)]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:title[not(@nullFlavor)]"
         id="d15e17713-false-d18925e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="text()='Ersteinschätzung'">(Ersteinschätzung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Ersteinschätzung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:text[not(@nullFlavor)]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:text[not(@nullFlavor)]"
         id="d15e17721-false-d18944e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Ersteinschätzung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.17']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="string(@typeCode) = ('COMP')">(Ersteinschätzung): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Ersteinschätzung): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]
Item: (Ersteinschätzung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.18']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="string(@typeCode) = ('COMP')">(Ersteinschätzung): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Ersteinschätzung): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
