<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4039
Name: Problem Concern Act (Text/CEDIS)
Description: Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptome und ggf. CEDIS-Kodes
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4039-2015-03-03T000000">
   <title>Problem Concern Act (Text/CEDIS)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]"
         id="d15e7831-false-d7473e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@classCode) = ('ACT')">(Problem Concern Act (Text/CEDIS)): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@moodCode) = ('EVN')">(Problem Concern Act (Text/CEDIS)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4039']) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:templateId[@root = '1.2.276.0.76.10.4039'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4039']) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:templateId[@root = '1.2.276.0.76.10.4039'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:effectiveTime[hl7:low] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:effectiveTime[hl7:low] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:templateId[@root = '1.2.276.0.76.10.4039']
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:templateId[@root = '1.2.276.0.76.10.4039']"
         id="d15e7839-false-d7584e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Concern Act (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4039')">(Problem Concern Act (Text/CEDIS)): Der Wert von root MUSS '1.2.276.0.76.10.4039' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:id[not(@nullFlavor)]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:id[not(@nullFlavor)]"
         id="d15e7846-false-d7603e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Concern Act (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]"
         id="d15e7852-false-d7616e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Problem Concern Act (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Problem Concern Act (Text/CEDIS)): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code]"
         id="d15e7859-false-d7638e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Problem Concern Act (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(Problem Concern Act (Text/CEDIS)): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.15933 ActStatus (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:effectiveTime[hl7:low]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:effectiveTime[hl7:low]"
         id="d15e7866-false-d7662e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Problem Concern Act (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:low) &gt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:low) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="count(hl7:high) &lt;= 1">(Problem Concern Act (Text/CEDIS)): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:effectiveTime[hl7:low]/hl7:low
Item: (Problem Concern Act (Text/CEDIS))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:effectiveTime[hl7:low]/hl7:high
Item: (Problem Concern Act (Text/CEDIS))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4039
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]
Item: (Problem Concern Act (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4039']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4039-2015-03-03T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Problem Concern Act (Text/CEDIS)): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
