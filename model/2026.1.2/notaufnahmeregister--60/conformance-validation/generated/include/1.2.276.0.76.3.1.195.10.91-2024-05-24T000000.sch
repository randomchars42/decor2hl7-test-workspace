<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.91
Name: CT-/MR-/DS-Angiographie
Description: Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000">
   <title>CT-/MR-/DS-Angiographie</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]"
         id="d15e21296-false-d30003e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]) &gt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]"
         id="d15e21307-false-d30028e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="string(@classCode) = ('OBS')">(CT-/MR-/DS-Angiographie): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="string(@moodCode) = ('EVN')">(CT-/MR-/DS-Angiographie): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']) &gt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-122' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &gt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:code[(@code = 'FLN-122' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:code[(@code = 'FLN-122' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:code[(@code = 'FLN-122' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']"
         id="d15e21315-false-d30129e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.91')">(CT-/MR-/DS-Angiographie): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.91' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:code[(@code = 'FLN-122' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:code[(@code = 'FLN-122' and @codeSystem = '1.2.276.0.76.3.1.195.5.98')]"
         id="d15e21322-false-d30148e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="@nullFlavor or (@code='FLN-122' and @codeSystem='1.2.276.0.76.3.1.195.5.98' and @displayName='Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden?')">(CT-/MR-/DS-Angiographie): Der Elementinhalt MUSS einer von 'code 'FLN-122' codeSystem '1.2.276.0.76.3.1.195.5.98' displayName='Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden?'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:text
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:text"
         id="d15e21330-false-d30168e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(CT-/MR-/DS-Angiographie): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:text/hl7:reference
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:text/hl7:reference"
         id="d15e21337-false-d30196e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:statusCode[@code = 'completed']
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:statusCode[@code = 'completed']"
         id="d15e21343-false-d30209e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(CT-/MR-/DS-Angiographie): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:effectiveTime
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:effectiveTime"
         id="d15e21350-false-d30229e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="not(*)">(CT-/MR-/DS-Angiographie): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.91
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CT-/MR-/DS-Angiographie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.91']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e21355-false-d30248e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(CT-/MR-/DS-Angiographie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.24-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CT-/MR-/DS-Angiographie): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.24 CT-/MR-/DS-Angiographie (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
