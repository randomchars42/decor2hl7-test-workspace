<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.65
Name: Isolation
Description: Patient muss aufgrund einer (z.B. möglicherweise übertragbaren Erkrankung) isoliert werden.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814">
   <title>Isolation</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]"
         id="d15e20153-false-d26307e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]) &gt;= 1">(Isolation): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]) &lt;= 1">(Isolation): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]"
         id="d15e20169-false-d26336e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="string(@classCode) = ('PROC')">(Isolation): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="string(@moodCode) = ('EVN')">(Isolation): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="@negationInd">(Isolation): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Isolation): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="not(hl7:code[@code = 'RISO'] and hl7:entryRelationship)">(Isolation): Grund/Gründe für Isolation nicht bei Umkehrisolierung angeben</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="not(@negationInd='true' and hl7:entryRelationship)">(Isolation): Grund/Gründe nicht angeben, wenn keine Isolation</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']) &gt;= 1">(Isolation): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']) &lt;= 1">(Isolation): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:code[(@code = '40174006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Isolation): Element hl7:code[(@code = '40174006' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:code[(@code = '40174006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Isolation): Element hl7:code[(@code = '40174006' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:text) &lt;= 1">(Isolation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Isolation): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Isolation): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']"
         id="d15e20196-false-d26432e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Isolation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.65')">(Isolation): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.65' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:id
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:id"
         id="d15e20203-false-d26451e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Isolation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:code[(@code = '40174006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:code[(@code = '40174006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e20208-false-d26464e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Isolation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="@nullFlavor or (@code='40174006' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Isolation procedure (procedure)')">(Isolation): Der Elementinhalt MUSS einer von 'code '40174006' codeSystem '2.16.840.1.113883.6.96' displayName='Isolation procedure (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:text
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:text"
         id="d15e20215-false-d26484e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Isolation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:reference) &gt;= 1">(Isolation): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="count(hl7:reference) &lt;= 1">(Isolation): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:text/hl7:reference
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:text/hl7:reference"
         id="d15e20222-false-d26512e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Isolation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:statusCode[@code = 'completed']
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:statusCode[@code = 'completed']"
         id="d15e20228-false-d26525e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Isolation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="@nullFlavor or (@code='completed')">(Isolation): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.65
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]
Item: (Isolation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.65']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.66']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.html"
              test="string(@typeCode) = ('RSON')">(Isolation): Der Wert von typeCode MUSS 'RSON' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
