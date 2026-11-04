<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4065
Name: Allergy Concern Act
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4065-2015-03-27T000000">
   <title>Allergy Concern Act</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]
Item: (Allergy Concern Act)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]"
         id="d15e14175-false-d16328e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@classCode) = ('ACT')">(Allergy Concern Act): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@moodCode) = ('EVN')">(Allergy Concern Act): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4065']) &gt;= 1">(Allergy Concern Act): Element hl7:templateId[@root = '1.2.276.0.76.10.4065'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4065']) &lt;= 1">(Allergy Concern Act): Element hl7:templateId[@root = '1.2.276.0.76.10.4065'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Allergy Concern Act): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &gt;= 1">(Allergy Concern Act): Element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &lt;= 1">(Allergy Concern Act): Element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:statusCode) &gt;= 1">(Allergy Concern Act): Element hl7:statusCode ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:statusCode) &lt;= 1">(Allergy Concern Act): Element hl7:statusCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Allergy Concern Act): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Allergy Concern Act): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]) &gt;= 1">(Allergy Concern Act): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:templateId[@root = '1.2.276.0.76.10.4065']
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:templateId[@root = '1.2.276.0.76.10.4065']"
         id="d15e14183-false-d16432e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4065')">(Allergy Concern Act): Der Wert von root MUSS '1.2.276.0.76.10.4065' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:id[not(@nullFlavor)]
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:id[not(@nullFlavor)]"
         id="d15e14190-false-d16451e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]"
         id="d15e14196-false-d16464e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Allergy Concern Act): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:statusCode
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:statusCode"
         id="d15e14203-false-d16484e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d15e14208-false-d16497e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(Allergy Concern Act): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(Allergy Concern Act): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="count(hl7:high) &lt;= 1">(Allergy Concern Act): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d15e14212-false-d16534e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="not(*)">(Allergy Concern Act): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high"
         id="d15e14217-false-d16551e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Allergy Concern Act): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="not(*)">(Allergy Concern Act): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4065
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]
Item: (Allergy Concern Act)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4065']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4066']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4065-2015-03-27T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Allergy Concern Act): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
