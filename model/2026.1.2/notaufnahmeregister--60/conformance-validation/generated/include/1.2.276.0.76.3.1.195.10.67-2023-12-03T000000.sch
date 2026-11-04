<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.67
Name: Medikation
Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications
                where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000">
   <title>Medikation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]
Item: (Medikation)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]"
         id="d15e20343-false-d26820e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="string(@classCode) = ('SBADM')">(Medikation): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="@moodCode">(Medikation): Attribut @moodCode MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),'\s'))"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(@moodCode) or empty($theAttValue[not(. = (('EVN','INT')))])">(Medikation): Der Wert von moodCode MUSS 'Code EVN oder Code INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']) &gt;= 1">(Medikation): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']) &lt;= 1">(Medikation): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:code[(@code = 'DRUG' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &gt;= 1">(Medikation): Element hl7:code[(@code = 'DRUG' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:code[(@code = 'DRUG' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &lt;= 1">(Medikation): Element hl7:code[(@code = 'DRUG' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Medikation): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Medikation): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(Medikation): Element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:effectiveTime) = 0">(Medikation): Element hl7:effectiveTime DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:routeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14581-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Medikation): Element hl7:routeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14581-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:doseQuantity) = 0">(Medikation): Element hl7:doseQuantity DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:rateQuantity) = 0">(Medikation): Element hl7:rateQuantity DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:maxDoseQuantity) &lt;= 1">(Medikation): Element hl7:maxDoseQuantity kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:administrationUnitCode) = 0">(Medikation): Element hl7:administrationUnitCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]) &lt;= 1">(Medikation): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']"
         id="d15e20361-false-d26994e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.67')">(Medikation): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.67' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:id
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:id"
         id="d15e20368-false-d27013e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:code[(@code = 'DRUG' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:code[(@code = 'DRUG' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]"
         id="d15e20374-false-d27026e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="@nullFlavor or (@code='DRUG' and @codeSystem='2.16.840.1.113883.5.4')">(Medikation): Der Elementinhalt MUSS einer von 'code 'DRUG' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:text[not(@nullFlavor)]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:text[not(@nullFlavor)]"
         id="d15e20381-false-d27046e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(Medikation): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(Medikation): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d15e20385-false-d27074e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="@value">(Medikation): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d15e20397-false-d27094e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(Medikation): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.15933 ActStatus (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:effectiveTime
Item: (Medikation)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:routeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14581-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:routeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.14581-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e20409-false-d27129e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.14581-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Medikation): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.14581 RouteOfAdministration (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:approachSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19724-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:approachSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19724-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e20416-false-d27155e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.19724-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Medikation): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.19724 HumanSubstanceAdministrationSite (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:doseQuantity
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:doseQuantity"
         id="d15e20424-false-d27179e0">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_PQ')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Medikation): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Medikation): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Medikation): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:rateQuantity
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:rateQuantity"
         id="d15e20429-false-d27204e0">
      <extends rule="IVL_PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_PQ')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Medikation): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Medikation): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
      </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Medikation): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:maxDoseQuantity
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:maxDoseQuantity"
         id="d15e20434-false-d27229e0">
      <extends rule="RTO_PQ_PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'RTO_PQ_PQ')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_PQ_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:administrationUnitCode
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:administrationUnitCode"
         id="d15e20439-false-d27242e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="string(@typeCode) = ('CSM')">(Medikation): Der Wert von typeCode MUSS 'CSM' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:entryRelationship[exists(hl7:substanceAdministration)]
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:entryRelationship[exists(hl7:substanceAdministration)]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="string(@typeCode) = ('COMP')">(Medikation): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="count(hl7:sequenceNumber) &lt;= 1">(Medikation): Element hl7:sequenceNumber kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.67
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber
Item: (Medikation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber">
      <extends rule="INT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')">(Medikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Medikation): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
</pattern>
