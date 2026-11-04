<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.3047
Name: Klinische Basisinformationen
Description: Klinische Basisinformationen Section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.3047-2016-08-02T000000">
   <title>Klinische Basisinformationen</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]
Item: (Klinische Basisinformationen)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]"
         id="d15e3797-false-d802e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Klinische Basisinformationen): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3047']) &gt;= 1">(Klinische Basisinformationen): Element hl7:templateId[@root = '1.2.276.0.76.10.3047'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.3047']) &lt;= 1">(Klinische Basisinformationen): Element hl7:templateId[@root = '1.2.276.0.76.10.3047'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:code[(@code = '55752-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Klinische Basisinformationen): Element hl7:code[(@code = '55752-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:code[(@code = '55752-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Klinische Basisinformationen): Element hl7:code[(@code = '55752-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Klinische Basisinformationen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Klinische Basisinformationen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Klinische Basisinformationen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Klinische Basisinformationen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]) &lt;= 1">(Klinische Basisinformationen): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]) &lt;= 1">(Klinische Basisinformationen): Element hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]) &lt;= 1">(Klinische Basisinformationen): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]) &lt;= 1">(Klinische Basisinformationen): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:templateId[@root = '1.2.276.0.76.10.3047']
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:templateId[@root = '1.2.276.0.76.10.3047']"
         id="d15e3803-false-d927e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Klinische Basisinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.3047')">(Klinische Basisinformationen): Der Wert von root MUSS '1.2.276.0.76.10.3047' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:code[(@code = '55752-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:code[(@code = '55752-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e3810-false-d946e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Klinische Basisinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="@nullFlavor or (@code='55752-0' and @codeSystem='2.16.840.1.113883.6.1')">(Klinische Basisinformationen): Der Elementinhalt MUSS einer von 'code '55752-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:title[not(@nullFlavor)]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:title[not(@nullFlavor)]"
         id="d15e3817-false-d966e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Klinische Basisinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="text()='Klinische Basisinformationen'">(Klinische Basisinformationen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Klinische Basisinformationen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:text[not(@nullFlavor)]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:text[not(@nullFlavor)]"
         id="d15e3825-false-d985e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Klinische Basisinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@typeCode) = ('COMP')">(Klinische Basisinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Klinische Basisinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@typeCode) = ('COMP')">(Klinische Basisinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Klinische Basisinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4045']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@typeCode) = ('COMP')">(Klinische Basisinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Klinische Basisinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.3047
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]
Item: (Klinische Basisinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@typeCode) = ('COMP')">(Klinische Basisinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.3047-2016-08-02T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Klinische Basisinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
