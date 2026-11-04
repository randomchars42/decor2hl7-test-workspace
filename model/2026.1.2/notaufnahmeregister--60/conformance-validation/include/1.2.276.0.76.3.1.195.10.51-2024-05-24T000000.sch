<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.51
Name: Röntgen-Thorax angefordert
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Röntgenthorax angefordert?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000">
   <title>Röntgen-Thorax angefordert</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]"
         id="d15e19708-false-d25089e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]) &gt;= 1">(Röntgen-Thorax angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]"
         id="d15e19719-false-d25114e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(Röntgen-Thorax angefordert): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="string(@moodCode) = ('RQO')">(Röntgen-Thorax angefordert): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="@negationInd">(Röntgen-Thorax angefordert): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Röntgen-Thorax angefordert): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']) &gt;= 1">(Röntgen-Thorax angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '415232002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Röntgen-Thorax angefordert): Element hl7:code[(@code = '415232002' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '415232002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:code[(@code = '415232002' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Röntgen-Thorax angefordert): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']"
         id="d15e19733-false-d25208e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Röntgen-Thorax angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.51')">(Röntgen-Thorax angefordert): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.51' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:code[(@code = '415232002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:code[(@code = '415232002' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19741-false-d25227e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Röntgen-Thorax angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="@nullFlavor or (@code='415232002' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Radiographic procedure of chest (procedure)')">(Röntgen-Thorax angefordert): Der Elementinhalt MUSS einer von 'code '415232002' codeSystem '2.16.840.1.113883.6.96' displayName='Radiographic procedure of chest (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:text
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:text"
         id="d15e19748-false-d25247e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Röntgen-Thorax angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Röntgen-Thorax angefordert): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Röntgen-Thorax angefordert): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:text/hl7:reference
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:text/hl7:reference"
         id="d15e19755-false-d25275e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Röntgen-Thorax angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:statusCode[@code = 'completed']
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:statusCode[@code = 'completed']"
         id="d15e19761-false-d25288e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Röntgen-Thorax angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Röntgen-Thorax angefordert): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.51
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:effectiveTime
Item: (Röntgen-Thorax angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.51']]/hl7:effectiveTime"
         id="d15e19768-false-d25308e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Röntgen-Thorax angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.html"
              test="not(*)">(Röntgen-Thorax angefordert): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
