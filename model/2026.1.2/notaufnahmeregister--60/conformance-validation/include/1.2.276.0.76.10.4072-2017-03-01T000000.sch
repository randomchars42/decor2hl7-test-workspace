<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4072
Name: Problem Concern Act (Multidrug-resistant organism)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4072-2017-03-01T000000">
   <title>Problem Concern Act (Multidrug-resistant organism)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]"
         id="d15e14917-false-d17758e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="string(@classCode) = ('ACT')">(Problem Concern Act (Multidrug-resistant organism)): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="string(@moodCode) = ('EVN')">(Problem Concern Act (Multidrug-resistant organism)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4072']) &gt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:templateId[@root = '1.2.276.0.76.10.4072'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4072']) &lt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:templateId[@root = '1.2.276.0.76.10.4072'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &gt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &lt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &lt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:effectiveTime[hl7:low] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]) &gt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:templateId[@root = '1.2.276.0.76.10.4072']
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:templateId[@root = '1.2.276.0.76.10.4072']"
         id="d15e14925-false-d17856e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Concern Act (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4072')">(Problem Concern Act (Multidrug-resistant organism)): Der Wert von root MUSS '1.2.276.0.76.10.4072' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:id[not(@nullFlavor)]
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:id[not(@nullFlavor)]"
         id="d15e14932-false-d17875e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Concern Act (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]"
         id="d15e14938-false-d17888e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Problem Concern Act (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(Problem Concern Act (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von 'code 'CONC' codeSystem '2.16.840.1.113883.5.6'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:statusCode[@code = 'completed']
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:statusCode[@code = 'completed']"
         id="d15e14945-false-d17908e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Problem Concern Act (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="@nullFlavor or (@code='completed')">(Problem Concern Act (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:effectiveTime[hl7:low]
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:effectiveTime[hl7:low]"
         id="d15e14952-false-d17928e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Problem Concern Act (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:low) &gt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:low) &lt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="count(hl7:high) &lt;= 1">(Problem Concern Act (Multidrug-resistant organism)): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:effectiveTime[hl7:low]/hl7:low
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:effectiveTime[hl7:low]/hl7:high
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4072
Context: *[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]
Item: (Problem Concern Act (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]]/hl7:act[hl7:templateId[@root = '1.2.276.0.76.10.4072']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4072-2017-03-01T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Problem Concern Act (Multidrug-resistant organism)): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
