<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.21.4.10
Name: UV Medication Information (simple)
Description: Universal Medication Information (simple)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.21.4.10-2021-09-29T191516">
   <title>UV Medication Information (simple)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]
Item: (UV Medication Information (simple))
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]
Item: (UV Medication Information (simple))
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]"
         id="d15e27023-false-d45286e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="string(@classCode) = ('MANU')">(UV Medication Information (simple)): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']) &gt;= 1">(UV Medication Information (simple)): Element hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']) &lt;= 1">(UV Medication Information (simple)): Element hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:manufacturedMaterial[not(@nullFlavor)]) &gt;= 1">(UV Medication Information (simple)): Element hl7:manufacturedMaterial[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:manufacturedMaterial[not(@nullFlavor)]) &lt;= 1">(UV Medication Information (simple)): Element hl7:manufacturedMaterial[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:manufacturerOrganization) &lt;= 1">(UV Medication Information (simple)): Element hl7:manufacturerOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']
Item: (UV Medication Information (simple))
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']"
         id="d15e27029-false-d45347e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(UV Medication Information (simple)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="string(@root) = ('2.16.840.1.113883.10.21.4.10')">(UV Medication Information (simple)): Der Wert von root MUSS '2.16.840.1.113883.10.21.4.10' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]
Item: (UV Medication Information (simple))
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]"
         id="d15e27036-false-d45366e0">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="string(@classCode) = ('MMAT') or not(@classCode)">(UV Medication Information (simple)): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="string(@determinerCode) = ('KIND') or not(@determinerCode)">(UV Medication Information (simple)): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:code) &gt;= 1">(UV Medication Information (simple)): Element hl7:code ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:code) &lt;= 1">(UV Medication Information (simple)): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="count(hl7:lotNumberText) &lt;= 1">(UV Medication Information (simple)): Element hl7:lotNumberText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]/hl7:code
Item: (UV Medication Information (simple))
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]/hl7:code"
         id="d15e27044-false-d45411e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(UV Medication Information (simple)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]/hl7:code/hl7:translation
Item: (UV Medication Information (simple))
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]/hl7:code/hl7:translation"
         id="d15e27069-false-d45428e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.21.4.10-2021-09-29T191516.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(UV Medication Information (simple)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturedMaterial[not(@nullFlavor)]/hl7:lotNumberText
Item: (UV Medication Information (simple))
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.21.4.10
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization
Item: (UV Medication Information (simple))
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDA Organization): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA Organization): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:standardIndustryClassCode) &lt;= 1">(CDA Organization): Element hl7:standardIndustryClassCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(CDA Organization): Element hl7:asOrganizationPartOf kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:id
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:name
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:name">
      <extends rule="ON"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:telecom
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:addr
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:standardIndustryClassCode
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:standardIndustryClassCode">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="string(@classCode) = ('PART') or not(@classCode)">(CDA Organization): Der Wert von classCode MUSS 'PART' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDA Organization): Element hl7:code kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(CDA Organization): Element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDA Organization): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(CDA Organization): Element hl7:wholeOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:id
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:code
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(CDA Organization): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.15999 RoleStatus (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:effectiveTime
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization">
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDA Organization): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA Organization): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="count(hl7:standardIndustryClassCode) &lt;= 1">(CDA Organization): Element hl7:standardIndustryClassCode kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name">
      <extends rule="ON"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.151
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode
Item: (CDA Organization)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.10.21.4.10']]/hl7:manufacturerOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-2.16.840.1.113883.10.12.151-2005-09-07T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDA Organization): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
