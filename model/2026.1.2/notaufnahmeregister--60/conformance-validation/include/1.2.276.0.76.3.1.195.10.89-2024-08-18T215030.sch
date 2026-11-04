<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.89
Name: Wildcard Diagnostik
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030">
   <title>Wildcard Diagnostik</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]
Item: (Wildcard Diagnostik)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]"
         id="d15e21056-false-d29258e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="string(@classCode) = ('OBS')">(Wildcard Diagnostik): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="string(@moodCode) = ('EVN')">(Wildcard Diagnostik): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Wildcard Diagnostik): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']) &gt;= 1">(Wildcard Diagnostik): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']) &lt;= 1">(Wildcard Diagnostik): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Wildcard Diagnostik): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:code[not(@nullFlavor)]) &gt;= 1">(Wildcard Diagnostik): Element hl7:code[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:code[not(@nullFlavor)]) &lt;= 1">(Wildcard Diagnostik): Element hl7:code[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Wildcard Diagnostik): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Wildcard Diagnostik): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:effectiveTime[@xsi:type='IVL_TS'] | hl7:effectiveTime[not(@xsi:type)]) &lt;= 1">(Wildcard Diagnostik): Auswahl (hl7:effectiveTime[@xsi:type='IVL_TS']  oder  hl7:effectiveTime[not(@xsi:type)]) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:effectiveTime[@xsi:type='IVL_TS']) &lt;= 1">(Wildcard Diagnostik): Element hl7:effectiveTime[@xsi:type='IVL_TS'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:effectiveTime[not(@xsi:type)]) &lt;= 1">(Wildcard Diagnostik): Element hl7:effectiveTime[not(@xsi:type)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(Wildcard Diagnostik): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(Wildcard Diagnostik): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']"
         id="d15e21066-false-d29382e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.89')">(Wildcard Diagnostik): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.89' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:id[not(@nullFlavor)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:id[not(@nullFlavor)]"
         id="d15e21074-false-d29401e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:code[not(@nullFlavor)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:code[not(@nullFlavor)]"
         id="d15e21079-false-d29414e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:statusCode[@code = 'completed']
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:statusCode[@code = 'completed']"
         id="d15e21087-false-d29427e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="@nullFlavor or (@code='completed')">(Wildcard Diagnostik): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[@xsi:type='IVL_TS']
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[@xsi:type='IVL_TS']"
         id="d15e21098-false-d29445e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:low) &lt;= 1">(Wildcard Diagnostik): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:high) &lt;= 1">(Wildcard Diagnostik): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:low
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:low"
         id="d15e21105-false-d29476e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="not(*)">(Wildcard Diagnostik): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:high
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:high"
         id="d15e21110-false-d29493e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="not(*)">(Wildcard Diagnostik): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[not(@xsi:type)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:effectiveTime[not(@xsi:type)]"
         id="d15e21116-false-d29508e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="not(*)">(Wildcard Diagnostik): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:value[not(@nullFlavor)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:value[not(@nullFlavor)]"
         id="d15e21122-false-d29525e0">
      <extends rule="ANY"/>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]"
         id="d15e21130-false-d29534e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="string(@typeCode) = ('REFR')">(Wildcard Diagnostik): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:externalDocument[not(@nullFlavor)]) &gt;= 1">(Wildcard Diagnostik): Element hl7:externalDocument[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:externalDocument[not(@nullFlavor)]) &lt;= 1">(Wildcard Diagnostik): Element hl7:externalDocument[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]/hl7:externalDocument[not(@nullFlavor)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]/hl7:externalDocument[not(@nullFlavor)]"
         id="d15e21136-false-d29564e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Wildcard Diagnostik): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Wildcard Diagnostik): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]/hl7:externalDocument[not(@nullFlavor)]/hl7:text[not(@nullFlavor)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]/hl7:externalDocument[not(@nullFlavor)]/hl7:text[not(@nullFlavor)]"
         id="d15e21154-false-d29588e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(Wildcard Diagnostik): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(Wildcard Diagnostik): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.89
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]/hl7:externalDocument[not(@nullFlavor)]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (Wildcard Diagnostik)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.89']]/hl7:reference[@typeCode = 'REFR'][hl7:externalDocument]/hl7:externalDocument[not(@nullFlavor)]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d15e21158-false-d29616e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Wildcard Diagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
