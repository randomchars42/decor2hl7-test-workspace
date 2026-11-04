<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="hl7" uri="urn:hl7-org:v3"/>
  <sch:pattern id="art-decor-assertions">
    <sch:rule id="decor-assert-1" context="hl7:participant[hl7:templateId[@root=&#x27;1.2.276.0.76.10.2022&#x27;]]/hl7:associatedEntity[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.2022&#x27;]]">
      <sch:assert role="error" test="not(hl7:code[@code=&#x27;FAMDEP&#x27;]) or hl7:associatedPerson">Wenn das Versicherungsverhältnis &quot;familienversichert&quot; ist, dann muss eine associatedPerson angegeben sein</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-2" context="hl7:componentOf/hl7:encompassingEncounter[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.2036&#x27;]]">
      <sch:assert role="error" test="not(hl7:dischargeDispositionCode and //hl7:act[hl7:templateId/@root = &#x27;1.2.276.0.76.10.4067&#x27;])">Patient entweder verlegt (encompassingEncounter.dischargeDispositionCode) oder entlassen (act Referralto template id 1.2.276.0.76.10.4067)</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-3" context="hl7:observation[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.3.1.195.10.18&#x27;]]">
      <sch:assert role="warning" test="not(hl7:methodCode[@code=&#x27;713009001&#x27;]) or hl7:entryRelationship[hl7:observation[hl7:templateId[@root=&#x27;1.2.276.0.76.3.1.195.10.19&#x27;]]]">Manchester Triage System - anzugeben, wenn verwendetes Ersteinschätzungssystem MTS ist</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-4" context="hl7:observation[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.3.1.195.10.18&#x27;]]">
      <sch:assert role="warning" test="not(hl7:methodCode[@code=&#x27;713010006&#x27;]) or hl7:entryRelationship[hl7:observation[hl7:templateId[@root=&#x27;1.2.276.0.76.3.1.195.10.20&#x27;]]]">Emergency Severity Index - anzugeben, wenn verwendetes Ersteinschätzungssystem EDI ist</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-5" context="hl7:observation/hl7:value[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.4040&#x27;]]">
      <sch:assert role="error" test="//hl7:templateId[@root=&#x27;1.2.276.0.76.10.1015&#x27;] or @nullFlavor=&#x27;UNK&#x27; or hl7:originalText">Der Vorstellungsgrund soll in value.originalText angegeben sein oder als unbekannt markiert werden.</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-6" context="hl7:observation[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.4073&#x27;]]">
      <sch:let name="seq" value="//hl7:observation [hl7:templateId/@root = &#x27;1.2.276.0.76.10.4073&#x27;]/hl7:value"/>
      <sch:assert role="error" test="empty($seq[count(index-of($seq/@code|$seq/@nullFlavor,./@code|./@nullFlavor)) &gt; 1])">Nur eine Angabe pro Erreger bei multiresistenten Keimen</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-7" context="hl7:observation[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.4073&#x27;]]">
      <sch:let name="seq" value="//hl7:observation [hl7:templateId/@root = &#x27;1.2.276.0.76.10.4073&#x27;]/hl7:value"/>
      <sch:assert role="error" test="not(@negationInd=&#x27;true&#x27; and hl7:value/hl7:qualifier/hl7:name/@code=&#x27;FSTAT&#x27;)">Befundstatus Verdacht/Gesichert kann nicht gleichzeitig mit Negation (negationInd=true) verwendet werden</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-8" context="hl7:organizer[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.3.1.195.10.95&#x27;]]">
      <sch:assert role="error" test="count(hl7:component/hl7:observation [hl7:templateId[@root = &#x27;1.2.276.0.76.10.4046&#x27;]][hl7:targetSiteCode[@code = &#x27;L&#x27;]])&lt;=1 and count(hl7:component/hl7:observation [hl7:templateId[@root = &#x27;1.2.276.0.76.10.4046&#x27;]][hl7:targetSiteCode[@code = &#x27;R&#x27;]])&lt;=1">Pupillenweite max 1x link und 1x rechts angeben</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-9" context="hl7:organizer[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.3.1.195.10.95&#x27;]]">
      <sch:assert role="error" test="count(hl7:component/hl7:observation [hl7:templateId[@root=&#x27;1.2.276.0.76.10.4047&#x27;]][hl7:targetSiteCode[@code = &#x27;L&#x27;]])&lt;=1 and count(hl7:component/hl7:observation [hl7:templateId[@root = &#x27;1.2.276.0.76.10.4047&#x27;]][hl7:targetSiteCode[@code = &#x27;R&#x27;]])&lt;=1">Pupillenreaktion max 1x link und 1x rechts angeben</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-10" context="hl7:procedure[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.3.1.195.10.65&#x27;]]">
      <sch:assert role="error" test="not(hl7:code[@code = &#x27;RISO&#x27;] and hl7:entryRelationship)">Grund/Gründe für Isolation nicht bei Umkehrisolierung angeben</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-11" context="hl7:procedure[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.3.1.195.10.65&#x27;]]">
      <sch:assert role="error" test="not(@negationInd=&#x27;true&#x27; and hl7:entryRelationship)">Grund/Gründe nicht angeben, wenn keine Isolation</sch:assert>
    </sch:rule>
    <sch:rule id="decor-assert-12" context="hl7:act[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.4048&#x27;]]">
      <sch:assert role="error" test="count(hl7:entryRelationship[hl7:sequenceNumber/@value=&#x27;1&#x27;])&lt;=1">Sequenznummer = 1 (führende Abschlussdiagnose) kann höchstens einmal vergeben werden</sch:assert>
    </sch:rule>
    <sch:rule id="decor-report-13" context="hl7:observation/hl7:code[ancestor-or-self::*[hl7:templateId/@root=&#x27;1.2.276.0.76.10.4049&#x27;]]">
      <sch:report role="warning" test="@code=&#x27;75324-4&#x27;">Code LOINC 75324-4 sollte durch LOINC 29308-4 ersetzt werden.</sch:report>
    </sch:rule>
  </sch:pattern>
</sch:schema>
