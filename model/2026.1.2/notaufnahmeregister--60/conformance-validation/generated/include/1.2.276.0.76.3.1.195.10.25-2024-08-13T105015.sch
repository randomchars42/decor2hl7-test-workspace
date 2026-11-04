<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.25
Name: MTS-Indikatoren GRÜN
Description: MTS-Indikatoren GRÜN
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015">
   <title>MTS-Indikatoren GRÜN</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]
Item: (MTS-Indikatoren GRÜN)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]"
         id="d15e18532-false-d21619e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="string(@classCode) = ('OBS')">(MTS-Indikatoren GRÜN): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="string(@moodCode) = ('EVN')">(MTS-Indikatoren GRÜN): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']) &gt;= 1">(MTS-Indikatoren GRÜN): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']) &lt;= 1">(MTS-Indikatoren GRÜN): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:code[(@code = 'SCTPOCC-394848005' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]) &gt;= 1">(MTS-Indikatoren GRÜN): Element hl7:code[(@code = 'SCTPOCC-394848005' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:code[(@code = 'SCTPOCC-394848005' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]) &lt;= 1">(MTS-Indikatoren GRÜN): Element hl7:code[(@code = 'SCTPOCC-394848005' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:text) &lt;= 1">(MTS-Indikatoren GRÜN): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MTS-Indikatoren GRÜN): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MTS-Indikatoren GRÜN): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(MTS-Indikatoren GRÜN): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MTS-Indikatoren GRÜN): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']"
         id="d15e18540-false-d21711e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.25')">(MTS-Indikatoren GRÜN): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.25' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:code[(@code = 'SCTPOCC-394848005' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:code[(@code = 'SCTPOCC-394848005' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]"
         id="d15e18547-false-d21726e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="@nullFlavor or (@code='SCTPOCC-394848005' and @codeSystem='1.2.276.0.76.3.1.195.5.99' and @displayName='MTS-Indikatoren GRÜN')">(MTS-Indikatoren GRÜN): Der Elementinhalt MUSS einer von 'code 'SCTPOCC-394848005' codeSystem '1.2.276.0.76.3.1.195.5.99' displayName='MTS-Indikatoren GRÜN'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:text
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:text"
         id="d15e18555-false-d21742e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(MTS-Indikatoren GRÜN): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:reference) &gt;= 1">(MTS-Indikatoren GRÜN): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="count(hl7:reference) &lt;= 1">(MTS-Indikatoren GRÜN): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:text/hl7:reference
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:text/hl7:reference"
         id="d15e18562-false-d21770e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(MTS-Indikatoren GRÜN): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:statusCode[@code = 'completed']
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:statusCode[@code = 'completed']"
         id="d15e18568-false-d21783e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="@nullFlavor or (@code='completed')">(MTS-Indikatoren GRÜN): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.25
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MTS-Indikatoren GRÜN)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18575-false-d21801e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MTS-Indikatoren GRÜN): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.16-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MTS-Indikatoren GRÜN): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.16 MTS-Indikatoren GRÜN (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
