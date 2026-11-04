<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.19
Name: Manchester Triage System
Description: Manchester Triage System
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845">
   <title>Manchester Triage System</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]
Item: (Manchester Triage System)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]"
         id="d15e18005-false-d19907e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@classCode) = ('OBS')">(Manchester Triage System): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@moodCode) = ('EVN')">(Manchester Triage System): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']) &gt;= 1">(Manchester Triage System): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']) &lt;= 1">(Manchester Triage System): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:code[(@code = '1255867001' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(Manchester Triage System): Element hl7:code[(@code = '1255867001' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:code[(@code = '1255867001' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(Manchester Triage System): Element hl7:code[(@code = '1255867001' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:text) &lt;= 1">(Manchester Triage System): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Manchester Triage System): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Manchester Triage System): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Manchester Triage System): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Manchester Triage System): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.21']]]) &gt;= 1">(Manchester Triage System): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.21']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.21']]]) &lt;= 1">(Manchester Triage System): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.21']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']"
         id="d15e18013-false-d20052e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.19')">(Manchester Triage System): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.19' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:id
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:id"
         id="d15e18020-false-d20071e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:code[(@code = '1255867001' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:code[(@code = '1255867001' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e18026-false-d20084e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="@nullFlavor or (@code='1255867001' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Manchester Triage System score (observable entity)')">(Manchester Triage System): Der Elementinhalt MUSS einer von 'code '1255867001' codeSystem '2.16.840.1.113883.6.96' displayName='Manchester Triage System score (observable entity)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:text
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:text"
         id="d15e18033-false-d20104e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:reference) &gt;= 1">(Manchester Triage System): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="count(hl7:reference) &lt;= 1">(Manchester Triage System): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:text/hl7:reference
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:text/hl7:reference"
         id="d15e18040-false-d20132e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:statusCode[@code = 'completed']
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:statusCode[@code = 'completed']"
         id="d15e18046-false-d20145e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="@nullFlavor or (@code='completed')">(Manchester Triage System): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:effectiveTime
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:effectiveTime"
         id="d15e18053-false-d20165e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="not(*)">(Manchester Triage System): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18061-false-d20184e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Manchester Triage System): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.44-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Manchester Triage System): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.44 Manchester-Triage-System (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.21']]]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.21']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@typeCode) = ('COMP')">(Manchester Triage System): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Manchester Triage System): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.22']]]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.22']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@typeCode) = ('COMP')">(Manchester Triage System): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Manchester Triage System): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.23']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@typeCode) = ('COMP')">(Manchester Triage System): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Manchester Triage System): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.24']]]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.24']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@typeCode) = ('COMP')">(Manchester Triage System): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Manchester Triage System): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.19
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]
Item: (Manchester Triage System)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.25']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="string(@typeCode) = ('COMP')">(Manchester Triage System): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Manchester Triage System): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
</pattern>
