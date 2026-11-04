<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4073
Name: Problem Observation (Multidrug-resistant organism)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4073-2017-03-01T000000">
   <title>Problem Observation (Multidrug-resistant organism)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]"
         id="d15e15038-false-d18015e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]"
         id="d15e15110-false-d18040e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="string(@classCode) = ('OBS')">(Problem Observation (Multidrug-resistant organism)): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="string(@moodCode) = ('EVN')">(Problem Observation (Multidrug-resistant organism)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="not(@negationInd) or (string-length(@negationInd) &gt; 0 and not(matches(@negationInd,'\s')))">(Problem Observation (Multidrug-resistant organism)): Attribute @negationInd MUSS vom Datentyp 'cs' sein  - '<value-of select="@negationInd"/>'</assert>
      <let name="seq"
           value="//hl7:observation [hl7:templateId/@root = '1.2.276.0.76.10.4073']/hl7:value"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty($seq[count(index-of($seq/@code|$seq/@nullFlavor,./@code|./@nullFlavor)) &gt; 1])">(Problem Observation (Multidrug-resistant organism)): Nur eine Angabe pro Erreger bei multiresistenten Keimen</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="not(@negationInd='true' and hl7:value/hl7:qualifier/hl7:name/@code='FSTAT')">(Problem Observation (Multidrug-resistant organism)): Befundstatus Verdacht/Gesichert kann nicht gleichzeitig mit Negation (negationInd=true) verwendet werden</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4073']) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:templateId[@root = '1.2.276.0.76.10.4073'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4073']) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:templateId[@root = '1.2.276.0.76.10.4073'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:code[(@code = 'COND' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:code[(@code = 'COND' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:code[(@code = 'COND' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:code[(@code = 'COND' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:text) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:templateId[@root = '1.2.276.0.76.10.4073']
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:templateId[@root = '1.2.276.0.76.10.4073']"
         id="d15e15124-false-d18157e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4073')">(Problem Observation (Multidrug-resistant organism)): Der Wert von root MUSS '1.2.276.0.76.10.4073' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:id[not(@nullFlavor)]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:id[not(@nullFlavor)]"
         id="d15e15132-false-d18176e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:code[(@code = 'COND' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:code[(@code = 'COND' and @codeSystem = '2.16.840.1.113883.5.4')]"
         id="d15e15137-false-d18189e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="@nullFlavor or (@code='COND' and @codeSystem='2.16.840.1.113883.5.4')">(Problem Observation (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von 'code 'COND' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:text
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:text"
         id="d15e15144-false-d18209e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:reference) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:reference) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:text/hl7:reference
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:text/hl7:reference"
         id="d15e15151-false-d18237e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:statusCode[@code = 'completed']
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:statusCode[@code = 'completed']"
         id="d15e15157-false-d18250e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="@nullFlavor or (@code='completed')">(Problem Observation (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:effectiveTime
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:effectiveTime"
         id="d15e15164-false-d18270e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:low) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:low) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:high) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:effectiveTime/hl7:low
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:effectiveTime/hl7:low"
         id="d15e15171-false-d18307e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="not(*)">(Problem Observation (Multidrug-resistant organism)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:effectiveTime/hl7:high
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:effectiveTime/hl7:high"
         id="d15e15176-false-d18324e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="not(*)">(Problem Observation (Multidrug-resistant organism)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e15182-false-d18343e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Problem Observation (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.60 Multiresistant Organisms (Carrier) (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Problem Observation (Multidrug-resistant organism)): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.60 Multiresistant Organisms (Carrier) (DYNAMIC).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:qualifier[hl7:name/@code='FSTAT']) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:qualifier[hl7:name/@code='FSTAT'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='FSTAT']
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='FSTAT']"
         id="d15e15210-false-d18377e0">
      <extends rule="CR"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CR')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Problem Observation (Multidrug-resistant organism)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:name[(@code = 'FSTAT' and @codeSystem = '1.2.276.0.76.3.1.195.5.72')]"
         id="d15e15217-false-d18422e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="@nullFlavor or (@code='FSTAT' and @codeSystem='1.2.276.0.76.3.1.195.5.72')">(Problem Observation (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von 'code 'FSTAT' codeSystem '1.2.276.0.76.3.1.195.5.72'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4073
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Problem Observation (Multidrug-resistant organism))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4073']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.60-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e15224-false-d18444e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Problem Observation (Multidrug-resistant organism)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4073-2017-03-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.73-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Problem Observation (Multidrug-resistant organism)): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.73 Befundstatus Verdacht/Gesichert (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
