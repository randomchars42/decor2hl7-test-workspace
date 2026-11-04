<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4044
Name: Immunisierung Clostridium tetani
Description: Immunisierung Clostridium tetani
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4044-2015-09-18T000000">
   <title>Immunisierung Clostridium tetani</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]"
         id="d15e8380-false-d8426e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]"
         id="d15e8483-false-d8451e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@classCode) = ('SBADM')">(Immunisierung Clostridium tetani): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Immunisierung Clostridium tetani): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@negationInd">(Immunisierung Clostridium tetani): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Immunisierung Clostridium tetani): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NI')))])">(Immunisierung Clostridium tetani): Der Wert von nullFlavor MUSS 'Code NI' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4044']) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:templateId[@root = '1.2.276.0.76.10.4044'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4044']) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:templateId[@root = '1.2.276.0.76.10.4044'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:id) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:code[(@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:code[(@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:templateId[@root = '1.2.276.0.76.10.4044']
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:templateId[@root = '1.2.276.0.76.10.4044']"
         id="d15e8506-false-d8580e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4044')">(Immunisierung Clostridium tetani): Der Wert von root MUSS '1.2.276.0.76.10.4044' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:id
Item: (Immunisierung Clostridium tetani)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:code[(@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:code[(@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]"
         id="d15e8518-false-d8608e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4')">(Immunisierung Clostridium tetani): Der Elementinhalt MUSS einer von 'code 'IMMUNIZ' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:text
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:text"
         id="d15e8525-false-d8628e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:text/hl7:reference
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:text/hl7:reference"
         id="d15e8532-false-d8656e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:statusCode[@code = 'completed']
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:statusCode[@code = 'completed']"
         id="d15e8538-false-d8669e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Immunisierung Clostridium tetani): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:effectiveTime
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:effectiveTime"
         id="d15e8545-false-d8689e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="not(*)">(Immunisierung Clostridium tetani): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]"
         id="d15e8551-false-d8706e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]"
         id="d15e8555-false-d8730e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@classCode) = ('MANU')">(Immunisierung Clostridium tetani): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]/hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]/hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]"
         id="d15e8561-false-d8760e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@classCode) = ('MMAT') or not(@classCode)">(Immunisierung Clostridium tetani): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="string(@determinerCode) = ('KIND') or not(@determinerCode)">(Immunisierung Clostridium tetani): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]) &gt;= 1">(Immunisierung Clostridium tetani): Element hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="count(hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]) &lt;= 1">(Immunisierung Clostridium tetani): Element hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4044
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]/hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]/hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]
Item: (Immunisierung Clostridium tetani)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.10.4044']]/hl7:consumable[not(@nullFlavor)][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]]/hl7:manufacturedMaterial[hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]]/hl7:code[(@code = 'CTVACC' and @codeSystem = '1.2.276.0.76.3.1.195.5.3')]"
         id="d15e8569-false-d8796e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Immunisierung Clostridium tetani): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4044-2015-09-18T000000.html"
              test="@nullFlavor or (@code='CTVACC' and @codeSystem='1.2.276.0.76.3.1.195.5.3')">(Immunisierung Clostridium tetani): Der Elementinhalt MUSS einer von 'code 'CTVACC' codeSystem '1.2.276.0.76.3.1.195.5.3'' sein.</assert>
   </rule>
</pattern>
