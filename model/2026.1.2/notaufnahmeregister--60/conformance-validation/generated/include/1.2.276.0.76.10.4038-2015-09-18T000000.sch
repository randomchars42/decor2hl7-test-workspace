<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4038
Name: Zuweisung mit Zuweiser
Description: Zuweiser
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4038-2015-09-18T000000">
   <title>Zuweisung mit Zuweiser</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]"
         id="d15e7582-false-d7145e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]"
         id="d15e7614-false-d7170e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@classCode) = ('PCPR')">(Zuweisung mit Zuweiser): Der Wert von classCode MUSS 'PCPR' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@moodCode) = ('RQO')">(Zuweisung mit Zuweiser): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4038']) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:templateId[@root = '1.2.276.0.76.10.4038'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4038']) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:templateId[@root = '1.2.276.0.76.10.4038'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:templateId[@root = '1.2.276.0.76.10.4038']
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:templateId[@root = '1.2.276.0.76.10.4038']"
         id="d15e7622-false-d7247e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zuweisung mit Zuweiser): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4038')">(Zuweisung mit Zuweiser): Der Wert von root MUSS '1.2.276.0.76.10.4038' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:code[(@code = '11293-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e7629-false-d7266e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zuweisung mit Zuweiser): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="@nullFlavor or (@code='11293-8' and @codeSystem='2.16.840.1.113883.6.1')">(Zuweisung mit Zuweiser): Der Elementinhalt MUSS einer von 'code '11293-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:text
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:text"
         id="d15e7637-false-d7286e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Zuweisung mit Zuweiser): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:text/hl7:reference
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:text/hl7:reference"
         id="d15e7644-false-d7314e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Zuweisung mit Zuweiser): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d15e7650-false-d7329e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@typeCode) = ('AUT')">(Zuweisung mit Zuweiser): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d15e7656-false-d7363e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="string(@classCode) = ('AGNT')">(Zuweisung mit Zuweiser): Der Wert von classCode MUSS 'AGNT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Zuweisung mit Zuweiser): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e7662-false-d7397e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zuweisung mit Zuweiser): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Zuweisung mit Zuweiser): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.42 Zuweiser (2015-09-18T00:00:00)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Zuweisung mit Zuweiser): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.42 Zuweiser (2015-09-18T00:00:00).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="count(hl7:originalText) &lt;= 1">(Zuweisung mit Zuweiser): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4038
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]/hl7:originalText
Item: (Zuweisung mit Zuweiser)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4038']]/hl7:participant[hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:participantRole[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.42-2015-09-18T000000.xml')//valueSet[1]/conceptList/exception/@code]/hl7:originalText"
         id="d15e7668-false-d7433e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4038-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Zuweisung mit Zuweiser): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
