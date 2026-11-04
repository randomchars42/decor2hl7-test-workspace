<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.73
Name: Addendum Dokumentationsinformationen
Description: 
                 Addendum Dokumentationsinformationen 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815">
   <title>Addendum Dokumentationsinformationen</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]
Item: (Addendum Dokumentationsinformationen)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]"
         id="d15e20536-false-d27376e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Addendum Dokumentationsinformationen): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']) &gt;= 1">(Addendum Dokumentationsinformationen): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Addendum Dokumentationsinformationen): Element hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Addendum Dokumentationsinformationen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Addendum Dokumentationsinformationen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.76']]]) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.76']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]) &lt;= 1">(Addendum Dokumentationsinformationen): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']"
         id="d15e20542-false-d27487e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Addendum Dokumentationsinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.73')">(Addendum Dokumentationsinformationen): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.73' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e20549-false-d27506e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Addendum Dokumentationsinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="@nullFlavor or (@code='55107-7' and @codeSystem='2.16.840.1.113883.6.1')">(Addendum Dokumentationsinformationen): Der Elementinhalt MUSS einer von 'code '55107-7' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:title[not(@nullFlavor)]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:title[not(@nullFlavor)]"
         id="d15e20556-false-d27526e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Addendum Dokumentationsinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="text()='Addendum Dokumentationsinformationen'">(Addendum Dokumentationsinformationen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Addendum Dokumentationsinformationen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:text[not(@nullFlavor)]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:text[not(@nullFlavor)]"
         id="d15e20564-false-d27545e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Addendum Dokumentationsinformationen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.75']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@typeCode) = ('COMP')">(Addendum Dokumentationsinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Addendum Dokumentationsinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.76']]]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.76']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@typeCode) = ('COMP')">(Addendum Dokumentationsinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Addendum Dokumentationsinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.73
Context: *[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]
Item: (Addendum Dokumentationsinformationen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.77']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@typeCode) = ('COMP')">(Addendum Dokumentationsinformationen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Addendum Dokumentationsinformationen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
