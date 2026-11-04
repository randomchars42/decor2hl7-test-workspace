<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.66
Name: Isolation Indication
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444">
   <title>Isolation Indication</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]
Item: (Isolation Indication)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]
Item: (Isolation Indication)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]"
         id="d15e20275-false-d26589e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="string(@classCode) = ('OBS')">(Isolation Indication): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="string(@moodCode) = ('EVN')">(Isolation Indication): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']) &gt;= 1">(Isolation Indication): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']) &lt;= 1">(Isolation Indication): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Isolation Indication): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:code[(@code = '44100-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Isolation Indication): Element hl7:code[(@code = '44100-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:code[(@code = '44100-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Isolation Indication): Element hl7:code[(@code = '44100-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Isolation Indication): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Isolation Indication): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Isolation Indication): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Isolation Indication): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']
Item: (Isolation Indication)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']"
         id="d15e20283-false-d26682e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.66')">(Isolation Indication): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.66' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:id[not(@nullFlavor)]
Item: (Isolation Indication)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:code[(@code = '44100-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Isolation Indication)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:code[(@code = '44100-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e20296-false-d26706e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="@nullFlavor or (@code='44100-6' and @codeSystem='2.16.840.1.113883.6.1')">(Isolation Indication): Der Elementinhalt MUSS einer von 'code '44100-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:statusCode[@code = 'completed']
Item: (Isolation Indication)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:statusCode[@code = 'completed']"
         id="d15e20303-false-d26722e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="@nullFlavor or (@code='completed')">(Isolation Indication): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.66
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Isolation Indication)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e20310-false-d26740e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Isolation Indication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.25-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Isolation Indication): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.25 Isolationsgrund (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
