<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3046
Name: Zuweisung
Description: Zuweisung Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3046-2015-01-10T000000">
   <title>Zuweisung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]
Item: (Zuweisung)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]
Item: (Zuweisung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]"
         id="d15e3686-false-d557e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Zuweisung): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3046']) &gt;= 1">(Zuweisung): Element hl7:templateId[@root = '1.2.276.0.76.10.3046'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3046']) &lt;= 1">(Zuweisung): Element hl7:templateId[@root = '1.2.276.0.76.10.3046'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Zuweisung): Element hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Zuweisung): Element hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Zuweisung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Zuweisung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Zuweisung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Zuweisung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]) &gt;= 1">(Zuweisung): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]) &lt;= 1">(Zuweisung): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:templateId[@root = '1.2.276.0.76.10.3046']
Item: (Zuweisung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:templateId[@root = '1.2.276.0.76.10.3046']"
         id="d15e3692-false-d649e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zuweisung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3046')">(Zuweisung): Der Wert von root MUSS '1.2.276.0.76.10.3046' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Zuweisung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e3699-false-d668e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Zuweisung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="@nullFlavor or (@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')">(Zuweisung): Der Elementinhalt MUSS einer von 'code '11293-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:title[not(@nullFlavor)]
Item: (Zuweisung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:title[not(@nullFlavor)]"
         id="d15e3706-false-d688e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Zuweisung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="text()='Zuweisung'">(Zuweisung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Zuweisung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:text[not(@nullFlavor)]
Item: (Zuweisung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:text[not(@nullFlavor)]"
         id="d15e3714-false-d707e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Zuweisung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3046
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]
Item: (Zuweisung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@typeCode) = ('COMP')">(Zuweisung): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3046-2015-01-10T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Zuweisung): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
