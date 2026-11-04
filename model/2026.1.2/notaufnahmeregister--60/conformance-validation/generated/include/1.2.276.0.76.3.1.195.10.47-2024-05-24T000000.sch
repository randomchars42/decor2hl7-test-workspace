<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.47
Name: Mikrobiologie angefordert
Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Mikrobiologische Untersuchung angefordert?
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000">
   <title>Mikrobiologie angefordert</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]"
         id="d15e19404-false-d24117e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]) &gt;= 1">(Mikrobiologie angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]) &lt;= 1">(Mikrobiologie angefordert): Element hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]"
         id="d15e19415-false-d24142e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="string(@classCode) = ('PROC')">(Mikrobiologie angefordert): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="string(@moodCode) = ('RQO')">(Mikrobiologie angefordert): Der Wert von moodCode MUSS 'RQO' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="@negationInd">(Mikrobiologie angefordert): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Mikrobiologie angefordert): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']) &gt;= 1">(Mikrobiologie angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']) &lt;= 1">(Mikrobiologie angefordert): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '19851009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Mikrobiologie angefordert): Element hl7:code[(@code = '19851009' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:code[(@code = '19851009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Mikrobiologie angefordert): Element hl7:code[(@code = '19851009' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:text) &lt;= 1">(Mikrobiologie angefordert): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Mikrobiologie angefordert): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Mikrobiologie angefordert): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Mikrobiologie angefordert): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']"
         id="d15e19429-false-d24236e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Mikrobiologie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.47')">(Mikrobiologie angefordert): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.47' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:code[(@code = '19851009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:code[(@code = '19851009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19437-false-d24255e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Mikrobiologie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="@nullFlavor or (@code='19851009' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Microbiology procedure (procedure)')">(Mikrobiologie angefordert): Der Elementinhalt MUSS einer von 'code '19851009' codeSystem '2.16.840.1.113883.6.96' displayName='Microbiology procedure (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:text
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:text"
         id="d15e19444-false-d24275e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Mikrobiologie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:reference) &gt;= 1">(Mikrobiologie angefordert): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="count(hl7:reference) &lt;= 1">(Mikrobiologie angefordert): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:text/hl7:reference
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:text/hl7:reference"
         id="d15e19451-false-d24303e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(Mikrobiologie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:statusCode[@code = 'completed']
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:statusCode[@code = 'completed']"
         id="d15e19457-false-d24316e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Mikrobiologie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Mikrobiologie angefordert): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.47
Context: *[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:effectiveTime
Item: (Mikrobiologie angefordert)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]]/hl7:procedure[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.47']]/hl7:effectiveTime"
         id="d15e19464-false-d24336e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Mikrobiologie angefordert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.html"
              test="not(*)">(Mikrobiologie angefordert): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
</pattern>
