<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.29
Name: Unfallursache/-kinetik
Description: Primäre Unfallursache und -kinetik
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755">
   <title>Unfallursache/-kinetik</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]
Item: (Unfallursache/-kinetik)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]"
         id="d15e18809-false-d22500e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="string(@classCode) = ('OBS')">(Unfallursache/-kinetik): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="string(@moodCode) = ('EVN')">(Unfallursache/-kinetik): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']) &gt;= 1">(Unfallursache/-kinetik): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']) &lt;= 1">(Unfallursache/-kinetik): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:code[(@code = '69543-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Unfallursache/-kinetik): Element hl7:code[(@code = '69543-7' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:code[(@code = '69543-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Unfallursache/-kinetik): Element hl7:code[(@code = '69543-7' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Unfallursache/-kinetik): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Unfallursache/-kinetik): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Unfallursache/-kinetik): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Unfallursache/-kinetik): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']"
         id="d15e18817-false-d22583e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.29')">(Unfallursache/-kinetik): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.29' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:code[(@code = '69543-7' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:code[(@code = '69543-7' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e18824-false-d22598e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="@nullFlavor or (@code='69543-7' and @codeSystem='2.16.840.1.113883.6.1')">(Unfallursache/-kinetik): Der Elementinhalt MUSS einer von 'code '69543-7' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:statusCode[@code = 'completed']
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:statusCode[@code = 'completed']"
         id="d15e18832-false-d22614e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="@nullFlavor or (@code='completed')">(Unfallursache/-kinetik): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e18839-false-d22632e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Unfallursache/-kinetik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Unfallursache/-kinetik): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.6 Unfallursache (SNOMED) (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:qualifier[hl7:name/@code='67496-0']) &lt;= 1">(Unfallursache/-kinetik): Element hl7:qualifier[hl7:name/@code='67496-0'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='67496-0']
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='67496-0']"
         id="d15e18845-false-d22661e0">
      <extends rule="CR"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CR')">(Unfallursache/-kinetik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:name[(@code = '67496-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Unfallursache/-kinetik): Element hl7:name[(@code = '67496-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:name[(@code = '67496-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Unfallursache/-kinetik): Element hl7:name[(@code = '67496-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Unfallursache/-kinetik): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Unfallursache/-kinetik): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='67496-0']/hl7:name[(@code = '67496-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='67496-0']/hl7:name[(@code = '67496-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e18852-false-d22706e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Unfallursache/-kinetik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="@nullFlavor or (@code='67496-0' and @codeSystem='2.16.840.1.113883.6.1')">(Unfallursache/-kinetik): Der Elementinhalt MUSS einer von 'code '67496-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.29
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='67496-0']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Unfallursache/-kinetik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.29']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='67496-0']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e18859-false-d22728e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Unfallursache/-kinetik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Unfallursache/-kinetik): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.5 Unfallkinetik (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
