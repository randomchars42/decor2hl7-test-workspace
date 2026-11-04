<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4043
Name: Status Schwangerschaft
Description: Status Schwangerschaft
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4043-2015-03-03T000000">
   <title>Status Schwangerschaft</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]"
         id="d15e8202-false-d8123e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]) &gt;= 1">(Status Schwangerschaft): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]) &lt;= 1">(Status Schwangerschaft): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]"
         id="d15e8230-false-d8148e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="string(@classCode) = ('OBS')">(Status Schwangerschaft): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="string(@moodCode) = ('EVN')">(Status Schwangerschaft): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4043']) &gt;= 1">(Status Schwangerschaft): Element hl7:templateId[@root = '1.2.276.0.76.10.4043'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4043']) &lt;= 1">(Status Schwangerschaft): Element hl7:templateId[@root = '1.2.276.0.76.10.4043'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:id) &lt;= 1">(Status Schwangerschaft): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Status Schwangerschaft): Element hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Status Schwangerschaft): Element hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:text) &lt;= 1">(Status Schwangerschaft): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Status Schwangerschaft): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Status Schwangerschaft): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Status Schwangerschaft): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Status Schwangerschaft): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Status Schwangerschaft): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:templateId[@root = '1.2.276.0.76.10.4043']
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:templateId[@root = '1.2.276.0.76.10.4043']"
         id="d15e8238-false-d8258e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4043')">(Status Schwangerschaft): Der Wert von root MUSS '1.2.276.0.76.10.4043' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:id
Item: (Status Schwangerschaft)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e8251-false-d8286e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(Status Schwangerschaft): Der Elementinhalt MUSS einer von 'code '11449-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:text
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:text"
         id="d15e8258-false-d8306e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:reference) &gt;= 1">(Status Schwangerschaft): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="count(hl7:reference) &lt;= 1">(Status Schwangerschaft): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:text/hl7:reference
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:text/hl7:reference"
         id="d15e8265-false-d8334e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:statusCode[@code = 'completed']
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:statusCode[@code = 'completed']"
         id="d15e8271-false-d8347e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="@nullFlavor or (@code='completed')">(Status Schwangerschaft): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:effectiveTime
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:effectiveTime"
         id="d15e8278-false-d8367e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="not(*)">(Status Schwangerschaft): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4043
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Status Schwangerschaft)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4043']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e8283-false-d8386e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Status Schwangerschaft): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Status Schwangerschaft): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.46 Schwangerschafts-Status (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.46-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4043-2015-03-03T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Status Schwangerschaft): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.46 Schwangerschafts-Status (DYNAMIC).</assert>
   </rule>
</pattern>
