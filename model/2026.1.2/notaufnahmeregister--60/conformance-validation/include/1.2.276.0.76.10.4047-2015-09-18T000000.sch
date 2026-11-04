<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4047
Name: Pupillenreaktion
Description: Pupillenreaktion (rechts/links)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4047-2015-09-18T000000">
   <title>Pupillenreaktion</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]"
         id="d15e8976-false-d9495e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]) &gt;= 1">(Pupillenreaktion): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]) &lt;= 1">(Pupillenreaktion): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]"
         id="d15e9012-false-d9520e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(Pupillenreaktion): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Pupillenreaktion): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4047']) &gt;= 1">(Pupillenreaktion): Element hl7:templateId[@root = '1.2.276.0.76.10.4047'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4047']) &lt;= 1">(Pupillenreaktion): Element hl7:templateId[@root = '1.2.276.0.76.10.4047'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:id) &gt;= 1">(Pupillenreaktion): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:id) &lt;= 1">(Pupillenreaktion): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'RPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]) &gt;= 1">(Pupillenreaktion): Element hl7:code[(@code = 'RPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'RPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]) &lt;= 1">(Pupillenreaktion): Element hl7:code[(@code = 'RPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(Pupillenreaktion): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Pupillenreaktion): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Pupillenreaktion): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Pupillenreaktion): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Pupillenreaktion): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Pupillenreaktion): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Pupillenreaktion): Element hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Pupillenreaktion): Element hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:templateId[@root = '1.2.276.0.76.10.4047']
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:templateId[@root = '1.2.276.0.76.10.4047']"
         id="d15e9020-false-d9653e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4047')">(Pupillenreaktion): Der Wert von root MUSS '1.2.276.0.76.10.4047' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:id
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:id"
         id="d15e9027-false-d9672e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:code[(@code = 'RPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:code[(@code = 'RPPL' and @codeSystem = '1.2.276.0.76.3.1.195.5.1')]"
         id="d15e9033-false-d9685e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or (@code='RPPL' and @codeSystem='1.2.276.0.76.3.1.195.5.1')">(Pupillenreaktion): Der Elementinhalt MUSS einer von 'code 'RPPL' codeSystem '1.2.276.0.76.3.1.195.5.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:text
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:text"
         id="d15e9040-false-d9705e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(Pupillenreaktion): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(Pupillenreaktion): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:text/hl7:reference
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:text/hl7:reference"
         id="d15e9047-false-d9733e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:statusCode[@code = 'completed']
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:statusCode[@code = 'completed']"
         id="d15e9053-false-d9746e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Pupillenreaktion): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:effectiveTime
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:effectiveTime"
         id="d15e9060-false-d9766e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="not(*)">(Pupillenreaktion): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e9065-false-d9785e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Pupillenreaktion): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.50 Pupillenreaktion (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Pupillenreaktion): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.50 Pupillenreaktion (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4047
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Pupillenreaktion)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e9072-false-d9816e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Pupillenreaktion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4047-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.48-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Pupillenreaktion): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.48 Auge links/rechts (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
