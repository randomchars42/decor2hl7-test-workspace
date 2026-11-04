<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4071
Name: External Document Reference
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4071-2015-03-30T000000">
   <title>External Document Reference</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]
Item: (External Document Reference)
-->
   <rule fpi="RULC-1"
         context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]"
         id="d15e14796-false-d17558e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]) &gt;= 1">(External Document Reference): Element hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]) &lt;= 1">(External Document Reference): Element hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]
Item: (External Document Reference)
-->
   <rule fpi="RULC-1"
         context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]"
         id="d15e14822-false-d17583e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="string(@classCode) = ('DOC')">(External Document Reference): Der Wert von classCode MUSS 'DOC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="string(@moodCode) = ('EVN')">(External Document Reference): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4071']) &gt;= 1">(External Document Reference): Element hl7:templateId[@root = '1.2.276.0.76.10.4071'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4071']) &lt;= 1">(External Document Reference): Element hl7:templateId[@root = '1.2.276.0.76.10.4071'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(External Document Reference): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(External Document Reference): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:text) &lt;= 1">(External Document Reference): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:templateId[@root = '1.2.276.0.76.10.4071']
Item: (External Document Reference)
-->
   <rule fpi="RULC-1"
         context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:templateId[@root = '1.2.276.0.76.10.4071']"
         id="d15e14830-false-d17645e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(External Document Reference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4071')">(External Document Reference): Der Wert von root MUSS '1.2.276.0.76.10.4071' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (External Document Reference)
-->
   <rule fpi="RULC-1"
         context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e14837-false-d17666e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(External Document Reference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.57-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(External Document Reference): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.57 Modules document types (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:text
Item: (External Document Reference)
-->
   <rule fpi="RULC-1"
         context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:text"
         id="d15e14845-false-d17690e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(External Document Reference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:reference) &gt;= 1">(External Document Reference): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="count(hl7:reference) &lt;= 1">(External Document Reference): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4071
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:text/hl7:reference
Item: (External Document Reference)
-->
   <rule fpi="RULC-1"
         context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.276.0.76.10.4071']]/hl7:text/hl7:reference"
         id="d15e14852-false-d17718e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4071-2015-03-30T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(External Document Reference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
