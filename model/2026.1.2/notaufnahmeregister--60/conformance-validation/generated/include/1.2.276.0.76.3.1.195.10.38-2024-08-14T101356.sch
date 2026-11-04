<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.276.0.76.3.1.195.10.38
Name: Blutdruck diastolisch
Description: Blutdruck diastolisch
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356">
   <title>Blutdruck diastolisch</title>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]"
         id="d15e19092-false-d23453e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]) &gt;= 1">(Blutdruck diastolisch): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]) &lt;= 1">(Blutdruck diastolisch): Element hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]"
         id="d15e19109-false-d23478e0">
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="string(@classCode) = ('OBS')">(Blutdruck diastolisch): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="string(@moodCode) = ('EVN')">(Blutdruck diastolisch): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']) &gt;= 1">(Blutdruck diastolisch): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38'] ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']) &lt;= 1">(Blutdruck diastolisch): Element hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:id) &lt;= 1">(Blutdruck diastolisch): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Blutdruck diastolisch): Element hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Blutdruck diastolisch): Element hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:text) &lt;= 1">(Blutdruck diastolisch): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Blutdruck diastolisch): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Blutdruck diastolisch): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:effectiveTime) = 0">(Blutdruck diastolisch): Element hl7:effectiveTime DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:value) &gt;= 1">(Blutdruck diastolisch): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:value) &lt;= 1">(Blutdruck diastolisch): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']"
         id="d15e19117-false-d23585e0">
      <extends rule="II"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="string(@root) = ('1.2.276.0.76.3.1.195.10.38')">(Blutdruck diastolisch): Der Wert von root MUSS '1.2.276.0.76.3.1.195.10.38' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:id
Item: (Blutdruck diastolisch)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e19130-false-d23613e0">
      <extends rule="CD"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="@nullFlavor or (@code='271650006' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Diastolic blood pressure (observable entity)')">(Blutdruck diastolisch): Der Elementinhalt MUSS einer von 'code '271650006' codeSystem '2.16.840.1.113883.6.96' displayName='Diastolic blood pressure (observable entity)'' sein.</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:translation[(@code = '8462-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Blutdruck diastolisch): Element hl7:translation[(@code = '8462-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:translation[(@code = '8462-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Blutdruck diastolisch): Element hl7:translation[(@code = '8462-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '8462-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:translation[(@code = '8462-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e19136-false-d23648e0">
      <extends rule="CE"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="@nullFlavor or (@code='8462-4' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Diastolic blood pressure')">(Blutdruck diastolisch): Der Elementinhalt MUSS einer von 'code '8462-4' codeSystem '2.16.840.1.113883.6.1' displayName='Diastolic blood pressure'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:text
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:text"
         id="d15e19144-false-d23668e0">
      <extends rule="ED"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:reference) &gt;= 1">(Blutdruck diastolisch): Element hl7:reference ist required [min 1x].</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="count(hl7:reference) &lt;= 1">(Blutdruck diastolisch): Element hl7:reference kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:text/hl7:reference
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:text/hl7:reference"
         id="d15e19151-false-d23696e0">
      <extends rule="URL"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'URL')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:URL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:statusCode[@code = 'completed']
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:statusCode[@code = 'completed']"
         id="d15e19157-false-d23709e0">
      <extends rule="CS"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="@nullFlavor or (@code='completed')">(Blutdruck diastolisch): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:effectiveTime
Item: (Blutdruck diastolisch)
-->
   <!--
Template derived rules for ID: 1.2.276.0.76.3.1.195.10.38
Context: *[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:value
Item: (Blutdruck diastolisch)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]]/hl7:observation[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.38']]/hl7:value"
         id="d15e19169-false-d23738e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(Blutdruck diastolisch): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="(@nullFlavor or (@unit='mm[Hg]'))">(Blutdruck diastolisch): value MUSS die Einheit 'mm[Hg]' nutzen </assert>
      <assert role="error"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Blutdruck diastolisch): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Blutdruck diastolisch): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
