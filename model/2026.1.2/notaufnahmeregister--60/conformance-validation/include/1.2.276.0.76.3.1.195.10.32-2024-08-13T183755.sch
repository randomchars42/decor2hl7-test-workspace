<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.32
Name: Substanz-Einfluss
Description: Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755">
   <title>Substanz-Einfluss</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.32
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]
Item: (Substanz-Einfluss)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.32
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]
Item: (Substanz-Einfluss)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]"
         id="d15e18953-false-d22948e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="string(@classCode) = ('OBS')">(Substanz-Einfluss): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="string(@moodCode) = ('EVN')">(Substanz-Einfluss): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']) &gt;= 1">(Substanz-Einfluss): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']) &lt;= 1">(Substanz-Einfluss): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:code[(@code = '88068-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Substanz-Einfluss): Element hl7:code[(@code = '88068-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:code[(@code = '88068-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Substanz-Einfluss): Element hl7:code[(@code = '88068-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Substanz-Einfluss): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Substanz-Einfluss): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Substanz-Einfluss): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Substanz-Einfluss): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.32
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']
Item: (Substanz-Einfluss)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']"
         id="d15e18961-false-d23031e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.32')">(Substanz-Einfluss): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.32' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.32
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:code[(@code = '88068-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Substanz-Einfluss)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:code[(@code = '88068-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e18968-false-d23046e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="@nullFlavor or (@code='88068-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Cause of intoxication')">(Substanz-Einfluss): Der Elementinhalt MUSS einer von 'code '88068-2' codeSystem '2.16.840.1.113883.6.1' displayName='Cause of intoxication'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.32
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:statusCode[@code = 'completed']
Item: (Substanz-Einfluss)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:statusCode[@code = 'completed']"
         id="d15e18976-false-d23062e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="@nullFlavor or (@code='completed')">(Substanz-Einfluss): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.32
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Substanz-Einfluss)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.32']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18983-false-d23080e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Substanz-Einfluss): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.23-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Substanz-Einfluss): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.23 Substanz-Einfluss (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
