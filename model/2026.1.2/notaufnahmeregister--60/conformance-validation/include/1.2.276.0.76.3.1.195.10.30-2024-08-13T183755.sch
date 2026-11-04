<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.30
Name: Unfallart Traumaregister
Description: Unfallart Traumaregister
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755">
   <title>Unfallart Traumaregister</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.30
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]
Item: (Unfallart Traumaregister)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.30
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]
Item: (Unfallart Traumaregister)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]"
         id="d15e18892-false-d22772e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="string(@classCode) = ('OBS')">(Unfallart Traumaregister): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="string(@moodCode) = ('EVN')">(Unfallart Traumaregister): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']) &gt;= 1">(Unfallart Traumaregister): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']) &lt;= 1">(Unfallart Traumaregister): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:code[(@code = '11373-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Unfallart Traumaregister): Element hl7:code[(@code = '11373-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:code[(@code = '11373-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Unfallart Traumaregister): Element hl7:code[(@code = '11373-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Unfallart Traumaregister): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Unfallart Traumaregister): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Unfallart Traumaregister): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Unfallart Traumaregister): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.30
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']
Item: (Unfallart Traumaregister)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']"
         id="d15e18900-false-d22855e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.30')">(Unfallart Traumaregister): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.30' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.30
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:code[(@code = '11373-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Unfallart Traumaregister)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:code[(@code = '11373-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e18907-false-d22870e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="@nullFlavor or (@code='11373-8' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Injury cause')">(Unfallart Traumaregister): Der Elementinhalt MUSS einer von 'code '11373-8' codeSystem '2.16.840.1.113883.6.1' displayName='Injury cause'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.30
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:statusCode[@code = 'completed']
Item: (Unfallart Traumaregister)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:statusCode[@code = 'completed']"
         id="d15e18915-false-d22886e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="@nullFlavor or (@code='completed')">(Unfallart Traumaregister): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.30
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Unfallart Traumaregister)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.30']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18922-false-d22904e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Unfallart Traumaregister): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.18-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Unfallart Traumaregister): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.18 Unfallart Traumaregister (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
