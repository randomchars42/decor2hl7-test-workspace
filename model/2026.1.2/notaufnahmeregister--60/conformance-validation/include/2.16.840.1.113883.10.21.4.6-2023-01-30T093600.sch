<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.21.4.6
Name: UV Subordinate Substance Administration
Description: Universal Subordinate Substance Administration to convey information about dosages
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.21.4.6-2023-01-30T093600">
   <title>UV Subordinate Substance Administration</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]"
         id="d15e27123-false-d45838e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]) &gt;= 1">(UV Subordinate Substance Administration): Element hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]"
         id="d15e27162-false-d45863e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="string(@classCode) = ('SBADM')">(UV Subordinate Substance Administration): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="@moodCode">(UV Subordinate Substance Administration): Attribut @moodCode MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),'\s'))"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(@moodCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.11.21.4-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(UV Subordinate Substance Administration): Der Wert von moodCode MUSS gewählt werden aus Value Set '2.16.840.1.113883.11.21.4' Mood Code Evn Int Rqo (DYNAMIC).</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']) &gt;= 1">(UV Subordinate Substance Administration): Element hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]) &gt;= 1">(UV Subordinate Substance Administration): Element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:effectiveTime[@value or @nullFlavor] | hl7:effectiveTime[@xsi:type='PIVL_TS'] | hl7:effectiveTime[@xsi:type='EIVL_TS'] | hl7:effectiveTime[@xsi:type='SXPR_TS']) &gt;= 1">(UV Subordinate Substance Administration): Auswahl (hl7:effectiveTime[@value or @nullFlavor]  oder  hl7:effectiveTime[@xsi:type='PIVL_TS']  oder  hl7:effectiveTime[@xsi:type='EIVL_TS']  oder  hl7:effectiveTime[@xsi:type='SXPR_TS']) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:effectiveTime[@value or @nullFlavor] | hl7:effectiveTime[@xsi:type='PIVL_TS'] | hl7:effectiveTime[@xsi:type='EIVL_TS'] | hl7:effectiveTime[@xsi:type='SXPR_TS']) &lt;= 1">(UV Subordinate Substance Administration): Auswahl (hl7:effectiveTime[@value or @nullFlavor]  oder  hl7:effectiveTime[@xsi:type='PIVL_TS']  oder  hl7:effectiveTime[@xsi:type='EIVL_TS']  oder  hl7:effectiveTime[@xsi:type='SXPR_TS']) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:effectiveTime[@value or @nullFlavor]) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:effectiveTime[@value or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:effectiveTime[@xsi:type='PIVL_TS']) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:effectiveTime[@xsi:type='PIVL_TS'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:effectiveTime[@xsi:type='EIVL_TS']) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:effectiveTime[@xsi:type='EIVL_TS'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:effectiveTime[@xsi:type='SXPR_TS']) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:effectiveTime[@xsi:type='SXPR_TS'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:doseQuantity) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:doseQuantity kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:rateQuantity) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:rateQuantity kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:maxDoseQuantity) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:maxDoseQuantity kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:administrationUnitCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14570-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:administrationUnitCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14570-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:consumable[hl7:manufacturedProduct]) &gt;= 1">(UV Subordinate Substance Administration): Element hl7:consumable[hl7:manufacturedProduct] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:consumable[hl7:manufacturedProduct]) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:consumable[hl7:manufacturedProduct] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']"
         id="d15e27181-false-d46022e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="string(@root) = ('2.16.840.1.113883.10.21.4.6')">(UV Subordinate Substance Administration): Der Wert von root MUSS '2.16.840.1.113883.10.21.4.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]"
         id="d15e27189-false-d46043e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.11.21.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(UV Subordinate Substance Administration): Der Elementinhalt MUSS einer von '2.16.840.1.113883.11.21.2 ActStatusActiveCompletedAbortedSuspended (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@value or @nullFlavor]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@value or @nullFlavor]"
         id="d15e27203-false-d46065e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(*)">(UV Subordinate Substance Administration): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='PIVL_TS']
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='PIVL_TS']"
         id="d15e27221-false-d46080e0">
      <extends rule="PIVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PIVL_TS')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='EIVL_TS']
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='EIVL_TS']"
         id="d15e27245-false-d46091e0">
      <extends rule="EIVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'EIVL_TS')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EIVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:event) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:event kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event"
         id="d15e27273-false-d46113e0">
      <extends rule="EIVL.event"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'EIVL.event')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:EIVL.event" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),'\s'))"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(@code) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.10706-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(UV Subordinate Substance Administration): Der Wert von code MUSS gewählt werden aus Value Set '2.16.840.1.113883.1.11.10706' TimingEvent (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='SXPR_TS']
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:effectiveTime[@xsi:type='SXPR_TS']"
         id="d15e27284-false-d46139e0">
      <extends rule="SXPR_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SXPR_TS')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SXPR_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:doseQuantity
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:doseQuantity"
         id="d15e27293-false-d46152e0">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_PQ')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UV Subordinate Substance Administration): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UV Subordinate Substance Administration): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UV Subordinate Substance Administration): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(@unit) or (string-length(@unit) &gt; 0 and not(matches(@unit,'\s')))">(UV Subordinate Substance Administration): Attribute @unit MUSS vom Datentyp 'cs' sein  - '<value-of select="@unit"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:rateQuantity
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:rateQuantity"
         id="d15e27371-false-d46183e0">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_PQ')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UV Subordinate Substance Administration): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UV Subordinate Substance Administration): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UV Subordinate Substance Administration): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:maxDoseQuantity
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:maxDoseQuantity"
         id="d15e27376-false-d46208e0">
      <extends rule="RTO_PQ_PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'RTO_PQ_PQ')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_PQ_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:administrationUnitCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14570-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:administrationUnitCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14570-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e27381-false-d46223e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(UV Subordinate Substance Administration): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.14570-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(UV Subordinate Substance Administration): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.14570 AdministrableDrugForm (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:consumable[hl7:manufacturedProduct]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:consumable[hl7:manufacturedProduct]"
         id="d15e27389-false-d46247e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &gt;= 1">(UV Subordinate Substance Administration): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']]) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:consumable[hl7:manufacturedProduct]/hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']]
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:consumable[hl7:manufacturedProduct]/hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']]"
         id="d15e27393-false-d46271e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &gt;= 1">(UV Subordinate Substance Administration): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="count(hl7:manufacturedMaterial[@nullFlavor = 'NA']) &lt;= 1">(UV Subordinate Substance Administration): Element hl7:manufacturedMaterial[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:consumable[hl7:manufacturedProduct]/hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']
Item: (UV Subordinate Substance Administration)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.6']]/hl7:consumable[hl7:manufacturedProduct]/hl7:manufacturedProduct[hl7:manufacturedMaterial[@nullFlavor = 'NA']]/hl7:manufacturedMaterial[@nullFlavor = 'NA']"
         id="d15e27397-false-d46295e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.6-2023-01-30T093600.html"
              test="string(@nullFlavor) = ('NA')">(UV Subordinate Substance Administration): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
</pattern>
