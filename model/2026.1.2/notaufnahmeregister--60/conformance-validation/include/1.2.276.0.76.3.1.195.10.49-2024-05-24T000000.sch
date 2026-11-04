<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.49
Name: EKG angefordert
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein 12-Kanal-EKG angefordert?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000">
   <title>EKG angefordert</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]"
         id="d15e19556-false-d24603e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]) &gt;= 1">(EKG angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]) &lt;= 1">(EKG angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]"
         id="d15e19567-false-d24628e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(EKG angefordert): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="string(@moodCode) = ('RQO')">(EKG angefordert): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="@negationInd">(EKG angefordert): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(EKG angefordert): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']) &gt;= 1">(EKG angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']) &lt;= 1">(EKG angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '29303009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(EKG angefordert): Element hl7:code[(@code = '29303009' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '29303009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(EKG angefordert): Element hl7:code[(@code = '29303009' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(EKG angefordert): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(EKG angefordert): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(EKG angefordert): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(EKG angefordert): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']"
         id="d15e19581-false-d24722e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(EKG angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.49')">(EKG angefordert): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.49' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:code[(@code = '29303009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:code[(@code = '29303009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19589-false-d24741e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(EKG angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="@nullFlavor or (@code='29303009' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Electrocardiographic procedure (procedure)')">(EKG angefordert): Der Elementinhalt MUSS einer von 'code '29303009' codeSystem '2.16.840.1.113883.6.96' displayName='Electrocardiographic procedure (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:text
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:text"
         id="d15e19596-false-d24761e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(EKG angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(EKG angefordert): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(EKG angefordert): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:text/hl7:reference
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:text/hl7:reference"
         id="d15e19603-false-d24789e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(EKG angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:statusCode[@code = 'completed']
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:statusCode[@code = 'completed']"
         id="d15e19609-false-d24802e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(EKG angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(EKG angefordert): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.49
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:effectiveTime
Item: (EKG angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.49']]/hl7:effectiveTime"
         id="d15e19616-false-d24822e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(EKG angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.html"
              test="not(*)">(EKG angefordert): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
