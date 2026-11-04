<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.93
Name: Notaufnahmeregister Transitionsversion
Description: Informationen im Rahmen des AKTIN Basismoduls als CDA Dokument
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407">
   <title>Notaufnahmeregister Transitionsversion</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /
Item: (Notaufnahmeregister Transitionsversion)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]"
         id="d15e21431-false-d30832e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:realmCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:realmCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:code[(@code = '68552-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:code[(@code = '68552-9' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:code[(@code = '68552-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:code[(@code = '68552-9' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:title) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:languageCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:languageCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:documentationOf[not(@nullFlavor)][@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:documentationOf[not(@nullFlavor)][@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:documentationOf[not(@nullFlavor)][@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:documentationOf[not(@nullFlavor)][@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:componentOf[not(@nullFlavor)][hl7:encompassingEncounter]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:componentOf[not(@nullFlavor)][hl7:encompassingEncounter] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:componentOf[not(@nullFlavor)][hl7:encompassingEncounter]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:componentOf[not(@nullFlavor)][hl7:encompassingEncounter] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90002
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:realmCode[not(@nullFlavor)]
Item: (CDA realmCode)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:realmCode[not(@nullFlavor)]"
         id="d31379e9-false-d31387e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CDA realmCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="@code">(CDA realmCode): Attribut @code MUSS vorkommen.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),'\s'))"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90002-2013-07-15T000000.html"
              test="not(@code) or empty($theAttValue[not(. = (('DE')))])">(CDA realmCode): Der Wert von code MUSS 'Code DE' sein. Gefunden: "<value-of select="@code"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90003
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (CDA typeId)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d31409e22-false-d31417e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA typeId): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@extension) = ('POCD_HD000040')">(CDA typeId): Der Wert von extension MUSS 'POCD_HD000040' sein. Gefunden: "<value-of select="@extension"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(CDA typeId): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90003-2013-07-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.1.3')">(CDA typeId): Der Wert von root MUSS '2.16.840.1.113883.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:id[not(@nullFlavor)]
Item: (CDA id)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:id[not(@nullFlavor)]"
         id="d31441e19-false-d31449e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90004-2012-12-12T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA id): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']"
         id="d15e21557-false-d31462e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Notaufnahmeregister Transitionsversion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.93')">(Notaufnahmeregister Transitionsversion): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.93' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:code[(@code = '68552-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:code[(@code = '68552-9' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e21570-false-d31481e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Notaufnahmeregister Transitionsversion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="@nullFlavor or (@code='68552-9' and @codeSystem='2.16.840.1.113883.6.1')">(Notaufnahmeregister Transitionsversion): Der Elementinhalt MUSS einer von 'code '68552-9' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90005
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:title
Item: (CDA title)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:title"
         id="d31495e4-false-d31503e0">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90005-2012-12-12T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(CDA title): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90006
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDA effectiveTime)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d31510e15-false-d31518e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CDA effectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90006-2012-12-12T000000.html"
              test="not(*)">(CDA effectiveTime): <value-of select="local-name()"/> with datatype TS.DATETIME.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90007
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDA confidentialityCode)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d31529e9-false-d31539e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDA confidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90007-2012-12-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16926-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDA confidentialityCode): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.16926 HL7 BasicConfidentialityKind (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDA languageCode)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:languageCode[not(@nullFlavor)]"
         id="d31557e9-false-d31565e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90008-2012-03-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(CDA languageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:setId[not(@nullFlavor)]
Item: (CDA setId and versionNumber)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:setId[not(@nullFlavor)]"
         id="d31572e17-false-d31580e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA setId and versionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:versionNumber[not(@nullFlavor)]
Item: (CDA setId and versionNumber)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:versionNumber[not(@nullFlavor)]"
         id="d31572e22-false-d31593e0">
      <extends rule="INT.POS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')">(CDA setId and versionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90009-2012-12-12T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDA setId and versionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]"
         id="d31604e48-false-d31614e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@typeCode) = ('RCT') or not(@typeCode)">(CDA recordTarget (nnar)): Der Wert von typeCode MUSS 'RCT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(CDA recordTarget (nnar)): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole[hl7:patient]) &gt;= 1">(CDA recordTarget (nnar)): Element hl7:patientRole[hl7:patient] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patientRole[hl7:patient]) &lt;= 1">(CDA recordTarget (nnar)): Element hl7:patientRole[hl7:patient] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]"
         id="d31604e56-false-d31654e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode) = ('PAT') or not(@classCode)">(CDA recordTarget (nnar)): Der Wert von classCode MUSS 'PAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id) &gt;= 1">(CDA recordTarget (nnar)): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:id) &lt;= 1">(CDA recordTarget (nnar)): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDA recordTarget (nnar)): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(CDA recordTarget (nnar)): Element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(CDA recordTarget (nnar)): Element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90024
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:id
Item: (Patientenidentifikation)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:id"
         id="d31714e7-false-d31722e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90024-2014-12-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Patientenidentifikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:addr
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:addr"
         id="d31604e232-false-d31735e0">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA recordTarget (nnar)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:telecom
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:telecom"
         id="d31604e237-false-d31748e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA recordTarget (nnar)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d31604e243-false-d31763e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDA recordTarget (nnar)): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA recordTarget (nnar)): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:name) &gt;= 1">(CDA recordTarget (nnar)): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(CDA recordTarget (nnar)): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDA recordTarget (nnar)): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime) &gt;= 1">(CDA recordTarget (nnar)): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(CDA recordTarget (nnar)): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:name
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:name"
         id="d31604e263-false-d31826e0">
      <extends rule="PN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PN')">(CDA recordTarget (nnar)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d31604e269-false-d31841e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDA recordTarget (nnar)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDA recordTarget (nnar)): Der Elementinhalt MUSS einer von '2.16.840.1.113883.1.11.1 Administrative Gender (HL7 V3) (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2032
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:birthTime
Item: (CDA recordTarget (nnar))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole[hl7:patient]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:birthTime"
         id="d31604e276-false-d31865e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CDA recordTarget (nnar)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2032-2014-09-17T000000.html"
              test="not(*)">(CDA recordTarget (nnar)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]
Item: (CDA author)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]"
         id="d31876e40-false-d31891e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(CDA author): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time[not(@nullFlavor)]) &gt;= 1">(CDA author): Element hl7:time[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:time[not(@nullFlavor)]) &lt;= 1">(CDA author): Element hl7:time[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor[not(@nullFlavor)]) &gt;= 1">(CDA author): Element hl7:assignedAuthor[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedAuthor[not(@nullFlavor)]) &lt;= 1">(CDA author): Element hl7:assignedAuthor[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[not(@nullFlavor)]
Item: (CDA author)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[not(@nullFlavor)]"
         id="d31876e46-false-d31943e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CDA author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="not(*)">(CDA author): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]
Item: (CDA author)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]"
         id="d31876e51-false-d31967e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(CDA author): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id) &gt;= 1">(CDA author): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:id) &lt;= 1">(CDA author): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(CDA author): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(CDA author): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:id
Item: (CDA author)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:id"
         id="d31876e57-false-d32022e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:assignedPerson
Item: (CDA author)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:assignedPerson"
         id="d31876e62-false-d32037e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDA author): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA author): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA author): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA author): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (CDA Person Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d32073e8-false-d32081e0">
      <extends rule="PN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PN')">(CDA Person Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2033
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization
Item: (CDA author)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization"
         id="d31876e121-false-d32099e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDA author): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA author): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA author): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA author): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2033-2014-09-17T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDA author): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:id
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:id"
         id="d32152e8-false-d32160e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d32152e13-false-d32173e0">
      <extends rule="ON"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:telecom
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:telecom"
         id="d32152e19-false-d32186e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:addr
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)]/hl7:representedOrganization/hl7:addr"
         id="d32152e24-false-d32199e0">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]
Item: (CDA custodian)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]"
         id="d32206e28-false-d32219e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@typeCode) = ('CST') or not(@typeCode)">(CDA custodian): Der Wert von typeCode MUSS 'CST' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)]) &gt;= 1">(CDA custodian): Element hl7:assignedCustodian[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)]) &lt;= 1">(CDA custodian): Element hl7:assignedCustodian[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]
Item: (CDA custodian)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]"
         id="d32206e34-false-d32259e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(CDA custodian): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:representedCustodianOrganization) &lt;= 1">(CDA custodian): Element hl7:representedCustodianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2034
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization
Item: (CDA custodian)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization"
         id="d32206e40-false-d32293e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDA custodian): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA custodian): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA custodian): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA custodian): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2034-2014-09-17T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDA custodian): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:id
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:id"
         id="d32346e8-false-d32354e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:name[not(@nullFlavor)]
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:name[not(@nullFlavor)]"
         id="d32346e13-false-d32367e0">
      <extends rule="ON"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:telecom
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:telecom"
         id="d32346e19-false-d32380e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:addr
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)]/hl7:representedCustodianOrganization/hl7:addr"
         id="d32346e24-false-d32393e0">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]
Item: (CDA informationRecipient)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]"
         id="d32400e56-false-d32415e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (('PRCP','TRC')))])">(CDA informationRecipient): Der Wert von typeCode MUSS 'Code PRCP oder Code TRC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient[not(@nullFlavor)]) &gt;= 1">(CDA informationRecipient): Element hl7:intendedRecipient[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:intendedRecipient[not(@nullFlavor)]) &lt;= 1">(CDA informationRecipient): Element hl7:intendedRecipient[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]
Item: (CDA informationRecipient)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]"
         id="d32400e74-false-d32469e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:id) &gt;= 1">(CDA informationRecipient): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient | hl7:receivedOrganization) &gt;= 1">(CDA informationRecipient): Auswahl (hl7:informationRecipient  oder  hl7:receivedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:informationRecipient) &lt;= 1">(CDA informationRecipient): Element hl7:informationRecipient kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:receivedOrganization) &lt;= 1">(CDA informationRecipient): Element hl7:receivedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:id
Item: (CDA informationRecipient)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:id"
         id="d32400e78-false-d32533e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA informationRecipient): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:informationRecipient
Item: (CDA informationRecipient)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:informationRecipient"
         id="d32400e92-false-d32548e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDA informationRecipient): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA informationRecipient): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA informationRecipient): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA informationRecipient): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:informationRecipient/hl7:name[not(@nullFlavor)]
Item: (CDA Person Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:informationRecipient/hl7:name[not(@nullFlavor)]"
         id="d32584e8-false-d32592e0">
      <extends rule="PN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PN')">(CDA Person Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2005
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization
Item: (CDA informationRecipient)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization"
         id="d32400e151-false-d32610e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDA informationRecipient): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA informationRecipient): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA informationRecipient): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA informationRecipient): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2005-2013-07-10T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDA informationRecipient): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:id
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:id"
         id="d32663e8-false-d32671e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:name[not(@nullFlavor)]"
         id="d32663e13-false-d32684e0">
      <extends rule="ON"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:telecom
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:telecom"
         id="d32663e19-false-d32697e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:addr
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)]/hl7:receivedOrganization/hl7:addr"
         id="d32663e24-false-d32710e0">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]"
         id="d32717e46-false-d32723e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@typeCode) = ('HLD')">(CDA participant Kostentraeger): Der Wert von typeCode MUSS 'HLD' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.10.2022']) &gt;= 1">(CDA participant Kostentraeger): Element hl7:templateId[@root = '1.2.276.0.76.10.2022'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:time) &lt;= 1">(CDA participant Kostentraeger): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]) &gt;= 1">(CDA participant Kostentraeger): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]) &lt;= 1">(CDA participant Kostentraeger): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:templateId[@root = '1.2.276.0.76.10.2022']
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:templateId[@root = '1.2.276.0.76.10.2022']"
         id="d32717e52-false-d32779e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@root) = ('1.2.276.0.76.10.2022')">(CDA participant Kostentraeger): Der Wert von root MUSS '1.2.276.0.76.10.2022' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time"
         id="d32717e59-false-d32798e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]"
         id="d32717e75-false-d32818e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode) = ('POLHOLD')">(CDA participant Kostentraeger): Der Wert von classCode MUSS 'POLHOLD' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="not(hl7:code[@code='FAMDEP']) or hl7:associatedPerson">(CDA participant Kostentraeger): Wenn das Versicherungsverhältnis "familienversichert" ist, dann muss eine associatedPerson angegeben sein</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDA participant Kostentraeger): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDA participant Kostentraeger): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:associatedPerson) &lt;= 1">(CDA participant Kostentraeger): Element hl7:associatedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:scopingOrganization) &gt;= 1">(CDA participant Kostentraeger): Element hl7:scopingOrganization ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(CDA participant Kostentraeger): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:id"
         id="d32717e81-false-d32892e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d32717e89-false-d32907e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDA participant Kostentraeger): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.68 InsuredAssocEntity (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1']) &lt;= 1">(CDA participant Kostentraeger): Element hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1']
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1']"
         id="d32717e108-false-d32940e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.162-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDA participant Kostentraeger): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.162 S_KBV_VERSICHERTENSTATUS (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:translation
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.68-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:translation"
         id="d32717e119-false-d32964e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:addr"
         id="d32717e128-false-d32977e0">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:telecom"
         id="d32717e134-false-d32990e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA participant Kostentraeger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson"
         id="d32717e139-false-d33005e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDA participant Kostentraeger): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA participant Kostentraeger): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA participant Kostentraeger): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA participant Kostentraeger): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90010
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]
Item: (CDA Person Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/hl7:name[not(@nullFlavor)]"
         id="d33041e8-false-d33049e0">
      <extends rule="PN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90010-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PN')">(CDA Person Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization
Item: (CDA participant Kostentraeger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization"
         id="d32717e201-false-d33067e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDA participant Kostentraeger): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDA participant Kostentraeger): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDA participant Kostentraeger): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDA participant Kostentraeger): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2022-2014-08-25T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDA participant Kostentraeger): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id"
         id="d33120e8-false-d33128e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name[not(@nullFlavor)]"
         id="d33120e13-false-d33141e0">
      <extends rule="ON"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:telecom"
         id="d33120e19-false-d33154e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.90011
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr
Item: (CDA Organization Elements)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:addr"
         id="d33120e24-false-d33167e0">
      <extends rule="AD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.90011-2011-12-19T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(CDA Organization Elements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]
Item: (Hauptkostenträger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]"
         id="d33174e36-false-d33180e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="string(@typeCode) = ('HLD')">(Hauptkostenträger): Der Wert von typeCode MUSS 'HLD' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.4']) &gt;= 1">(Hauptkostenträger): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.4']) &lt;= 1">(Hauptkostenträger): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]) &gt;= 1">(Hauptkostenträger): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]) &lt;= 1">(Hauptkostenträger): Element hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.4']
Item: (Hauptkostenträger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.4']"
         id="d33174e42-false-d33225e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Hauptkostenträger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.4')">(Hauptkostenträger): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]
Item: (Hauptkostenträger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]"
         id="d33174e49-false-d33244e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="string(@classCode) = ('POLHOLD')">(Hauptkostenträger): Der Wert von classCode MUSS 'POLHOLD' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Hauptkostenträger): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:scopingOrganization) &gt;= 1">(Hauptkostenträger): Element hl7:scopingOrganization ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:scopingOrganization) &lt;= 1">(Hauptkostenträger): Element hl7:scopingOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Hauptkostenträger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.3.1.195.11.19-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d33174e55-false-d33287e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Hauptkostenträger): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.3.1.195.11.19-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Hauptkostenträger): Der Elementinhalt MUSS einer von '1.2.276.0.76.3.1.195.11.19 KV-Fall (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization
Item: (Hauptkostenträger)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization"
         id="d33174e65-false-d33311e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:id) &gt;= 1">(Hauptkostenträger): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:name) &gt;= 1">(Hauptkostenträger): Element hl7:name ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.4-2024-08-09T103524.html"
              test="count(hl7:name) &lt;= 1">(Hauptkostenträger): Element hl7:name kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:id
Item: (Hauptkostenträger)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/hl7:name
Item: (Hauptkostenträger)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]"
         id="d33357e41-false-d33365e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode) = ('DOC')">(Dienstleistung/Behandlung (Basis)): Der Wert von typeCode MUSS 'DOC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:functionCode[(@code = 'ATTPHYS' and @codeSystem = '2.16.840.1.113883.5.88') or @nullFlavor]) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:functionCode[(@code = 'ATTPHYS' and @codeSystem = '2.16.840.1.113883.5.88') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:functionCode[(@code = 'ATTPHYS' and @codeSystem = '2.16.840.1.113883.5.88') or @nullFlavor]
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:functionCode[(@code = 'ATTPHYS' and @codeSystem = '2.16.840.1.113883.5.88') or @nullFlavor]"
         id="d33357e47-false-d33404e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="@nullFlavor or (@code='ATTPHYS' and @codeSystem='2.16.840.1.113883.5.88')">(Dienstleistung/Behandlung (Basis)): Der Elementinhalt MUSS einer von 'code 'ATTPHYS' codeSystem '2.16.840.1.113883.5.88'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]"
         id="d33357e54-false-d33424e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode) = ('ACT')">(Dienstleistung/Behandlung (Basis)): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@moodCode) = ('EVN')">(Dienstleistung/Behandlung (Basis)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:effectiveTime
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:effectiveTime"
         id="d33357e62-false-d33475e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element cda:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:low) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element cda:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(cda:high) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element cda:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:effectiveTime/cda:low
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:effectiveTime/cda:low"
         id="d33357e66-false-d33512e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(*)">(Dienstleistung/Behandlung (Basis)): <value-of select="local-name()"/> with datatype TS.DATETIME.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:effectiveTime/cda:high
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:effectiveTime/cda:high"
         id="d33357e74-false-d33529e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(*)">(Dienstleistung/Behandlung (Basis)): <value-of select="local-name()"/> with datatype TS.DATETIME.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]"
         id="d33357e83-false-d33546e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@typeCode) = ('PRF')">(Dienstleistung/Behandlung (Basis)): Der Wert von typeCode MUSS 'PRF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:time) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:time
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:time"
         id="d33357e89-false-d33591e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:low) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:high) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:time/hl7:low
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:time/hl7:low"
         id="d33357e96-false-d33628e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(*)">(Dienstleistung/Behandlung (Basis)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:time/hl7:high
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:time/hl7:high"
         id="d33357e104-false-d33645e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="not(*)">(Dienstleistung/Behandlung (Basis)): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d33357e113-false-d33662e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(Dienstleistung/Behandlung (Basis)): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id[@nullFlavor = 'NA']) &gt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:id[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="count(hl7:id[@nullFlavor = 'NA']) &lt;= 1">(Dienstleistung/Behandlung (Basis)): Element hl7:id[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2035
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@nullFlavor = 'NA']
Item: (Dienstleistung/Behandlung (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:documentationOf[@typeCode = 'DOC'][hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN']]/hl7:serviceEvent[@classCode = 'ACT'][@moodCode = 'EVN'][hl7:performer[@typeCode = 'PRF']]/hl7:performer[not(@nullFlavor)][@typeCode = 'PRF'][hl7:assignedEntity[@classCode = 'ASSIGNED']]/hl7:assignedEntity[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@nullFlavor = 'NA']"
         id="d33357e119-false-d33692e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Dienstleistung/Behandlung (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2035-2014-09-17T000000.html"
              test="string(@nullFlavor) = ('NA')">(Dienstleistung/Behandlung (Basis)): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]"
         id="d33705e30-false-d33713e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDA encompassingEncounter Patientenkontakt (Basis)): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:encompassingEncounter) &gt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:encompassingEncounter ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:encompassingEncounter) &lt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:encompassingEncounter kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter"
         id="d33705e36-false-d33743e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="string(@classCode) = ('ENC') or not(@classCode)">(CDA encompassingEncounter Patientenkontakt (Basis)): Der Wert von classCode MUSS 'ENC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDA encompassingEncounter Patientenkontakt (Basis)): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="not(hl7:dischargeDispositionCode and //hl7:act[hl7:templateId/@root = '1.2.276.0.76.10.4067'])">(CDA encompassingEncounter Patientenkontakt (Basis)): Patient entweder verlegt (encompassingEncounter.dischargeDispositionCode) oder entlassen (act Referralto template id 1.2.276.0.76.10.4067)</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:id[1]) &gt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:id[1] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:id[2]) &lt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:id[2] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:dischargeDispositionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:dischargeDispositionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:id[1]
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:id[1]"
         id="d33705e44-false-d33803e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA encompassingEncounter Patientenkontakt (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:id[2]
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:id[2]"
         id="d33705e52-false-d33814e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDA encompassingEncounter Patientenkontakt (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:effectiveTime[not(@nullFlavor)]"
         id="d33705e61-false-d33827e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(CDA encompassingEncounter Patientenkontakt (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="count(hl7:high) &lt;= 1">(CDA encompassingEncounter Patientenkontakt (Basis)): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d33705e65-false-d33864e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CDA encompassingEncounter Patientenkontakt (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="not(*)">(CDA encompassingEncounter Patientenkontakt (Basis)): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:effectiveTime[not(@nullFlavor)]/hl7:high
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:effectiveTime[not(@nullFlavor)]/hl7:high"
         id="d33705e73-false-d33881e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(CDA encompassingEncounter Patientenkontakt (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="not(*)">(CDA encompassingEncounter Patientenkontakt (Basis)): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.10.2036
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:dischargeDispositionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDA encompassingEncounter Patientenkontakt (Basis))
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:componentOf[hl7:encompassingEncounter]/hl7:encompassingEncounter/hl7:dischargeDispositionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d33705e82-false-d33900e0">
      <extends rule="CV"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(CDA encompassingEncounter Patientenkontakt (Basis)): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDA encompassingEncounter Patientenkontakt (Basis)): Der Elementinhalt MUSS einer von '1.2.276.0.76.11.56 Discharge Disposition Codes (2015-11-17T00:00:00)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.276.0.76.11.56-2015-11-17T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.10.2036-2016-06-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDA encompassingEncounter Patientenkontakt (Basis)): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.276.0.76.11.56 Discharge Disposition Codes (2015-11-17T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component"
         id="d15e25078-false-d34101e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody"
         id="d15e25086-false-d34474e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(Notaufnahmeregister Transitionsversion): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(Notaufnahmeregister Transitionsversion): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]) &gt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]) &lt;= 1">(Notaufnahmeregister Transitionsversion): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3045']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3046']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.16']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3053']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3048']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3047']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.96']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3050']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3051']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3054']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]
Item: (Medikamentöse Therapie)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]
Item: (Medikamentöse Therapie)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']) &gt;= 1">(Medikamentöse Therapie): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']) &lt;= 1">(Medikamentöse Therapie): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:code[(@code = '29549-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Medikamentöse Therapie): Element hl7:code[(@code = '29549-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:code[(@code = '29549-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Medikamentöse Therapie): Element hl7:code[(@code = '29549-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Medikamentöse Therapie): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Medikamentöse Therapie): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Medikamentöse Therapie): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Medikamentöse Therapie): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']
Item: (Medikamentöse Therapie)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Medikamentöse Therapie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.64')">(Medikamentöse Therapie): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.64' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:code[(@code = '29549-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Medikamentöse Therapie)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:code[(@code = '29549-3' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Medikamentöse Therapie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="@nullFlavor or (@code='29549-3' and @codeSystem='2.16.840.1.113883.6.1')">(Medikamentöse Therapie): Der Elementinhalt MUSS einer von 'code '29549-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:title[not(@nullFlavor)]
Item: (Medikamentöse Therapie)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:title[not(@nullFlavor)]">
      <extends rule="ST"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(Medikamentöse Therapie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="text()='Informationen zur medikamentösen Therapie'">(Medikamentöse Therapie): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Informationen zur medikamentösen Therapie'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:text[not(@nullFlavor)]
Item: (Medikamentöse Therapie)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:text[not(@nullFlavor)]">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SD.TEXT')">(Medikamentöse Therapie): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.64
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]
Item: (Medikamentöse Therapie)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]]/hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.64']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.67']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="string(@typeCode) = ('COMP')">(Medikamentöse Therapie): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.64-2024-08-14T180256.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Medikamentöse Therapie): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3055']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3056']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.10.3057']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.93
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]
Item: (Notaufnahmeregister Transitionsversion)
-->
   <rule fpi="RULC-1"
         context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.73']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@typeCode) = ('COMP')">(Notaufnahmeregister Transitionsversion): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html"
              test="string(@contextConductionInd) = ('true')">(Notaufnahmeregister Transitionsversion): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
