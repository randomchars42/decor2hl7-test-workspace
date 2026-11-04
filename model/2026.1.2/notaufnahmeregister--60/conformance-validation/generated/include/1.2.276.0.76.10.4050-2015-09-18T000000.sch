<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4050
Name: Röntgen-Thorax durchgeführt
Description: Diagnostik Template Plain chest X-ray in Emergency Department
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4050-2015-09-18T000000">
   <title>Röntgen-Thorax durchgeführt</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]"
         id="d15e9968-false-d10892e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]"
         id="d15e10014-false-d10917e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(Röntgen-Thorax durchgeführt): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Röntgen-Thorax durchgeführt): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Röntgen-Thorax durchgeführt): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4050']) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.10.4050'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4050']) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:templateId[@root = '1.2.276.0.76.10.4050'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '30745-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:code[(@code = '30745-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '30745-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:code[(@code = '30745-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:templateId[@root = '1.2.276.0.76.10.4050']
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:templateId[@root = '1.2.276.0.76.10.4050']"
         id="d15e10024-false-d11055e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4050')">(Röntgen-Thorax durchgeführt): Der Wert von root MUSS '1.2.276.0.76.10.4050' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:id[not(@nullFlavor)]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:id[not(@nullFlavor)]"
         id="d15e10032-false-d11074e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:code[(@code = '30745-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:code[(@code = '30745-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e10037-false-d11087e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="@nullFlavor or (@code='30745-4' and @codeSystem='2.16.840.1.113883.6.1')">(Röntgen-Thorax durchgeführt): Der Elementinhalt MUSS einer von 'code '30745-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:text
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:text"
         id="d15e10044-false-d11107e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:text/hl7:reference
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:text/hl7:reference"
         id="d15e10051-false-d11135e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:statusCode[@code = 'completed']
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:statusCode[@code = 'completed']"
         id="d15e10057-false-d11148e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Röntgen-Thorax durchgeführt): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:effectiveTime
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:effectiveTime"
         id="d15e10064-false-d11168e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="not(*)">(Röntgen-Thorax durchgeführt): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e10072-false-d11187e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Röntgen-Thorax durchgeführt): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.51 Finding situation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.51-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Röntgen-Thorax durchgeführt): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.51 Finding situation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]"
         id="d15e10083-false-d11216e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="string(@typeCode) = ('LOC')">(Röntgen-Thorax durchgeführt): Der Wert von typeCode MUSS 'LOC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d15e10089-false-d11246e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="string(@classCode) = ('SDLOC')">(Röntgen-Thorax durchgeführt): Der Wert von classCode MUSS 'SDLOC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(Röntgen-Thorax durchgeführt): Element hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4050
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (Röntgen-Thorax durchgeführt)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4050']]/hl7:participant[hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:participantRole[hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ER' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d15e10095-false-d11276e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Röntgen-Thorax durchgeführt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4050-2015-09-18T000000.html"
              test="@nullFlavor or (@code='ER' and @codeSystem='2.16.840.1.113883.5.111')">(Röntgen-Thorax durchgeführt): Der Elementinhalt MUSS einer von 'code 'ER' codeSystem '2.16.840.1.113883.5.111'' sein.</assert>
   </rule>
</pattern>
