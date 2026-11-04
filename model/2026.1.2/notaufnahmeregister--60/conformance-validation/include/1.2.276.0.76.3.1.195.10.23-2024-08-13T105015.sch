<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.23
Name: MTS-Indikatoren ORANGE
Description: MTS-Indikatoren ORANGE
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015">
   <title>MTS-Indikatoren ORANGE</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]
Item: (MTS-Indikatoren ORANGE)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]"
         id="d15e18396-false-d21167e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="string(@classCode) = ('OBS')">(MTS-Indikatoren ORANGE): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="string(@moodCode) = ('EVN')">(MTS-Indikatoren ORANGE): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']) &gt;= 1">(MTS-Indikatoren ORANGE): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']) &lt;= 1">(MTS-Indikatoren ORANGE): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:code[(@code = 'SCTPOCC-25876001' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]) &gt;= 1">(MTS-Indikatoren ORANGE): Element hl7:code[(@code = 'SCTPOCC-25876001' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:code[(@code = 'SCTPOCC-25876001' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]) &lt;= 1">(MTS-Indikatoren ORANGE): Element hl7:code[(@code = 'SCTPOCC-25876001' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:text) &lt;= 1">(MTS-Indikatoren ORANGE): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MTS-Indikatoren ORANGE): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MTS-Indikatoren ORANGE): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(MTS-Indikatoren ORANGE): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MTS-Indikatoren ORANGE): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']"
         id="d15e18404-false-d21259e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.23')">(MTS-Indikatoren ORANGE): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.23' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:code[(@code = 'SCTPOCC-25876001' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:code[(@code = 'SCTPOCC-25876001' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]"
         id="d15e18411-false-d21274e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="@nullFlavor or (@code='SCTPOCC-25876001' and @codeSystem='1.2.276.0.76.3.1.195.5.99' and @displayName='MTS-Indikatoren ORANGE')">(MTS-Indikatoren ORANGE): Der Elementinhalt MUSS einer von 'code 'SCTPOCC-25876001' codeSystem '1.2.276.0.76.3.1.195.5.99' displayName='MTS-Indikatoren ORANGE'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:text
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:text"
         id="d15e18419-false-d21290e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(MTS-Indikatoren ORANGE): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:reference) &gt;= 1">(MTS-Indikatoren ORANGE): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="count(hl7:reference) &lt;= 1">(MTS-Indikatoren ORANGE): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:text/hl7:reference
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:text/hl7:reference"
         id="d15e18426-false-d21318e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(MTS-Indikatoren ORANGE): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:statusCode[@code = 'completed']
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:statusCode[@code = 'completed']"
         id="d15e18432-false-d21331e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="@nullFlavor or (@code='completed')">(MTS-Indikatoren ORANGE): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.23
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MTS-Indikatoren ORANGE)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18439-false-d21349e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MTS-Indikatoren ORANGE): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.14-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MTS-Indikatoren ORANGE): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.14 MTS-Indikatoren ORANGE (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
