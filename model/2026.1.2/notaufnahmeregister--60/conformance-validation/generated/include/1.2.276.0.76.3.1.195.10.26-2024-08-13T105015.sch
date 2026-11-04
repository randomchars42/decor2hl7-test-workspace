<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.26
Name: ESI-Triagefaktoren
Description: ESI-Triagefaktoren
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015">
   <title>ESI-Triagefaktoren</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]
Item: (ESI-Triagefaktoren)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]"
         id="d15e18600-false-d21845e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="string(@classCode) = ('OBS')">(ESI-Triagefaktoren): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="string(@moodCode) = ('EVN')">(ESI-Triagefaktoren): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']) &gt;= 1">(ESI-Triagefaktoren): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']) &lt;= 1">(ESI-Triagefaktoren): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:code[(@code = 'SCTPOCC-713012003' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]) &gt;= 1">(ESI-Triagefaktoren): Element hl7:code[(@code = 'SCTPOCC-713012003' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:code[(@code = 'SCTPOCC-713012003' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]) &lt;= 1">(ESI-Triagefaktoren): Element hl7:code[(@code = 'SCTPOCC-713012003' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:text) &lt;= 1">(ESI-Triagefaktoren): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(ESI-Triagefaktoren): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(ESI-Triagefaktoren): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(ESI-Triagefaktoren): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(ESI-Triagefaktoren): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']"
         id="d15e18608-false-d21937e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.26')">(ESI-Triagefaktoren): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.26' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:code[(@code = 'SCTPOCC-713012003' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:code[(@code = 'SCTPOCC-713012003' and @codeSystem = '1.2.276.0.76.3.1.195.5.99')]"
         id="d15e18615-false-d21952e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="@nullFlavor or (@code='SCTPOCC-713012003' and @codeSystem='1.2.276.0.76.3.1.195.5.99' and @displayName='ESI-Triagefaktoren')">(ESI-Triagefaktoren): Der Elementinhalt MUSS einer von 'code 'SCTPOCC-713012003' codeSystem '1.2.276.0.76.3.1.195.5.99' displayName='ESI-Triagefaktoren'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:text
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:text"
         id="d15e18623-false-d21968e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(ESI-Triagefaktoren): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:reference) &gt;= 1">(ESI-Triagefaktoren): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="count(hl7:reference) &lt;= 1">(ESI-Triagefaktoren): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:text/hl7:reference
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:text/hl7:reference"
         id="d15e18630-false-d21996e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(ESI-Triagefaktoren): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:statusCode[@code = 'completed']
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:statusCode[@code = 'completed']"
         id="d15e18636-false-d22009e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="@nullFlavor or (@code='completed')">(ESI-Triagefaktoren): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.26
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (ESI-Triagefaktoren)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18643-false-d22027e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(ESI-Triagefaktoren): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.20-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ESI-Triagefaktoren): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.20 ESI Triage-Faktoren (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
