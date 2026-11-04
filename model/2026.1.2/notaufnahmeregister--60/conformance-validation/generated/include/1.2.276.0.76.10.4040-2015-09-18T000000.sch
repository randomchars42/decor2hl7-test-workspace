<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.10.4040
Name: Problem Observation (Text/CEDIS)
Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptom und ggf. CEDIS-Kode
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.10.4040-2015-09-18T000000">
   <title>Problem Observation (Text/CEDIS)</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]"
         id="d15e7920-false-d7748e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]"
         id="d15e7964-false-d7773e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="string(@classCode) = ('OBS')">(Problem Observation (Text/CEDIS)): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Problem Observation (Text/CEDIS)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4040']) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:templateId[@root = '1.2.276.0.76.10.4040'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.4040']) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:templateId[@root = '1.2.276.0.76.10.4040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '75322-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:code[(@code = '75322-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:code[(@code = '75322-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:code[(@code = '75322-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:text) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:templateId[@root = '1.2.276.0.76.10.4040']
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:templateId[@root = '1.2.276.0.76.10.4040']"
         id="d15e7972-false-d7890e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.4040')">(Problem Observation (Text/CEDIS)): Der Wert von root MUSS '1.2.276.0.76.10.4040' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:id[not(@nullFlavor)]
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:id[not(@nullFlavor)]"
         id="d15e7979-false-d7909e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:code[(@code = '75322-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:code[(@code = '75322-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e7985-false-d7922e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="@nullFlavor or (@code='75322-8' and @codeSystem='2.16.840.1.113883.6.1')">(Problem Observation (Text/CEDIS)): Der Elementinhalt MUSS einer von 'code '75322-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:text
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:text"
         id="d15e7992-false-d7942e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:reference) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:reference) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:text/hl7:reference
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:text/hl7:reference"
         id="d15e7999-false-d7970e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:statusCode[@code = 'completed']
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:statusCode[@code = 'completed']"
         id="d15e8005-false-d7983e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="@nullFlavor or (@code='completed')">(Problem Observation (Text/CEDIS)): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:effectiveTime
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:effectiveTime"
         id="d15e8012-false-d8003e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:width) &gt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:width ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:width) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:width kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:effectiveTime/hl7:width
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:effectiveTime/hl7:width"
         id="d15e8032-false-d8031e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="(@nullFlavor or (@unit='h'))">(Problem Observation (Text/CEDIS)): value MUSS die Einheit 'h' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Problem Observation (Text/CEDIS)): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Problem Observation (Text/CEDIS)): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e8043-false-d8066e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Problem Observation (Text/CEDIS)): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.61 CEDIS Presenting Complaint List 3.0 (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Problem Observation (Text/CEDIS)): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.61 CEDIS Presenting Complaint List 3.0 (DYNAMIC).</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="//hl7:templateId[@root='1.2.276.0.76.10.1015'] or @nullFlavor='UNK' or hl7:originalText">(Problem Observation (Text/CEDIS)): Der Vorstellungsgrund soll in value.originalText angegeben sein oder als unbekannt markiert werden.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="count(hl7:originalText) &lt;= 1">(Problem Observation (Text/CEDIS)): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.4040
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:originalText
Item: (Problem Observation (Text/CEDIS))
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4040']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.61-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]/hl7:originalText"
         id="d15e8090-false-d8104e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.4040-2015-09-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Problem Observation (Text/CEDIS)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
