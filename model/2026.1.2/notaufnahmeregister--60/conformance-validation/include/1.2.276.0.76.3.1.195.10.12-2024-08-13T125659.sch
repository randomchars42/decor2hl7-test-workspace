<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.12
Name: Medizinische Begleitung
Description: Medizinische Begleitung
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659">
   <title>Medizinische Begleitung</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]"
         id="d15e17609-false-d18474e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]) &gt;= 1">(Medizinische Begleitung): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]) &lt;= 1">(Medizinische Begleitung): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]"
         id="d15e17620-false-d18499e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="string(@classCode) = ('PROC')">(Medizinische Begleitung): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="string(@moodCode) = ('EVN')">(Medizinische Begleitung): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']) &gt;= 1">(Medizinische Begleitung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']) &lt;= 1">(Medizinische Begleitung): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Medizinische Begleitung): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Medizinische Begleitung): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:text) &lt;= 1">(Medizinische Begleitung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Medizinische Begleitung): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Medizinische Begleitung): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']"
         id="d15e17628-false-d18576e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Medizinische Begleitung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.12')">(Medizinische Begleitung): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.12' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e17635-false-d18597e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(Medizinische Begleitung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Medizinische Begleitung): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.2 Patientenbegleitung (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:text
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:text"
         id="d15e17643-false-d18621e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Medizinische Begleitung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:reference) &gt;= 1">(Medizinische Begleitung): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="count(hl7:reference) &lt;= 1">(Medizinische Begleitung): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:text/hl7:reference
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:text/hl7:reference"
         id="d15e17650-false-d18649e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Medizinische Begleitung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.12
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:statusCode[@code = 'completed']
Item: (Medizinische Begleitung)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.12']]/hl7:statusCode[@code = 'completed']"
         id="d15e17656-false-d18662e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Medizinische Begleitung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.html"
              test="@nullFlavor or (@code='completed')">(Medizinische Begleitung): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
</pattern>
