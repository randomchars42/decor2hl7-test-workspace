<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.95
Name: Vitalparameter-Container
Description: Vital Sign Observations Organizer
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906">
   <title>Vitalparameter-Container</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]
Item: (Vitalparameter-Container)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]"
         id="d15e25396-false-d44299e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@classCode) = ('CLUSTER')">(Vitalparameter-Container): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@moodCode) = ('EVN')">(Vitalparameter-Container): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4046']][hl7:targetSiteCode[@code = 'L']])&lt;=1 and count(hl7:component/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4046']][hl7:targetSiteCode[@code = 'R']])&lt;=1">(Vitalparameter-Container): Pupillenweite max 1x link und 1x rechts angeben</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component/hl7:observation [hl7:templateId[@root='1.2.276.0.76.10.4047']][hl7:targetSiteCode[@code = 'L']])&lt;=1 and count(hl7:component/hl7:observation [hl7:templateId[@root = '1.2.276.0.76.10.4047']][hl7:targetSiteCode[@code = 'R']])&lt;=1">(Vitalparameter-Container): Pupillenreaktion max 1x link und 1x rechts angeben</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']) &gt;= 1">(Vitalparameter-Container): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']) &lt;= 1">(Vitalparameter-Container): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Vitalparameter-Container): Element hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Vitalparameter-Container): Element hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Vitalparameter-Container): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Vitalparameter-Container): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Vitalparameter-Container): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Vitalparameter-Container): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]) &lt;= 2">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]] kommt zu häufig vor [max 2x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]) &lt;= 2">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]] kommt zu häufig vor [max 2x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]) &lt;= 1">(Vitalparameter-Container): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']"
         id="d15e25404-false-d44512e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Vitalparameter-Container): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.95')">(Vitalparameter-Container): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.95' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e25411-false-d44531e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Vitalparameter-Container): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="@nullFlavor or (@code='46680005' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Vital Signs')">(Vitalparameter-Container): Der Elementinhalt MUSS einer von 'code '46680005' codeSystem '2.16.840.1.113883.6.96' displayName='Vital Signs'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:statusCode[@code = 'completed']
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:statusCode[@code = 'completed']"
         id="d15e25419-false-d44551e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Vitalparameter-Container): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="@nullFlavor or (@code='completed')">(Vitalparameter-Container): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:effectiveTime
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:effectiveTime"
         id="d15e25426-false-d44571e0">
      <extends rule="TS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Vitalparameter-Container): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="not(*)">(Vitalparameter-Container): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4030']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.35']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4032']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4033']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.40']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4034']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4046']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4047']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4035']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.95
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]
Item: (Vitalparameter-Container)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]]/hl7:organizer[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.95']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.10.4036']]]">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@typeCode) = ('COMP')">(Vitalparameter-Container): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(Vitalparameter-Container): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
