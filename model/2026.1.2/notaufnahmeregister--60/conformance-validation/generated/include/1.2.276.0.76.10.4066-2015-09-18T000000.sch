<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4066
Name: Allergy / Intolerance Observation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4066-2015-09-18T000000">
   <title>Allergy / Intolerance Observation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]
Item: (Allergy / Intolerance Observation)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]"
         id="d15e14437-false-d16617e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(Allergy / Intolerance Observation): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Allergy / Intolerance Observation): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Allergy / Intolerance Observation): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4066']) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:templateId[@root = '1.2.276.0.76.10.4066'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4066']) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:templateId[@root = '1.2.276.0.76.10.4066'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:code[(@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:code[(@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:statusCode[not(@nullFlavor)]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:statusCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:statusCode[not(@nullFlavor)]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:statusCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:value[(@code = 'OINT' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:value[(@code = 'OINT' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:value[(@code = 'OINT' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:value[(@code = 'OINT' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:templateId[@root = '1.2.276.0.76.10.4066']
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:templateId[@root = '1.2.276.0.76.10.4066']"
         id="d15e14447-false-d16744e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4066')">(Allergy / Intolerance Observation): Der Wert von root MUSS '1.2.276.0.76.10.4066' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:id[not(@nullFlavor)]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:id[not(@nullFlavor)]"
         id="d15e14455-false-d16763e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:code[(@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:code[(@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4')]"
         id="d15e14460-false-d16776e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="@nullFlavor or (@code='ASSERTION' and @codeSystem='2.16.840.1.113883.5.4')">(Allergy / Intolerance Observation): Der Elementinhalt MUSS einer von 'code 'ASSERTION' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:statusCode[not(@nullFlavor)]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:statusCode[not(@nullFlavor)]"
         id="d15e14467-false-d16796e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:effectiveTime
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:effectiveTime"
         id="d15e14472-false-d16809e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:low) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:high) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:effectiveTime/hl7:low
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:effectiveTime/hl7:low"
         id="d15e14476-false-d16840e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="not(*)">(Allergy / Intolerance Observation): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:effectiveTime/hl7:high
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:effectiveTime/hl7:high"
         id="d15e14481-false-d16857e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="not(*)">(Allergy / Intolerance Observation): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:value[(@code = 'OINT' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:value[(@code = 'OINT' and @codeSystem = '2.16.840.1.113883.5.4')]"
         id="d15e14487-false-d16874e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="@nullFlavor or (@code='OINT' and @codeSystem='2.16.840.1.113883.5.4')">(Allergy / Intolerance Observation): Der Elementinhalt MUSS einer von 'code 'OINT' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]"
         id="d15e14494-false-d16894e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="string(@typeCode) = ('CSM')">(Allergy / Intolerance Observation): Der Wert von typeCode MUSS 'CSM' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d15e14500-false-d16928e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="string(@classCode) = ('MANU')">(Allergy / Intolerance Observation): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d15e14506-false-d16962e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="string(@classCode) = ('MMAT')">(Allergy / Intolerance Observation): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Allergy / Intolerance Observation): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Allergy / Intolerance Observation): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4066
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Allergy / Intolerance Observation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]/hl7:participant[@typeCode = 'CSM'][hl7:participantRole[@classCode = 'MANU']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e14512-false-d16996e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Allergy / Intolerance Observation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Allergy / Intolerance Observation): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.52 Allergy / intolerance substances (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.52-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4066-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Allergy / Intolerance Observation): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.52 Allergy / intolerance substances (DYNAMIC).</assert>
   </rule>
</pattern>
