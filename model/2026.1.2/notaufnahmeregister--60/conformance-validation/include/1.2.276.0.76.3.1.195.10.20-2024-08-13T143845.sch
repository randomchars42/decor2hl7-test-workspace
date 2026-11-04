<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.20
Name: Emergency Severity Index
Description: Emergency Severity Index
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845">
   <title>Emergency Severity Index</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]
Item: (Emergency Severity Index)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]"
         id="d15e18161-false-d20391e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="string(@classCode) = ('OBS')">(Emergency Severity Index): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="string(@moodCode) = ('EVN')">(Emergency Severity Index): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']) &gt;= 1">(Emergency Severity Index): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']) &lt;= 1">(Emergency Severity Index): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:code[(@code = '1255873000' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(Emergency Severity Index): Element hl7:code[(@code = '1255873000' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:code[(@code = '1255873000' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(Emergency Severity Index): Element hl7:code[(@code = '1255873000' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:text) &lt;= 1">(Emergency Severity Index): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Emergency Severity Index): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Emergency Severity Index): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Emergency Severity Index): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Emergency Severity Index): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]) &gt;= 1">(Emergency Severity Index): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]) &lt;= 1">(Emergency Severity Index): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']"
         id="d15e18169-false-d20508e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.20')">(Emergency Severity Index): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.20' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:id
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:id"
         id="d15e18176-false-d20527e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:code[(@code = '1255873000' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:code[(@code = '1255873000' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e18182-false-d20540e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="@nullFlavor or (@code='1255873000' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Emergency Severity Index score (observable entity)')">(Emergency Severity Index): Der Elementinhalt MUSS einer von 'code '1255873000' codeSystem '2.16.840.1.113883.6.96' displayName='Emergency Severity Index score (observable entity)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:text
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:text"
         id="d15e18189-false-d20560e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:reference) &gt;= 1">(Emergency Severity Index): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="count(hl7:reference) &lt;= 1">(Emergency Severity Index): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:text/hl7:reference
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:text/hl7:reference"
         id="d15e18196-false-d20588e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:statusCode[@code = 'completed']
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:statusCode[@code = 'completed']"
         id="d15e18202-false-d20601e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="@nullFlavor or (@code='completed')">(Emergency Severity Index): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:effectiveTime
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:effectiveTime"
         id="d15e18209-false-d20621e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="not(*)">(Emergency Severity Index): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e18217-false-d20640e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Emergency Severity Index): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.45-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Emergency Severity Index): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.45 Emergency Severity Index (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.20
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]
Item: (Emergency Severity Index)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.20']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.26']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="string(@typeCode) = ('COMP')">(Emergency Severity Index): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(Emergency Severity Index): Attribute @contextConductionInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@contextConductionInd"/>'</assert>
   </rule>
</pattern>
