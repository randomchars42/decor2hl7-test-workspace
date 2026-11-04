<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4046
Name: Pupillenweite
Description: Pupillenweite (rechts/links)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4046-2015-09-18T000000">
   <title>Pupillenweite</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]"
         id="d15e8792-false-d9144e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]) &gt;= 1">(Pupillenweite): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]) &lt;= 1">(Pupillenweite): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]"
         id="d15e8828-false-d9169e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(Pupillenweite): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Pupillenweite): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4046']) &gt;= 1">(Pupillenweite): Element hl7:templateId[@root = '1.2.276.0.76.10.4046'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4046']) &lt;= 1">(Pupillenweite): Element hl7:templateId[@root = '1.2.276.0.76.10.4046'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:id) &gt;= 1">(Pupillenweite): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:id) &lt;= 1">(Pupillenweite): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'SPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]) &gt;= 1">(Pupillenweite): Element hl7:code[(@code = 'SPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'SPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]) &lt;= 1">(Pupillenweite): Element hl7:code[(@code = 'SPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(Pupillenweite): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Pupillenweite): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Pupillenweite): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Pupillenweite): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Pupillenweite): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Pupillenweite): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Pupillenweite): Element hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Pupillenweite): Element hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:templateId[@root = '1.2.276.0.76.10.4046']
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:templateId[@root = '1.2.276.0.76.10.4046']"
         id="d15e8836-false-d9302e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4046')">(Pupillenweite): Der Wert von root MUSS '1.2.276.0.76.10.4046' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:id
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:id"
         id="d15e8843-false-d9321e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:code[(@code = 'SPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:code[(@code = 'SPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]"
         id="d15e8849-false-d9334e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="@nullFlavor or (@code='SPPL' and @codeSystem='1.2.276.0.76.3.1.195.5.1')">(Pupillenweite): Der Elementinhalt MUSS einer von 'code 'SPPL' codeSystem '1.2.276.0.76.3.1.195.5.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:text
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:text"
         id="d15e8856-false-d9354e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(Pupillenweite): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(Pupillenweite): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:text/hl7:reference
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:text/hl7:reference"
         id="d15e8863-false-d9382e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:statusCode[@code = 'completed']
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:statusCode[@code = 'completed']"
         id="d15e8869-false-d9395e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Pupillenweite): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:effectiveTime
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:effectiveTime"
         id="d15e8876-false-d9415e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="not(*)">(Pupillenweite): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e8881-false-d9434e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Pupillenweite): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.49 Pupillenweite (quantitativ) (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.49-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pupillenweite): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.49 Pupillenweite (quantitativ) (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4046
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Pupillenweite)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e8888-false-d9465e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Pupillenweite): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4046-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Pupillenweite): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.48 Auge links/rechts (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
