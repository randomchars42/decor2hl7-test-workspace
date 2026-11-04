# CDA Mapping Details

This is the evidence appendix for `cda-mapping.json`. Edit the JSON mapping,
not this generated report. Review the generated proposal in `cda-mapping.proposed.md` or the initialized reviewed bundle in `cda-mapping.md`.

Target CDA template: `1.2.276.0.76.3.1.195.10.93` @ `2026-03-25T11:04:07`
Transaction: `2.16.840.1.113883.2.6.60.3.4.60` (Notaufnahmeregister Transitionsversion)

```text
Dataset datapoints:   185
CDA covered:          123
Partial:               51
Not covered:           11

Items:      YES 94, PARTIAL 31, NO 3
Groups:     YES 29, PARTIAL 20, NO 8
Required items: YES 26, PARTIAL 3, NO 0

Reachable templates:   119
Named CDA targets:    22650
Renderable targets:   21138
Evidence-linked items:  102
Executable proposal:    90
Unresolved templates:    0
```

## Summary by evidence

### Qualification

- EXACT: 56
- INDIRECT: 63
- PARTIAL: 51
- NO_CDA: 11
- MULTIPLE(2): 3
- MULTIPLE(4): 1

### Primary evidence

- NONE: 62
- SCHEMATRON_CONSTRAINT: 38
- NAME: 17
- VALUE_SET_ENUM: 14
- BOOLEAN_PRESENCE: 13
- TA: 9
- ARTDECOR_CHOICE: 8
- TRANSFORM: 4
- STATIC_ASSOC_SLOT: 3
- ARTDECOR_DESC: 3
- ARTDECOR_ROLE: 3
- SECTION_NARRATIVE: 2
- ART_DECOR_EXAMPLE_BOOLEAN_DISCRIMINATOR: 2
- ARTDECOR_DESCENDANT: 2
- OPEN_CODED_DOMAIN: 1
- REPEAT_SCOPE: 1
- XPATH: 1
- VS: 1
- CONTEXT_DESCENDANT: 1

### Confidence

- STRONG: 64
- MEDIUM: 51
- WEAK: 8
- NO: 62

## Executable structural rules

- `repeat-by-discriminator-pupilsize-value` — `repeat_by_discriminator`
  - shared repeatable CDA value target
  - one additional CDA repeat level
  - required coded discriminator Pupilsize.targetSiteCode
  - unique terminology designation match
  - Schematron uniqueness by discriminator code
- `repeat-by-discriminator-pupilreaction-value` — `repeat_by_discriminator`
  - shared repeatable CDA value target
  - one additional CDA repeat level
  - required coded discriminator Pupilreaction.targetSiteCode
  - unique terminology designation match
  - Schematron uniqueness by discriminator code
- `for-each-vitalparameter` — `for_each`
  - matching source and CDA repeat depth
- `for-each-diagnostik-wildcard-diagnostik` — `for_each`
  - matching source and CDA repeat depth
- `for-each-masnahmen-medikamentose-therapie` — `for_each`
  - matching source and CDA repeat depth
- `for-each-masnahmen-wildcard-therapie` — `for_each`
  - matching source and CDA repeat depth
- `for-each-abschlussdiagnosen-abschlussdiagnose` — `for_each`
  - matching source and CDA repeat depth
- `repeat-by-example-discriminator-allergyintoleranceobservation-negationind` — `repeat_by_discriminator`
  - neutral ART-DECOR examples in 1.2.276.0.76.10.4066@2015-09-18T00:00:00
  - unique category-specific example caption matches
  - inverse boolean-to-negationInd semantics
  - exact bound discriminator Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code
  - coalesce an equal explicit discriminator occurrence

# Accepted mappings

This section records **90** executable dataset datapoints writing **92** logical CDA leaves. Edit `cda-mapping.json`; the XML excerpts below are read-only consequences of that configuration.

## Sections and entities

### Document header

#### Hauptkostenträger (hauptkostentrager)

Template: `1.2.276.0.76.3.1.195.10.4` @ `2024-08-09T10:35:24`

Kostenträger/Versicherter/Versicherung mit der Angabe des Versicherungsnehmers sowie der damit verbundene Kostenträger (Versicherung). Im Kontext der Krebsregister ist die Versich…

Name der Versicherungsgesellschaft

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Name | `hauptkostentrager.kostentrager.name` | `hauptkostentrager.name` | Name der Versicherungsgesellschaft (`ON`) | Mapped |
| Identifikation | `hauptkostentrager.versicherungsverhaltnis.identifikation` | `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id` | id (`II`) | Mapped |
| Als KV-Fall abgerechnet | `hauptkostentrager.versicherungsverhaltnis.kv_fall` | `hauptkostentrager.code` | Versichertenstatus: als KV Fall abgerechnet? (`CE`) | Transform |

In `cda-mapping.json`, map **Name** by setting `fields["hauptkostentrager.kostentrager.name"]` to `"hauptkostentrager.name"`.
In `cda-mapping.json`, map **Identifikation** by setting `fields["hauptkostentrager.versicherungsverhaltnis.identifikation"]` to `"hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id"`.
In `cda-mapping.json`, review the rule stored at `fields["hauptkostentrager.versicherungsverhaltnis.kv_fall"]`; it writes **Als KV-Fall abgerechnet** to `"hauptkostentrager.code"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "hauptkostentrager.kostentrager.name": "hauptkostentrager.name",
    "hauptkostentrager.versicherungsverhaltnis.identifikation": "hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id",
    "hauptkostentrager.versicherungsverhaltnis.kv_fall": {
      "target": "hauptkostentrager.code",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "2 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<participant typeCode="HLD" contextControlCode="OP">
  <associatedEntity classCode="POLHOLD">
    <code code="{hauptkostentrager.code}"/>
    <scopingOrganization classCode="ORG" determinerCode="INSTANCE">
      <name value="{hauptkostentrager.name}"/>
    </scopingOrganization>
    <id extension="{hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id}"/>
  </associatedEntity>
</participant>
```

#### CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter)

Template: `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`

Abrechnungs-Fallnummer für das Zuordnen von §21-Daten (optional) als zweite Id

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Fallnummer | `administrative_aufnahmeinformationen.fallnummer` | `CDAEncompassingEncounter.id_2` | Abrechnungs-Fallnummer für das Zuordnen von §21-Daten (optional) als zweite Id (`II`) | Mapped |
| Episodennummer | `administrative_aufnahmeinformationen.episodennummer` | `CDAEncompassingEncounter.id_1` | Identifikationselement (verpflichtend) zur Aufnahme der Aufenthalts-Identifikation als erste Id (`II`) | Mapped |
| Typ Entlassung | `administrative_verlegungsentlassungsinformationen.typ_entlassung` | `CDAEncompassingEncounter.dischargeDispositionCode` | dischargeDispositionCode (`CV`) | Mapped |

#### CDA recordTarget (nnar) (CDArecordTargetnnar)

Template: `1.2.276.0.76.10.2032` @ `2014-09-17T00:00:00`

Patient

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Geschlecht | `patient.geschlecht` | `CDArecordTargetnnar.administrativeGenderCode` | administrativeGenderCode (`CE`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["patient.geschlecht"]`; it writes **Geschlecht** to `"CDArecordTargetnnar.administrativeGenderCode"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "patient.geschlecht": {
      "target": "CDArecordTargetnnar.administrativeGenderCode",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "3 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<recordTarget typeCode="RCT" contextControlCode="OP">
  <patientRole classCode="PAT">
    <patient classCode="PSN" determinerCode="INSTANCE">
      <administrativeGenderCode code="{CDArecordTargetnnar.administrativeGenderCode}"/>
    </patient>
  </patientRole>
</recordTarget>
```

#### CDA participant Kostentraeger (HeaderParticipantKostentraeger)

Template: `1.2.276.0.76.10.2022` @ `2014-08-25T00:00:00`

Kostenträger/Versicherter/Versicherung mit der Angabe des Versicherungsnehmers sowie der damit verbundene Kostenträger (Versicherung). Im Kontext der Krebsregister ist die Versich…

Versichertenstatus

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Versichertenstatus | `hauptkostentrager.versicherungsverhaltnis.versichertenstatus` | `HeaderParticipantKostentraeger.code` | Versichertenstatus (`CE`) | Transform |
| Versichertenstatus GKV | `hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv` | `HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1` | Codierungen des Versichertenstatus im Rahmen der GKV (`CV`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["hauptkostentrager.versicherungsverhaltnis.versichertenstatus"]`; it writes **Versichertenstatus** to `"HeaderParticipantKostentraeger.code"`.
In `cda-mapping.json`, review the rule stored at `fields["hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv"]`; it writes **Versichertenstatus GKV** to `"HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "hauptkostentrager.versicherungsverhaltnis.versichertenstatus": {
      "target": "HeaderParticipantKostentraeger.code",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "2 configured values; see cda-mapping.json"
      }
    },
    "hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv": {
      "target": "HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "3 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<participant typeCode="HLD" contextControlCode="OP">
  <associatedEntity classCode="POLHOLD">
    <code code="{HeaderParticipantKostentraeger.code}">
      <translation code="{HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1}"/>
    </code>
  </associatedEntity>
</participant>
```

### Transportmittel (Transportmethod)

#### Transportmethode (Transportmethod)

Template: `1.2.276.0.76.10.4037` @ `2015-03-03T00:00:00`

Transportmethode

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Transportmittel | `administrative_aufnahmeinformationen.transport.transportmittel` | `Transportmethod.value` | value (`CV`) | Mapped |

#### Medizinische Begleitung (medizinische-begleitung)

Template: `1.2.276.0.76.3.1.195.10.12` @ `2024-08-13T12:56:59`

Medizinische Begleitung

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Medizinische Begleitung | `administrative_aufnahmeinformationen.transport.medizinische_begleitung` | `medizinische-begleitung.code` | code (`CV`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["administrative_aufnahmeinformationen.transport.medizinische_begleitung"]`; it writes **Medizinische Begleitung** to `"medizinische-begleitung.code"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "administrative_aufnahmeinformationen.transport.medizinische_begleitung": {
      "target": "medizinische-begleitung.code",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "2 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<procedure classCode="PROC" moodCode="EVN">
  <code code="{medizinische-begleitung.code}"/>
</procedure>
```

### Zuweisung (Typeofreferralsource)

#### Zuweisung mit Zuweiser (Referralfrom)

Template: `1.2.276.0.76.10.4038` @ `2015-09-18T00:00:00`

Zuweiser

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zuweisung | `administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung` | `Referralfrom.act.participant.participantRole.code` | code (`CE`) | Mapped |

### Ersteinschätzung (ersteinschatzung-section)

#### Direkter Arztkontakt (direkter_arztkontakt)

Template: `1.2.276.0.76.3.1.195.10.17` @ `2024-05-24T00:00:00`

Wurde keine Ersteinschätzung durchgeführt, da ein direkter Arztkontakt erfolgt ist?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Direkter Arztkontakt | `ersteinschatzung.direkter_arztkontakt` | `direkter_arztkontakt.observation.negationInd` | @negationInd (`BL`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["ersteinschatzung.direkter_arztkontakt"]`; it writes **Direkter Arztkontakt** to `"direkter_arztkontakt.observation.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "ersteinschatzung.direkter_arztkontakt": {
      "target": "direkter_arztkontakt.observation.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{direkter_arztkontakt.observation.negationInd}"/>
  </entry>
</section>
```

#### Ersteinschätzung (ersteinschatzung)

Template: `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`

A acuity entry indicates the triage acuity entry and the triage time of the patient

Ersteinschätzung, kodiert

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Ergebnis der Ersteinschätzung | `ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung` | `ersteinschatzung.value` | Ersteinschätzung, kodiert (`CE`) | Transform |
| Zeitpunkt der Ersteinschätzung | `ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung` | `ersteinschatzung.effectiveTime` | Zeitpunkt der Ersteinschätzung (`TS`) | Mapped |
| verwendetes Ersteinschätzungssystem | `ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem` | `ersteinschatzung.methodCode` | verwendetes Ersteinschätzungssystem (`CD`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung"]`; it writes **Ergebnis der Ersteinschätzung** to `"ersteinschatzung.value"`.
In `cda-mapping.json`, map **Zeitpunkt der Ersteinschätzung** by setting `fields["ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung"]` to `"ersteinschatzung.effectiveTime"`.
In `cda-mapping.json`, review the rule stored at `fields["ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem"]`; it writes **verwendetes Ersteinschätzungssystem** to `"ersteinschatzung.methodCode"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung": {
      "target": "ersteinschatzung.value",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "5 configured values; see cda-mapping.json"
      }
    },
    "ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung": "ersteinschatzung.effectiveTime",
    "ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem": {
      "target": "ersteinschatzung.methodCode",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "5 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <effectiveTime value="{ersteinschatzung.effectiveTime}"/>
  <value xsi:type="CE" code="{ersteinschatzung.value}"/>
  <methodCode code="{ersteinschatzung.methodCode}"/>
</observation>
```

#### MTS-Präsentationsdiagramm (mts-prasentationsdiagramm)

Template: `1.2.276.0.76.3.1.195.10.21` @ `2024-08-13T10:50:15`

MTS-Präsentationsdiagramm

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Präsentationsdiagramm | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm` | `mts-prasentationsdiagramm.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren ROT (mts-indikatoren-rot)

Template: `1.2.276.0.76.3.1.195.10.22` @ `2024-08-13T10:50:15`

MTS-Indikatoren ROT

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren ROT | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot` | `mts-indikatoren-rot.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren ORANGE (mts-indikatoren-orange)

Template: `1.2.276.0.76.3.1.195.10.23` @ `2024-08-13T10:50:15`

MTS-Indikatoren ORANGE

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren ORANGE | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange` | `mts-indikatoren-orange.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren GELB (mts-indikatoren-gelb)

Template: `1.2.276.0.76.3.1.195.10.24` @ `2024-08-13T10:50:15`

MTS-Indikatoren GELB

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren GELB | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb` | `mts-indikatoren-gelb.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren GRÜN (mts-indikatoren-grun)

Template: `1.2.276.0.76.3.1.195.10.25` @ `2024-08-13T10:50:15`

MTS-Indikatoren GRÜN

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren GRÜN | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun` | `mts-indikatoren-grun.value` | value (`CE`) | Mapped |

#### ESI-Triagefaktoren (esi-triage-faktoren)

Template: `1.2.276.0.76.3.1.195.10.26` @ `2024-08-13T10:50:15`

ESI-Triagefaktoren

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| ESI-Triage | `ersteinschatzung.parameter_der_ersteinschatzung.esitriage` | `esi-triage-faktoren.value` | value (`CE`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["ersteinschatzung.parameter_der_ersteinschatzung.esitriage"]`; it writes **ESI-Triage** to `"esi-triage-faktoren.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "ersteinschatzung.parameter_der_ersteinschatzung.esitriage": {
      "target": "esi-triage-faktoren.value",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "17 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CE" code="{esi-triage-faktoren.value}"/>
</observation>
```

### Notfallanamnese (HistoryofPresentIllnessSection)

#### Unfallursache/-kinetik (unfallursache-kinetik)

Template: `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`

Primäre Unfallursache und -kinetik

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Unfallursache | `notfallanamnese.unfallanamnese.unfallursache` | `unfallursache-kinetik.observation.value` | value (`CD`) | Mapped |
| Unfallkinetik | `notfallanamnese.unfallanamnese.unfallkinetik` | `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | value (`CV`) | Transform |

In `cda-mapping.json`, map **Unfallursache** by setting `fields["notfallanamnese.unfallanamnese.unfallursache"]` to `"unfallursache-kinetik.observation.value"`.
In `cda-mapping.json`, review the rule stored at `fields["notfallanamnese.unfallanamnese.unfallkinetik"]`; it writes **Unfallkinetik** to `"unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "notfallanamnese.unfallanamnese.unfallursache": "unfallursache-kinetik.observation.value",
    "notfallanamnese.unfallanamnese.unfallkinetik": {
      "target": "unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "13 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CD" code="{unfallursache-kinetik.observation.value}">
    <qualifier code='67496-0']="{unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value}"/>
  </value>
</observation>
```

#### Unfall-Anamnese (unfall-anamnese)

Template: `1.2.276.0.76.3.1.195.10.28` @ `2024-08-13T18:34:56`

Injury Event Detail

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Fahrzeug des Verunfallten | `notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten` | `unfall-anamnese.act.participant.participantRole.code` | code (`CE`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten"]`; it writes **Fahrzeug des Verunfallten** to `"unfall-anamnese.act.participant.participantRole.code"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten": {
      "target": "unfall-anamnese.act.participant.participantRole.code",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "16 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<act classCode="ACT" moodCode="EVN">
  <participant typeCode="DEV" contextControlCode="OP">
    <participantRole classCode="INST">
      <code code="{unfall-anamnese.act.participant.participantRole.code}"/>
    </participantRole>
  </participant>
</act>
```

#### Unfallart Traumaregister (unfallart-traumaregister)

Template: `1.2.276.0.76.3.1.195.10.30` @ `2024-08-13T18:37:55`

Unfallart Traumaregister

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Unfallart TraumaRegister | `notfallanamnese.unfallanamnese.unfallart_trauma_register` | `unfallart-traumaregister.value` | value (`CE`) | Mapped |

#### Substanz-Einfluss (substanz-einfluss)

Template: `1.2.276.0.76.3.1.195.10.32` @ `2024-08-13T18:37:55`

Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? | `notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq` | `substanz-einfluss.value` | value (`CE`) | Mapped |

### Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)

#### Problem Observation (Text/CEDIS) (Problemobservationcedis)

Template: `1.2.276.0.76.10.4040` @ `2015-09-18T00:00:00`

Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptom und ggf. CEDIS-Kode

Beschwerden bei Vorstellung (Freitext)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Beschwerden bei Vorstellung (Freitext) | `notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext` | `Problemobservationcedis.originalText` | Beschwerden bei Vorstellung (Freitext) (`ST`) | Mapped |
| Beschwerden bei Vorstellung (CEDIS) | `notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis` | `Problemobservationcedis.value` | CEDIS Kode (`CE`) | Mapped |

### Klinische Basisinformationen (ClinicalInformation)

#### Status Schwangerschaft (Pregnancystatus)

Template: `1.2.276.0.76.10.4043` @ `2015-03-03T00:00:00`

Status Schwangerschaft

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Schwangerschaft | `klinische_basisdaten_patient.schwangerschaft` | `Pregnancystatus.value` | value (`CV`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["klinische_basisdaten_patient.schwangerschaft"]`; it writes **Schwangerschaft** to `"Pregnancystatus.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "klinische_basisdaten_patient.schwangerschaft": {
      "target": "Pregnancystatus.value",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "3 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CV" code="{Pregnancystatus.value}"/>
</observation>
```

#### Immunisierung Clostridium tetani (Clostridiumtetaniimmunization)

Template: `1.2.276.0.76.10.4044` @ `2015-09-18T00:00:00`

Immunisierung Clostridium tetani

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Tetanusschutz | `klinische_basisdaten_patient.tetanusschutz` | `Clostridiumtetaniimmunization.negationInd` | @negationInd (`bl`) | Transform |
| Tetanusschutz | `klinische_basisdaten_patient.tetanusschutz` | `Clostridiumtetaniimmunization.nullFlavor` | @nullFlavor (`cs`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["klinische_basisdaten_patient.tetanusschutz"]`; it writes **Tetanusschutz** to `"Clostridiumtetaniimmunization.negationInd"`.
In `cda-mapping.json`, review the rule stored at `fields["klinische_basisdaten_patient.tetanusschutz"]`; it writes **Tetanusschutz** to `"Clostridiumtetaniimmunization.nullFlavor"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "klinische_basisdaten_patient.tetanusschutz": [
      {
        "target": "Clostridiumtetaniimmunization.negationInd",
        "transform": {
          "type": "enum",
          "map": "3 configured values; see cda-mapping.json"
        }
      },
      {
        "target": "Clostridiumtetaniimmunization.nullFlavor",
        "transform": {
          "type": "enum",
          "map": "3 configured values; see cda-mapping.json"
        }
      }
    ]
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <substanceAdministration classCode="SBADM" moodCode="EVN" nullFlavor="NI" negationInd="{Clostridiumtetaniimmunization.negationInd}"/>
  </entry>
</section>
```

#### Modified Rankin Scale (Modifiedrankinscale)

Template: `1.2.276.0.76.10.4045` @ `2015-03-03T00:00:00`

Modified Rankin Skala

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| modified Rankin Skala Score | `scores.modified_rankin_skala_score` | `Modifiedrankinscale.observation.value` | value (`PQ`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["scores.modified_rankin_skala_score"]`; it writes **modified Rankin Skala Score** to `"Modifiedrankinscale.observation.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "scores.modified_rankin_skala_score": {
      "target": "Modifiedrankinscale.observation.value",
      "transform": {
        "type": "ordinal",
        "map": "7 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value unit="{score}" value="{Modifiedrankinscale.observation.value}"/>
</observation>
```

### Vitalparameter (VitalSignsSection)

#### Vitalparameter-Container (vitalparametercontainer)

Template: `1.2.276.0.76.3.1.195.10.95` @ `2026-04-27T15:39:06`

Vital Sign Observations Organizer

Zeitpunkt der Messung aller Vital Sign Beobachtungen in diesem Container.

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt | `vitalparameter.zeitpunkt` | `vitalparametercontainer.effectiveTime` | Zeitpunkt der Messung aller Vital Sign Beobachtungen in diesem Container (`TS`) | Mapped |

#### Atemfrequenz (RespiratoryRate)

Template: `1.2.276.0.76.10.4030` @ `2014-09-16T00:00:00`

Atemfrequenz

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Atemfrequenz | `vitalparameter.atemfrequenz` | `RespiratoryRate.value` | value (`PQ`) | Mapped |

#### Pulsoximetrische Sauerstoffsättigung (pulsoximetrische_sauerstoffsattigung)

Template: `1.2.276.0.76.3.1.195.10.35` @ `2024-08-14T10:13:56`

Pulsoximetrisch bestimmte periphere Sauerstoffsättigung des Patienten in Prozent [%]

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Pulsoximetrische Sauerstoffsättigung | `vitalparameter.pulsoximetrische_sauerstoffsattigung` | `pulsoximetrische_sauerstoffsattigung.value` | value (`PQ`) | Mapped |

#### Blutdruck systolisch (Systolicbloodpressure)

Template: `1.2.276.0.76.10.4032` @ `2014-09-16T00:00:00`

Blutdruck systolisch

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Systolischer Blutdruck | `vitalparameter.blutdruck.systolischer_blutdruck` | `Systolicbloodpressure.value` | value (`PQ`) | Mapped |

#### Blutdruck diastolisch (blutdruck-diastolisch)

Template: `1.2.276.0.76.3.1.195.10.38` @ `2024-08-14T10:13:56`

Blutdruck diastolisch

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Diastolischer Blutdruck | `vitalparameter.blutdruck.diastolischer_blutdruck` | `blutdruck-diastolisch.value` | value (`PQ`) | Mapped |

#### Herzfrequenz (HeartRate)

Template: `1.2.276.0.76.10.4033` @ `2014-09-16T00:00:00`

Herzfrequenz des Patienten [Schläge/min] per EKG abgeleitet

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Herzfrequenz | `vitalparameter.herzfrequenz` | `HeartRate.value` | value (`PQ`) | Mapped |

#### Pulsfrequenz (pulsfrequenz)

Template: `1.2.276.0.76.3.1.195.10.40` @ `2024-08-14T10:13:56`

Puls des Patienten per manuellem Auszählen, Pulsoximeter oder invasiver Druckmessung gemessen

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Pulsfrequenz | `vitalparameter.puls.pulsfrequenz` | `pulsfrequenz.value` | value (`PQ`) | Mapped |

#### Pupillenweite (Pupilsize)

Template: `1.2.276.0.76.10.4046` @ `2015-09-18T00:00:00`

Pupillenweite (rechts/links)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Pupillenweite (rechts) | `vitalparameter.pupillenweite.pupillenweite_rechts` | `Pupilsize_right.value` | value (`CV`) | Structural rule |
| Pupillenweite (links) | `vitalparameter.pupillenweite.pupillenweite_links` | `Pupilsize_left.value` | value (`CV`) | Structural rule |

In `cda-mapping.json`, review the rule stored at `fields["vitalparameter.pupillenweite.pupillenweite_rechts"]`; it writes **Pupillenweite (rechts)** to `"Pupilsize_right.value"`.
In `cda-mapping.json`, review the rule stored at `fields["vitalparameter.pupillenweite.pupillenweite_links"]`; it writes **Pupillenweite (links)** to `"Pupilsize_left.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "vitalparameter.pupillenweite.pupillenweite_rechts": {
      "target": "Pupilsize_right.value",
      "cda_target": "Pupilsize.value",
      "structure": "repeat-by-discriminator-pupilsize-value",
      "branch": "right"
    },
    "vitalparameter.pupillenweite.pupillenweite_links": {
      "target": "Pupilsize_left.value",
      "cda_target": "Pupilsize.value",
      "structure": "repeat-by-discriminator-pupilsize-value",
      "branch": "left"
    }
  },
  "structures": {
    "repeat-by-discriminator-pupilsize-value": {
      "type": "repeat_by_discriminator",
      "branches": [
        {
          "source": "vitalparameter.pupillenweite.pupillenweite_rechts",
          "target": "Pupilsize_right.value",
          "cda_target": "Pupilsize.value",
          "branch": "right",
          "constants": {
            "Pupilsize.targetSiteCode": {
              "code": "R",
              "codeSystem": "1.2.276.0.76.3.1.195.5.48",
              "displayName": "Auge rechts",
              "kind": "concept",
              "designations": [
                {
                  "displayName": "Right eye",
                  "language": "en-US"
                },
                {
                  "displayName": "Auge rechts",
                  "language": "de-DE"
                }
              ],
              "valueSet": "1.2.276.0.76.11.48",
              "valueSetEffectiveDate": "2015-11-17T00:00:00"
            }
          }
        },
        {
          "source": "vitalparameter.pupillenweite.pupillenweite_links",
          "target": "Pupilsize_left.value",
          "cda_target": "Pupilsize.value",
          "branch": "left",
          "constants": {
            "Pupilsize.targetSiteCode": {
              "code": "L",
              "codeSystem": "1.2.276.0.76.3.1.195.5.48",
              "displayName": "Auge links",
              "kind": "concept",
              "designations": [
                {
                  "displayName": "Left eye",
                  "language": "en-US"
                },
                {
                  "displayName": "Auge links",
                  "language": "de-DE"
                }
              ],
              "valueSet": "1.2.276.0.76.11.48",
              "valueSetEffectiveDate": "2015-11-17T00:00:00"
            }
          }
        }
      ]
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CV" code="{Pupilsize_right.value}"/>
  <targetSiteCode code="L" codeSystem="1.2.276.0.76.3.1.195.5.48" displayName="Auge links" kind="concept" designations="[{'displayName': 'Left eye', 'language': 'en-US'}, {'displayName': 'Auge links', 'language': 'de-DE'}]" valueSet="1.2.276.0.76.11.48" valueSetEffectiveDate="2015-11-17T00:00:00"/>
</observation>
```

#### Pupillenreaktion (Pupilreaction)

Template: `1.2.276.0.76.10.4047` @ `2015-09-18T00:00:00`

Pupillenreaktion (rechts/links)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Pupillenreaktion (rechts) | `vitalparameter.pupillenreaktion.pupillenreaktion_rechts` | `Pupilreaction_right.value` | value (`CV`) | Structural rule |
| Pupillenreaktion (links) | `vitalparameter.pupillenreaktion.pupillenreaktion_links` | `Pupilreaction_left.value` | value (`CV`) | Structural rule |

In `cda-mapping.json`, review the rule stored at `fields["vitalparameter.pupillenreaktion.pupillenreaktion_rechts"]`; it writes **Pupillenreaktion (rechts)** to `"Pupilreaction_right.value"`.
In `cda-mapping.json`, review the rule stored at `fields["vitalparameter.pupillenreaktion.pupillenreaktion_links"]`; it writes **Pupillenreaktion (links)** to `"Pupilreaction_left.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "vitalparameter.pupillenreaktion.pupillenreaktion_rechts": {
      "target": "Pupilreaction_right.value",
      "cda_target": "Pupilreaction.value",
      "structure": "repeat-by-discriminator-pupilreaction-value",
      "branch": "right"
    },
    "vitalparameter.pupillenreaktion.pupillenreaktion_links": {
      "target": "Pupilreaction_left.value",
      "cda_target": "Pupilreaction.value",
      "structure": "repeat-by-discriminator-pupilreaction-value",
      "branch": "left"
    }
  },
  "structures": {
    "repeat-by-discriminator-pupilreaction-value": {
      "type": "repeat_by_discriminator",
      "branches": [
        {
          "source": "vitalparameter.pupillenreaktion.pupillenreaktion_rechts",
          "target": "Pupilreaction_right.value",
          "cda_target": "Pupilreaction.value",
          "branch": "right",
          "constants": {
            "Pupilreaction.targetSiteCode": {
              "code": "R",
              "codeSystem": "1.2.276.0.76.3.1.195.5.48",
              "displayName": "Auge rechts",
              "kind": "concept",
              "designations": [
                {
                  "displayName": "Right eye",
                  "language": "en-US"
                },
                {
                  "displayName": "Auge rechts",
                  "language": "de-DE"
                }
              ],
              "valueSet": "1.2.276.0.76.11.48",
              "valueSetEffectiveDate": "2015-11-17T00:00:00"
            }
          }
        },
        {
          "source": "vitalparameter.pupillenreaktion.pupillenreaktion_links",
          "target": "Pupilreaction_left.value",
          "cda_target": "Pupilreaction.value",
          "branch": "left",
          "constants": {
            "Pupilreaction.targetSiteCode": {
              "code": "L",
              "codeSystem": "1.2.276.0.76.3.1.195.5.48",
              "displayName": "Auge links",
              "kind": "concept",
              "designations": [
                {
                  "displayName": "Left eye",
                  "language": "en-US"
                },
                {
                  "displayName": "Auge links",
                  "language": "de-DE"
                }
              ],
              "valueSet": "1.2.276.0.76.11.48",
              "valueSetEffectiveDate": "2015-11-17T00:00:00"
            }
          }
        }
      ]
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CV" code="{Pupilreaction_right.value}"/>
  <targetSiteCode code="L" codeSystem="1.2.276.0.76.3.1.195.5.48" displayName="Auge links" kind="concept" designations="[{'displayName': 'Left eye', 'language': 'en-US'}, {'displayName': 'Auge links', 'language': 'de-DE'}]" valueSet="1.2.276.0.76.11.48" valueSetEffectiveDate="2015-11-17T00:00:00"/>
</observation>
```

#### Körperkerntemperatur (BodyTemperatureCore)

Template: `1.2.276.0.76.10.4035` @ `2014-09-16T00:00:00`

Körperkerntemperatur

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Körperkerntemperatur | `vitalparameter.korperkerntemperatur.korperkerntemperatur` | `BodyTemperatureCore.value` | value (`PQ`) | Mapped |

#### Glasgow Coma Scale (GlasgowComaScale)

Template: `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`

Glasgow Coma Scale (GCS) als Summe und mit den drei Achsen Augenöffnen, verbale Antwort und motorische Antwort

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| GCS Augenöffnen | `scores.glasgow_coma_scale_gcs.gcs_augenoffnen` | `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | value (`PQ`) | Mapped |
| GCS verbale Antwort | `scores.glasgow_coma_scale_gcs.gcs_verbale_antwort` | `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | value (`PQ`) | Mapped |
| GCS motorische Antwort | `scores.glasgow_coma_scale_gcs.gcs_motorische_antwort` | `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | value (`PQ`) | Mapped |
| GCS Summe | `scores.glasgow_coma_scale_gcs.gcs_summe` | `GlasgowComaScale.observation.value` | value (`PQ`) | Mapped |

#### Schmerz (Painseverity)

Template: `1.2.276.0.76.10.4036` @ `2014-09-16T00:00:00`

Schmerz

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Numerischen Rating Skala | `scores.schmerzmessung.numerischen_rating_skala` | `Painseverity.observation.value` | value (`PQ`) | Mapped |

### Diagnostik (Relevantdiagnostictestsorlaboratorydata)

#### Mikrobiologie angefordert (mikrobiologie_angefordert)

Template: `1.2.276.0.76.3.1.195.10.47` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Mikrobiologische Untersuchung angefordert?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Mikrobiologie angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert` | `mikrobiologie_angefordert.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert"]`; it writes **Mikrobiologie angefordert** to `"mikrobiologie_angefordert.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert": {
      "target": "mikrobiologie_angefordert.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="RQO" negationInd="{mikrobiologie_angefordert.negationInd}"/>
  </entry>
</section>
```

#### BGA angefordert (bga_angefordert)

Template: `1.2.276.0.76.3.1.195.10.48` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine BGA angefordert?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| BGA angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert` | `bga_angefordert.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert"]`; it writes **BGA angefordert** to `"bga_angefordert.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert": {
      "target": "bga_angefordert.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="RQO" negationInd="{bga_angefordert.negationInd}"/>
  </entry>
</section>
```

#### EKG angefordert (ekg_angefordert)

Template: `1.2.276.0.76.3.1.195.10.49` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein 12-Kanal-EKG angefordert?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| EKG angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert` | `ekg_angefordert.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert"]`; it writes **EKG angefordert** to `"ekg_angefordert.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert": {
      "target": "ekg_angefordert.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="RQO" negationInd="{ekg_angefordert.negationInd}"/>
  </entry>
</section>
```

#### Sonographie angefordert (sonographie_angefordert)

Template: `1.2.276.0.76.3.1.195.10.50` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine Sonographie angefordert?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Sonographie angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert` | `sonographie_angefordert.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert"]`; it writes **Sonographie angefordert** to `"sonographie_angefordert.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert": {
      "target": "sonographie_angefordert.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="RQO" negationInd="{sonographie_angefordert.negationInd}"/>
  </entry>
</section>
```

#### Röntgen-Thorax angefordert (rontgenthorax_angefordert)

Template: `1.2.276.0.76.3.1.195.10.51` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Röntgenthorax angefordert?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgenthorax angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert` | `rontgenthorax_angefordert.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert"]`; it writes **Röntgenthorax angefordert** to `"rontgenthorax_angefordert.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert": {
      "target": "rontgenthorax_angefordert.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="RQO" negationInd="{rontgenthorax_angefordert.negationInd}"/>
  </entry>
</section>
```

#### Röntgen-Thorax durchgeführt (Plainchestxray)

Template: `1.2.276.0.76.10.4050` @ `2015-09-18T00:00:00`

Diagnostik Template Plain chest X-ray in Emergency Department

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgen-Thorax durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt` | `Plainchestxray.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt"]`; it writes **Röntgen-Thorax durchgeführt** to `"Plainchestxray.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt": {
      "target": "Plainchestxray.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Plainchestxray.negationInd}"/>
  </entry>
</section>
```

#### Röntgen-Becken durchgeführt (Pelvisxray)

Template: `1.2.276.0.76.10.4052` @ `2015-09-18T00:00:00`

Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgen-Becken durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt` | `Pelvisxray.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt"]`; it writes **Röntgen-Becken durchgeführt** to `"Pelvisxray.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt": {
      "target": "Pelvisxray.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Pelvisxray.negationInd}"/>
  </entry>
</section>
```

#### Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt (Radiographyofspine)

Template: `1.2.276.0.76.10.4051` @ `2015-09-18T00:00:00`

Diagnostik Template Radiography of spine in Emergency Department

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgen-Wirbelsäule durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt` | `Radiographyofspine.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt"]`; it writes **Röntgen-Wirbelsäule durchgeführt** to `"Radiographyofspine.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt": {
      "target": "Radiographyofspine.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Radiographyofspine.negationInd}"/>
  </entry>
</section>
```

#### CT Kopf durchgeführt (Computedtomographyofentirehead)

Template: `1.2.276.0.76.10.4055` @ `2015-09-18T00:00:00`

Diagnostik Template Computed tomography of entire head in Emergency Department

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT Kopf durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt` | `Computedtomographyofentirehead.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt"]`; it writes **CT Kopf durchgeführt** to `"Computedtomographyofentirehead.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt": {
      "target": "Computedtomographyofentirehead.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Computedtomographyofentirehead.negationInd}"/>
  </entry>
</section>
```

#### CT HWS durchgeführt (ct_hws_durchgefuhrt)

Template: `1.2.276.0.76.3.1.195.10.57` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Halswirbelsäule durchgeführt?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT HWS durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt` | `ct_hws_durchgefuhrt.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt"]`; it writes **CT HWS durchgeführt** to `"ct_hws_durchgefuhrt.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt": {
      "target": "ct_hws_durchgefuhrt.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="EVN" negationInd="{ct_hws_durchgefuhrt.negationInd}"/>
  </entry>
</section>
```

#### CT Thorax durchgeführt (ct_thorax_durchgefuhrt)

Template: `1.2.276.0.76.3.1.195.10.58` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein CT des Thorax durchgeführt?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT Thorax durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt` | `ct_thorax_durchgefuhrt.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt"]`; it writes **CT Thorax durchgeführt** to `"ct_thorax_durchgefuhrt.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt": {
      "target": "ct_thorax_durchgefuhrt.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="EVN" negationInd="{ct_thorax_durchgefuhrt.negationInd}"/>
  </entry>
</section>
```

#### CT Abdomen durchgeführt (ct_abdomen_durchgefuhrt)

Template: `1.2.276.0.76.3.1.195.10.59` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT des Abdomens durchgführt?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT Abdomen durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt` | `ct_abdomen_durchgefuhrt.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt"]`; it writes **CT Abdomen durchgeführt** to `"ct_abdomen_durchgefuhrt.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt": {
      "target": "ct_abdomen_durchgefuhrt.negationInd",
      "transform": {
        "type": "not"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="EVN" negationInd="{ct_abdomen_durchgefuhrt.negationInd}"/>
  </entry>
</section>
```

#### CT-/MR-/DS-Angiographie (ct-mr-ds-angiographie)

Template: `1.2.276.0.76.3.1.195.10.91` @ `2024-05-24T00:00:00`

Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT- bzw. MR- bzw. DS-Angiographie | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie` | `ct-mr-ds-angiographie.value` | value (`CV`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie"]`; it writes **CT- bzw. MR- bzw. DS-Angiographie** to `"ct-mr-ds-angiographie.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie": {
      "target": "ct-mr-ds-angiographie.value",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "10 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CV" code="{ct-mr-ds-angiographie.value}"/>
</observation>
```

#### Wildcard Diagnostik (WildcardDiagnostik)

Template: `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`

Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt | `diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt` | `WildcardDiagnostik.effectiveTime_not_xsi_type` | effectiveTime (`TS`) | Mapped |
| Zeitraum | `diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum` | `WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width` | width (`PQ`) | Mapped |
| Code | `diagnostik.wildcard_diagnostik.code` | `WildcardDiagnostik.code` | Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.) (`CD`) | Mapped |
| Wert | `diagnostik.wildcard_diagnostik.wert` | `WildcardDiagnostik.value_as_ST` | mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik (`ST`) | Mapped |
| Definitorischer Link | `diagnostik.wildcard_diagnostik.definitorischer_link` | `WildcardDiagnostik.observation.reference.externalDocument.text.reference` | reference (`URL`) | Mapped |

### Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)

#### Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)

Template: `1.2.276.0.76.10.3051` @ `2015-03-26T00:00:00`

Beschreibung der Allergien und Medikamentenunverträglichkeiten

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Allergie Beschreibung | `klinische_basisdaten_patient.allergien.allergie_beschreibung` | `AllergienUnvertraeglichkeiten.text` | text (`SD.TEXT`) | Mapped |

#### Allergy / Intolerance Observation (Allergyintoleranceobservation)

Template: `1.2.276.0.76.10.4066` @ `2015-09-18T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Agens | `klinische_basisdaten_patient.allergien.agens` | `Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code` | code (`CE`) | Transform |
| Antibiotikaallergie | `klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie` | `Allergyintoleranceobservation_antibiotikaallergie.negationInd` | @negationInd (`bl`) | Structural rule |
| Kontrastmittelallergie | `klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie` | `Allergyintoleranceobservation_kontrastmittelallergie.negationInd` | @negationInd (`bl`) | Structural rule |

Target-governed coded fallback: an exact admitted code/code-system pair is written as that code. Any other source value is written as `nullFlavor="OTH"`, and its wording is preserved in the compiled coded datatype's `originalText` child.

In `cda-mapping.json`, review the rule stored at `fields["klinische_basisdaten_patient.allergien.agens"]`; it writes **Agens** to `"Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code"`.
In `cda-mapping.json`, review the rule stored at `fields["klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie"]`; it writes **Antibiotikaallergie** to `"Allergyintoleranceobservation_antibiotikaallergie.negationInd"`.
In `cda-mapping.json`, review the rule stored at `fields["klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie"]`; it writes **Kontrastmittelallergie** to `"Allergyintoleranceobservation_kontrastmittelallergie.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "klinische_basisdaten_patient.allergien.agens": {
      "target": "Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code",
      "transform": {
        "type": "coded_fallback",
        "null_flavor": "OTH",
        "value_set": {
          "id": "1.2.276.0.76.11.52",
          "effective_date": "2015-11-17T00:00:00"
        },
        "allowed": "3 exact code/code-system pairs; see cda-mapping.json"
      }
    },
    "klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie": {
      "target": "Allergyintoleranceobservation_antibiotikaallergie.negationInd",
      "cda_target": "Allergyintoleranceobservation.negationInd",
      "structure": "repeat-by-example-discriminator-allergyintoleranceobservation-negationind",
      "branch": "antibiotikaallergie",
      "transform": {
        "type": "not"
      }
    },
    "klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie": {
      "target": "Allergyintoleranceobservation_kontrastmittelallergie.negationInd",
      "cda_target": "Allergyintoleranceobservation.negationInd",
      "structure": "repeat-by-example-discriminator-allergyintoleranceobservation-negationind",
      "branch": "kontrastmittelallergie",
      "transform": {
        "type": "not"
      }
    }
  },
  "structures": {
    "repeat-by-example-discriminator-allergyintoleranceobservation-negationind": {
      "type": "repeat_by_discriminator",
      "branches": [
        {
          "source": "klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie",
          "target": "Allergyintoleranceobservation_antibiotikaallergie.negationInd",
          "cda_target": "Allergyintoleranceobservation.negationInd",
          "branch": "antibiotikaallergie",
          "constants": {
            "Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code": {
              "code": "A07AA",
              "codeSystem": "2.16.840.1.113883.6.73",
              "displayName": "Antibiotika",
              "kind": "concept",
              "designations": [],
              "valueSet": "1.2.276.0.76.11.52",
              "valueSetEffectiveDate": "2015-11-17T00:00:00"
            }
          }
        },
        {
          "source": "klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie",
          "target": "Allergyintoleranceobservation_kontrastmittelallergie.negationInd",
          "cda_target": "Allergyintoleranceobservation.negationInd",
          "branch": "kontrastmittelallergie",
          "constants": {
            "Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code": {
              "code": "V08",
              "codeSystem": "2.16.840.1.113883.6.73",
              "displayName": "Kontrastmittel",
              "kind": "concept",
              "designations": [],
              "valueSet": "1.2.276.0.76.11.52",
              "valueSetEffectiveDate": "2015-11-17T00:00:00"
            }
          }
        }
      ]
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<observation classCode="OBS" moodCode="EVN">
  <participant typeCode="CSM" contextControlCode="OP">
    <participantRole classCode="MANU">
      <playingEntity classCode="MMAT" determinerCode="INSTANCE">
        <code code="V08" codeSystem="2.16.840.1.113883.6.73" displayName="Kontrastmittel" kind="concept" designations="[]" valueSet="1.2.276.0.76.11.52" valueSetEffectiveDate="2015-11-17T00:00:00"/>
      </playingEntity>
    </participantRole>
  </participant>
</observation>
<act classCode="ACT" moodCode="EVN">
  <entryRelationship typeCode="SUBJ" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Allergyintoleranceobservation_antibiotikaallergie.negationInd}"/>
  </entryRelationship>
</act>
```

### Prozeduren und Maßnahmen (Patientcarenarrative)

#### Isolation (isolation)

Template: `1.2.276.0.76.3.1.195.10.65` @ `2024-08-14T18:08:14`

Patient muss aufgrund einer (z.B. möglicherweise übertragbaren Erkrankung) isoliert werden.

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Isolation | `masnahmen.isolation.isolation` | `isolation.negationInd` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["masnahmen.isolation.isolation"]`; it writes **Isolation** to `"isolation.negationInd"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "masnahmen.isolation.isolation": [
      {
        "target": "isolation.negationInd",
        "transform": {
          "type": "enum",
          "map": "2 configured values; see cda-mapping.json"
        }
      }
    ]
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<section classCode="DOCSECT" moodCode="EVN">
  <entry typeCode="COMP" contextConductionInd="true">
    <procedure classCode="PROC" moodCode="EVN" negationInd="{isolation.negationInd}"/>
  </entry>
</section>
```

#### Isolation Indication (Isolationindication)

Template: `1.2.276.0.76.3.1.195.10.66` @ `2024-08-14T18:14:44`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Isolation Begründung | `masnahmen.isolation.isolation_begrundung` | `Isolationindication.value` | value (`CV`) | Mapped |

#### Wildcard Therapie (WildcardTherapie)

Template: `1.2.276.0.76.3.1.195.10.90` @ `2024-08-18T21:50:30`

Code laut Definition der Wildcard-Maßnahmen (Link zur Definition, s.u.)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt | `masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitpunkt` | `WildcardTherapie.effectiveTime_not_xsi_type` | effectiveTime (`TS`) | Mapped |
| Zeitraum | `masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitraum` | `WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width` | width (`PQ`) | Mapped |
| Code | `masnahmen.wildcard_therapie.code` | `WildcardTherapie.code` | Code laut Definition der Wildcard-Maßnahmen (Link zur Definition, s.u.) (`CD`) | Mapped |
| Definitorischer Link | `masnahmen.wildcard_therapie.definitorischer_link` | `WildcardTherapie.procedure.reference.externalDocument.text.reference` | reference (`URL`) | Mapped |

### Medikamentöse Therapie (medikamentose-therapie)

#### Medikation

Template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare…

Sequence number of the Subordinate Substance Administration.

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Sequenznummer | `masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer` | `Medikation.sequenceNumber` | Sequence number of the Subordinate Substance Administration (`INT`) | Mapped |

### Abschlussdiagnosen (Basis) (Eddiagnosis)

#### Diagnosesicherheit (Certainty)

Template: `1.2.276.0.76.10.90027` @ `2017-03-02T00:00:00`

Qualifier für Diagnosesicherheit (nach §295 SGB V), zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zusatzkennzeichen | `abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen` | `Certainty.value` | value (`CV`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen"]`; it writes **Zusatzkennzeichen** to `"Certainty.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen": [
      {
        "target": "Certainty.value",
        "transform": {
          "type": "enum",
          "select": "raw",
          "map": "8 configured values; see cda-mapping.json"
        }
      },
      {
        "target": "Problemobservationeddiagnosis.negationInd",
        "transform": {
          "type": "enum",
          "select": "raw",
          "map": "2 configured values; see cda-mapping.json"
        }
      }
    ]
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<qualifier code='8']="{Certainty.value}"/>
```

#### Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis)

Template: `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`

Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zusatzkennzeichen | `abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen` | `Problemobservationeddiagnosis.negationInd` | @negationInd (`bl`) | Transform |

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<act classCode="ACT" moodCode="EVN">
  <entryRelationship typeCode="SUBJ" contextConductionInd="true">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Problemobservationeddiagnosis.negationInd}"/>
  </entryRelationship>
</act>
```

#### Problem Concern Act (Abschlussdiagnosen) (Problemconcernacteddiagnoses)

Template: `1.2.276.0.76.10.4048` @ `2016-06-22T00:00:00`

Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnosen ggf. mit ICD10-Kodes

Sequenznummer wird weggelassen bei ungeordneten/gleichwertigen Diagnosen ohne führende Diagnose; zur Andeutung einer führenden Diagnose wird die Sequenznummer "1" verwendet (maxim…

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Führende Abschlussdiagnose? / Sequenznummer | `abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer` | `Problemconcernacteddiagnoses.sequenceNumber` | sequenceNumber (`INT.POS`) | Mapped |

#### Lateralität (Laterality)

Template: `1.2.276.0.76.10.90026` @ `2017-02-13T00:00:00`

Qualifier für Lateralität, zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Lateralität | `abschlussdiagnosen.abschlussdiagnose.lateralitat` | `Laterality.value` | value (`CV`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["abschlussdiagnosen.abschlussdiagnose.lateralitat"]`; it writes **Lateralität** to `"Laterality.value"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "abschlussdiagnosen.abschlussdiagnose.lateralitat": {
      "target": "Laterality.value",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "6 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<qualifier code='20228-3']="{Laterality.value}"/>
```

### Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)

#### Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)

Template: `1.2.276.0.76.10.3056` @ `2015-01-10T00:00:00`

Weiteres Procedere / Therapieempfehlung / Weiterbehandler Section

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Procedere | `weiteres_procedere_therapieempfehlung_weiterbehandler.procedere` | `Eddisposition.text` | text (`SD.TEXT`) | Mapped |

#### Weiterbehandlung Verlegung (Referralto)

Template: `1.2.276.0.76.10.4067` @ `2025-12-01T00:00:00`

Weiterbehandlung Verlegung des Patienten

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Aufnehmende Fachabteilung | `administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung` | `Referralto.act.participant.participantRole.code` | code (`CE`) | Transform |

In `cda-mapping.json`, review the rule stored at `fields["administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung"]`; it writes **Aufnehmende Fachabteilung** to `"Referralto.act.participant.participantRole.code"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung": {
      "target": "Referralto.act.participant.participantRole.code",
      "transform": {
        "type": "enum",
        "select": "raw",
        "map": "39 configured values; see cda-mapping.json"
      }
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<act classCode="ACT" moodCode="INT">
  <participant typeCode="DST" contextControlCode="OP">
    <participantRole classCode="SDLOC">
      <code code="{Referralto.act.participant.participantRole.code}"/>
    </participantRole>
  </participant>
</act>
```

### Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)

#### Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)

Template: `1.2.276.0.76.10.3057` @ `2015-03-30T00:00:00`

Zusatzmodule Section (weitere Dokumentation)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Notfallanamnese des Patienten | `notfallanamnese.notfallanamnese_des_patienten` | `Additionalmodulessection.text` | text (`SD.TEXT`) | Mapped |

### Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen)

#### Zeitpunkt Entscheidung zur Verlegung / Entlassung (zeitpunkt_entscheidung_zur_verlegung__entlassung)

Template: `1.2.276.0.76.3.1.195.10.75` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Der Zeitpunkt, zu dem die Entscheidung zur stationären Verlegung oder ambulanten Entlassung festgelegt wurden.

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt Entscheidung zur Verlegung / Entlassung | `administrative_verlegungsentlassungsinformationen.zeitpunkt_entscheidung_zur_verlegung_entlassung` | `zeitpunkt_entscheidung_zur_verlegung__entlassung.value` | value (`TS`) | Mapped |

#### Zeitpunkt Patient verlegungs- / entlassungsfähig (zeitpunkt_patient_verlegungs__entlassungsfahig)

Template: `1.2.276.0.76.3.1.195.10.76` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Zeitpunkt, zu dem die Behandlung in der Notaufnahme beendet ist und die Befundung/Therapie/deren Dokumentation abgeschlo…

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt Patient verlegungs- / entlassungsfähig | `administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig` | `zeitpunkt_patient_verlegungs__entlassungsfahig.value` | value (`TS`) | Mapped |

#### Zeitpunkt Patient verlegt / entlassen nach (zeitpunkt_patient_verlegt__entlassen_nach)

Template: `1.2.276.0.76.3.1.195.10.77` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wann wurde der Patient verlegt oder entlassen?

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt Patient verlegt / entlassen nach | `administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach` | `zeitpunkt_patient_verlegt__entlassen_nach.value` | value (`TS`) | Mapped |

#### Zeit bis zum Export (zeit_bis_zum_export)

Template: `1.2.276.0.76.3.1.195.10.85` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Zeit [in vollen Stunden] vom Beginn der Vorstellung bis zum Export-Zeitpunkt aus dem Primärsystem; Bei mehr als 28 Tagen…

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeit bis zum Export | `dokumentationsinformationen.berechnete_zeitintervalle.zeit_bis_zum_export` | `zeit_bis_zum_export.value` | value (`PQ`) | Mapped |

#### Name des EDIS (name_des_edis)

Template: `1.2.276.0.76.3.1.195.10.86` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Name der lokal verwendeten Software zur primären Datenerfassung (EDIS, emergency department information system); wenn ke…

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Name des EDIS | `dokumentationsinformationen.datenbereitstellung.name_des_edis` | `name_des_edis.value` | value (`ST`) | Mapped |

#### Version des EDIS (version_des_edis)

Template: `1.2.276.0.76.3.1.195.10.87` @ `2024-05-24T00:00:00`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Versionsnummer und/oder Bezeichnung (nach Herstellerangaben) des EDIS (ggf. KIS)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Version des EDIS | `dokumentationsinformationen.datenbereitstellung.version_des_edis` | `version_des_edis.value` | value (`ST`) | Mapped |

## Accepted structural rules

These rules create or coordinate CDA occurrences; they are configuration, not XML edits.

- `repeat-by-discriminator-pupilsize-value`: Create one discriminated CDA occurrence for each present branch: `vitalparameter.pupillenweite.pupillenweite_rechts` → `{Pupilsize_right.value}`; `vitalparameter.pupillenweite.pupillenweite_links` → `{Pupilsize_left.value}`.

- `repeat-by-discriminator-pupilreaction-value`: Create one discriminated CDA occurrence for each present branch: `vitalparameter.pupillenreaktion.pupillenreaktion_rechts` → `{Pupilreaction_right.value}`; `vitalparameter.pupillenreaktion.pupillenreaktion_links` → `{Pupilreaction_left.value}`.

- `for-each-vitalparameter`: Create one `VitalSignsSection.entry` occurrence for every `vitalparameter` occurrence.

- `for-each-diagnostik-wildcard-diagnostik`: Create one `Relevantdiagnostictestsorlaboratorydata.section.entry@20251201@1642301` occurrence for every `diagnostik.wildcard_diagnostik` occurrence.

- `for-each-masnahmen-medikamentose-therapie`: Create one `medikamentose-therapie.entry` occurrence for every `masnahmen.medikamentose_therapie` occurrence.

- `for-each-masnahmen-wildcard-therapie`: Create one `Patientcarenarrative.section.entry@20251201@1642304` occurrence for every `masnahmen.wildcard_therapie` occurrence.

- `for-each-abschlussdiagnosen-abschlussdiagnose`: Create one `Problemconcernacteddiagnoses.entryRelationship` occurrence for every `abschlussdiagnosen.abschlussdiagnose` occurrence.

- `repeat-by-example-discriminator-allergyintoleranceobservation-negationind`: Create one discriminated CDA occurrence for each present branch: `klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie` → `{Allergyintoleranceobservation_antibiotikaallergie.negationInd}`; `klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie` → `{Allergyintoleranceobservation_kontrastmittelallergie.negationInd}`. Merge a branch with an existing occurrence when their coded discriminators are equal.

## Accepted required-CDA completion

General rule: an active required nullable leaf without a mapped value receives `nullFlavor="NI"`. A real mapped value always takes precedence. Mandatory (`M`) values cannot use this rule.

The following reviewed targets use a more specific default:

| CDA template value | Default | Reason |
|---|---|---|
| Problem Observation (Abschlussdiagnose) → low `{Problemobservationeddiagnosis.low}` | `nullFlavor="UNK"` | The transaction contains no diagnosis-onset datapoint; the required onset therefore exists with an unknown value. |

No CDA values are explicitly delegated to site configuration.

### Configuration still required

The generated proposal cannot yet construct every active mandatory CDA slot. Supply each value through a reviewed mapping, site value, structural constant, or target default that the compiled target legally permits:

- mandatory CDA element hl7:confidentialityCode [1.2.276.0.76.10.90007@2012-12-12T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:languageCode [1.2.276.0.76.10.90008@2012-03-11T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:name [1.2.276.0.76.10.90010@2011-12-19T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:name [1.2.276.0.76.10.90011@2011-12-19T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low [1.2.276.0.76.10.2036@2016-06-01T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:act/hl7:statusCode [1.2.276.0.76.10.4039@2015-03-03T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:act/hl7:effectiveTime/hl7:low [1.2.276.0.76.10.4065@2015-03-27T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:observation/hl7:statusCode [1.2.276.0.76.10.4066@2015-09-18T00:00:00] has no fixed, mapped, site, system, child, or default value
- required CDA attribute @moodCode on hl7:substanceAdministration [1.2.276.0.76.3.1.195.10.67@2023-12-03T00:00:00] has no fixed, mapped, site, system, or default value
- required CDA attribute @moodCode on hl7:substanceAdministration [2.16.840.1.113883.10.21.4.6@2023-01-30T09:36:00] has no fixed, mapped, site, system, or default value
- mandatory CDA element hl7:substanceAdministration/hl7:statusCode [2.16.840.1.113883.10.21.4.6@2023-01-30T09:36:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:act/hl7:statusCode [1.2.276.0.76.10.4048@2016-06-22T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:observation/hl7:code [1.2.276.0.76.10.4049@2017-02-13T00:00:00] has no fixed, mapped, site, system, child, or default value
- mandatory CDA element hl7:act/hl7:code [1.2.276.0.76.10.4067@2025-12-01T00:00:00] has no fixed, mapped, site, system, child, or default value

# Datapoint analysis

## Postleitzahl [20123]

`patient.anschrift.postleitzahl`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`CDArecordTargetnnar.recordTarget`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDArecordTargetnnar.recordTarget` | `POCD_MT000040.RecordTarget` | CONTEXT | CTX[20119] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Patienten ID [3]

`patient.identifikatoren.patienten_id`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`CDArecordTargetnnar.recordTarget`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `PatientIdentifier.id` | `II` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `PatientIdentifier.id` | `II` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Name [21579]

`hauptkostentrager.kostentrager.name`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`hauptkostentrager.name` `[ON]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by an exact source/ART-DECOR description inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `hauptkostentrager.name` | `ON` | MEDIUM | CTX[21578] → ARTDECOR_DESC(hauptkostentrager.name) | 93 | SELECTED |
| `hauptkostentrager.name` | `ON` | MEDIUM | CTX[21578] → ARTDECOR_ROLE(name) | 74 | alternative |
| `HeaderParticipantKostentraeger.scopingOrganization` | `POCD_MT000040.Organization` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC | 85 | evidence only |
| `HeaderParticipantKostentraeger.scopingOrganization` | `POCD_MT000040.Organization` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 63 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21579`
- Bridge: `CTX[21578] → ARTDECOR_DESC(hauptkostentrager.name)`
- Template: `hauptkostentrager` — `1.2.276.0.76.3.1.195.10.4` @ `2024-08-09T10:35:24`
- Element: `hl7:name` — `2.16.840.1.113883.2.6.60.3.9.1632161`
- CDA path: `hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name`
- CDA datatype: `ON`
- Warnings: selected by an exact source/ART-DECOR description inside the mapped container

## Identifikation [21582]

`hauptkostentrager.versicherungsverhaltnis.identifikation`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id` `[II]`

**Reason:**

An ART-DECOR static association identifies a CDA/RIM base slot, which resolves uniquely in the mapped target context.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id` | `II` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.AssociatedEntity.hl7:id) | 79 | SELECTED |
| `HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id` | `II` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.AssociatedEntity.hl7:id) | 79 | evidence only |
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id` | `II` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.AssociatedEntity.hl7:id) | 57 | evidence only |
| `HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id` | `II` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.AssociatedEntity.hl7:id) | 57 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21582`
- Bridge: `originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.AssociatedEntity.hl7:id)`
- Via concept: `2.16.840.1.113883.2.6.60.12.2.358` — Identifikation
- Template: `hauptkostentrager` — `1.2.276.0.76.3.1.195.10.4` @ `2024-08-09T10:35:24`
- Element: `hl7:id` — ``
- CDA path: `hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:id`
- CDA datatype: `II`

## Aufnahmezeitpunkt [58]

`administrative_aufnahmeinformationen.aufnahmezeitpunkt`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

Candidate evidence exists, but none is safe enough to become an executable mapping automatically.

**Gap:** `semantic:no_association` — reopens with: `CDAEncompassingEncounter.low`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:SPEC → inherit^-1 → TA_VERSION | 35 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Fallnummer [20094]

`administrative_aufnahmeinformationen.fallnummer`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.id_2` `[II]`

**Reason:**

A formal template association connects the datapoint or one of its formal origins to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.id_2` | `II` | STRONG | originalId → TA | 97 | SELECTED |
| `CDAEncompassingEncounter.id_2` | `II` | STRONG | originalId → STATIC_ASSOC | 97 | alternative |
| `CDAEncompassingEncounter.id_2` | `II` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `CDAEncompassingEncounter.id_2` | `II` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20094`
- Bridge: `originalId → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.3.20094` — Fallnummer
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:id[2]` — `2.16.840.1.113883.2.6.60.3.9.15588`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:id[2]`
- CDA datatype: `II`

## Episodennummer [20093]

`administrative_aufnahmeinformationen.episodennummer`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.id_1` `[II]`

**Reason:**

A formal template association connects the datapoint or one of its formal origins to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.id_1` | `II` | STRONG | originalId → TA | 97 | SELECTED |
| `CDAEncompassingEncounter.id_1` | `II` | STRONG | originalId → STATIC_ASSOC | 97 | alternative |
| `CDAEncompassingEncounter.id_1` | `II` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `CDAEncompassingEncounter.id_1` | `II` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20093`
- Bridge: `originalId → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.3.20093` — Episodennummer
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:id[1]` — `2.16.840.1.113883.2.6.60.3.9.1558`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:id[1]`
- CDA datatype: `II`

## Zuweisung [22]

`administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Referralfrom.act.participant.participantRole.code` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Referralfrom.act.participant.participantRole.code` | `CE` | MEDIUM | VS(1.2.276.0.76.11.42) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | SELECTED |
| `Referralfrom.act.participant.participantRole.code` | `CE` | WEAK | VS(1.2.276.0.76.11.42) | 55 | alternative |
| `Referralfrom.act.participant.participantRole.code` | `CE` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required,value_set) | 80 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | MEDIUM | relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required,value_set) | 80 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | MEDIUM | relationship:SPEC → TA_VERSION → SCHEMATRON_CONSTRAINT(required,value_set) | 72 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | WEAK | relationship:SPEC → TA_VERSION | 67 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.22`
- Bridge: `VS(1.2.276.0.76.11.42) → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Referralfrom` — `1.2.276.0.76.10.4038` @ `2015-09-18T00:00:00`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.60.3.9.67`
- CDA path: `hl7:act/hl7:participant/hl7:participantRole/hl7:code`
- CDA datatype: `CE`

## Transportmittel [20139]

`administrative_aufnahmeinformationen.transport.transportmittel`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Transportmethod.value` `[CV]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Transportmethod.value` | `CV` | MEDIUM | VS(1.2.276.0.76.11.41) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | SELECTED |
| `Transportmethod.value` | `CV` | WEAK | VS(1.2.276.0.76.11.41) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20139`
- Bridge: `VS(1.2.276.0.76.11.41) → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Transportmethod` — `1.2.276.0.76.10.4037` @ `2015-03-03T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.1631714`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Medizinische Begleitung [20140]

`administrative_aufnahmeinformationen.transport.medizinische_begleitung`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`medizinische-begleitung.code` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `medizinische-begleitung.code` | `CV` | STRONG | VS(1.2.276.0.76.3.1.195.11.2@2024-02-14T11:23:51) → EXACT_CONCEPT_ASSOCIATION | 96 | SELECTED / TRANSFORM |
| `medizinische-begleitung.code` | `CV` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | alternative |
| `medizinische-begleitung.code` | `CV` | MEDIUM | NAME | 85 | alternative |
| `medizinische-begleitung.code` | `CV` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.2) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `medizinische-begleitung.code` | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.2) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20140`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.2@2024-02-14T11:23:51) → EXACT_CONCEPT_ASSOCIATION`
- Template: `medizinische-begleitung` — `1.2.276.0.76.3.1.195.10.12` @ `2024-08-13T12:56:59`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.60.3.9.665`
- CDA path: `hl7:procedure/hl7:code`
- CDA datatype: `CV`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Direkter Arztkontakt [21559]

`ersteinschatzung.direkter_arztkontakt`

**YES · WEAK · INDIRECT · TRANSFORM**

**Selected:**

`direkter_arztkontakt.observation.negationInd` `[BL]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `direkter_arztkontakt.observation.negationInd` | `BL` | WEAK | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 73 | SELECTED / TRANSFORM |
| `direkter_arztkontakt.value` | `CE` | MEDIUM | TERM(305660003) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `direkter_arztkontakt.code` | `CE` | MEDIUM | TERM(FLN-13) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `direkter_arztkontakt.value` | `CE` | WEAK | TERM(305660003) | 35 | evidence only |
| `direkter_arztkontakt.code` | `CE` | WEAK | TERM(FLN-13) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21559`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `direkter_arztkontakt` — `1.2.276.0.76.3.1.195.10.17` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `BL`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the selected target because the evidence is indirect. Verify the generated transform and its value mapping before use.

## Ergebnis der Ersteinschätzung [21746]

`ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`ersteinschatzung.value` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ersteinschatzung.value` | `CE` | STRONG | VS(1.2.276.0.76.3.1.195.11.11@2024-07-22T14:52:50) → EXACT_CONCEPT_ASSOCIATION | 96 | SELECTED / TRANSFORM |
| `ersteinschatzung.value` | `CE` | STRONG | TERM(273887006,75616-3) → VS(1.2.276.0.76.3.1.195.11.11) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `ersteinschatzung.value` | `CE` | MEDIUM | TERM(273887006,75616-3) → VS(1.2.276.0.76.3.1.195.11.11) | 80 | alternative |
| `manchester-triage-system.value` | `CE` | MEDIUM | VS(1.2.276.0.76.11.44) → SCHEMATRON_CONSTRAINT(value_set) | 60 | alternative |
| `emergency-severity-index.value` | `CE` | MEDIUM | VS(1.2.276.0.76.11.45) → SCHEMATRON_CONSTRAINT(value_set) | 60 | alternative |
| `ersteinschatzung.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.11) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `manchester-triage-system.value` | `CE` | WEAK | VS(1.2.276.0.76.11.44) | 55 | alternative |
| `emergency-severity-index.value` | `CE` | WEAK | VS(1.2.276.0.76.11.45) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21746`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.11@2024-07-22T14:52:50) → EXACT_CONCEPT_ASSOCIATION`
- Template: `ersteinschatzung` — `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.649`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Zeitpunkt der Ersteinschätzung [770]

`ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`ersteinschatzung.effectiveTime` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by an exact source/ART-DECOR description inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ersteinschatzung.effectiveTime` | `TS` | MEDIUM | CTX[29249] → ARTDECOR_DESC(ersteinschatzung.effectiveTime) | 93 | SELECTED |
| `ersteinschatzung.effectiveTime` | `TS` | MEDIUM | DESC → SCHEMATRON_CONSTRAINT(required) | 70 | alternative |
| `ersteinschatzung.effectiveTime` | `TS` | WEAK | DESC | 65 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.770`
- Bridge: `CTX[29249] → ARTDECOR_DESC(ersteinschatzung.effectiveTime)`
- Template: `ersteinschatzung` — `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`
- Element: `hl7:effectiveTime` — `2.16.840.1.113883.2.6.60.3.9.646`
- CDA path: `hl7:observation/hl7:effectiveTime`
- CDA datatype: `TS`
- Warnings: selected by an exact source/ART-DECOR description inside the mapped container

## verwendetes Ersteinschätzungssystem [804]

`ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`ersteinschatzung.methodCode` `[CD]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ersteinschatzung.methodCode` | `CD` | STRONG | VS(1.2.276.0.76.3.1.195.11.12@2024-07-22T15:20:32) → EXACT_CONCEPT_ASSOCIATION | 96 | SELECTED / TRANSFORM |
| `ersteinschatzung.methodCode` | `CD` | MEDIUM | CTX[29249] → ARTDECOR_DESC(ersteinschatzung.methodCode) | 93 | alternative |
| `ersteinschatzung.methodCode` | `CD` | MEDIUM | DESC → SCHEMATRON_CONSTRAINT(required,value_set) | 70 | alternative |
| `ersteinschatzung.methodCode` | `CD` | WEAK | DESC | 65 | alternative |
| `ersteinschatzung.methodCode` | `CD` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.12) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `ersteinschatzung.methodCode` | `CD` | WEAK | VS(1.2.276.0.76.3.1.195.11.12) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.804`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.12@2024-07-22T15:20:32) → EXACT_CONCEPT_ASSOCIATION`
- Template: `ersteinschatzung` — `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`
- Element: `hl7:methodCode` — `2.16.840.1.113883.2.6.60.3.9.1632189`
- CDA path: `hl7:observation/hl7:methodCode`
- CDA datatype: `CD`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## MTS-Präsentationsdiagramm [21074]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`mts-prasentationsdiagramm.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-prasentationsdiagramm.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `mts-prasentationsdiagramm.value` | `CE` | STRONG | TERM(SCTPOCC-1269489004) → VS(1.2.276.0.76.3.1.195.11.10) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | MEDIUM | TERM(SCTPOCC-1269489004) → VS(1.2.276.0.76.3.1.195.11.10) | 80 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | MEDIUM | TERM(SCTPOCC-1269489004) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.10) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | WEAK | TERM(SCTPOCC-1269489004) → DT(code) | 60 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.10) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21074`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `mts-prasentationsdiagramm` — `1.2.276.0.76.3.1.195.10.21` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren ROT [21047]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`mts-indikatoren-rot.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-rot.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `mts-indikatoren-rot.value` | `CE` | STRONG | TERM(SCTPOCC-49499008) → VS(1.2.276.0.76.3.1.195.11.13) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `mts-indikatoren-rot.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `mts-indikatoren-rot.value` | `CE` | MEDIUM | TERM(SCTPOCC-49499008) → VS(1.2.276.0.76.3.1.195.11.13) | 80 | alternative |
| `mts-indikatoren-rot.value` | `CE` | MEDIUM | TERM(SCTPOCC-49499008) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `mts-indikatoren-rot.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.13) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `mts-indikatoren-rot.value` | `CE` | WEAK | TERM(SCTPOCC-49499008) → DT(code) | 60 | alternative |
| `mts-indikatoren-rot.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.13) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21047`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `mts-indikatoren-rot` — `1.2.276.0.76.3.1.195.10.22` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren ORANGE [21048]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`mts-indikatoren-orange.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-orange.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `mts-indikatoren-orange.value` | `CE` | STRONG | TERM(SCTPOCC-25876001) → VS(1.2.276.0.76.3.1.195.11.14) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `mts-indikatoren-orange.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `mts-indikatoren-orange.value` | `CE` | MEDIUM | TERM(SCTPOCC-25876001) → VS(1.2.276.0.76.3.1.195.11.14) | 80 | alternative |
| `mts-indikatoren-orange.value` | `CE` | MEDIUM | TERM(SCTPOCC-25876001) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `mts-indikatoren-orange.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.14) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `mts-indikatoren-orange.value` | `CE` | WEAK | TERM(SCTPOCC-25876001) → DT(code) | 60 | alternative |
| `mts-indikatoren-orange.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.14) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21048`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `mts-indikatoren-orange` — `1.2.276.0.76.3.1.195.10.23` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren GELB [21049]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`mts-indikatoren-gelb.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-gelb.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `mts-indikatoren-gelb.value` | `CE` | STRONG | TERM(SCTPOCC-103391001) → VS(1.2.276.0.76.3.1.195.11.15) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | MEDIUM | TERM(SCTPOCC-103391001) → VS(1.2.276.0.76.3.1.195.11.15) | 80 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | MEDIUM | TERM(SCTPOCC-103391001) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.15) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | WEAK | TERM(SCTPOCC-103391001) → DT(code) | 60 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.15) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21049`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `mts-indikatoren-gelb` — `1.2.276.0.76.3.1.195.10.24` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren GRÜN [21050]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`mts-indikatoren-grun.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-grun.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `mts-indikatoren-grun.value` | `CE` | STRONG | TERM(SCTPOCC-394848005) → VS(1.2.276.0.76.3.1.195.11.16) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `mts-indikatoren-grun.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `mts-indikatoren-grun.value` | `CE` | MEDIUM | TERM(SCTPOCC-394848005) → VS(1.2.276.0.76.3.1.195.11.16) | 80 | alternative |
| `mts-indikatoren-grun.value` | `CE` | MEDIUM | TERM(SCTPOCC-394848005) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `mts-indikatoren-grun.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.16) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `mts-indikatoren-grun.value` | `CE` | WEAK | TERM(SCTPOCC-394848005) → DT(code) | 60 | alternative |
| `mts-indikatoren-grun.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.16) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21050`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `mts-indikatoren-grun` — `1.2.276.0.76.3.1.195.10.25` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## ESI-Triage [21073]

`ersteinschatzung.parameter_der_ersteinschatzung.esitriage`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`esi-triage-faktoren.value` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `esi-triage-faktoren.value` | `CE` | STRONG | VS(1.2.276.0.76.3.1.195.11.20@2024-07-22T16:51:10) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `esi-triage-faktoren.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | alternative |
| `esi-triage-faktoren.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `emergency-severity-index.value` | `CE` | MEDIUM | TERM(1255873000) → DT(code) → SCHEMATRON_CONSTRAINT(value_set) | 65 | alternative |
| `emergency-severity-index.value` | `CE` | WEAK | TERM(1255873000) → DT(code) | 60 | alternative |
| `emergency-severity-index.code` | `CD` | MEDIUM | TERM(1255873000) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `emergency-severity-index.code` | `CD` | WEAK | TERM(1255873000) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21073`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.20@2024-07-22T16:51:10) → EXACT_ENUM`
- Template: `esi-triage-faktoren` — `1.2.276.0.76.3.1.195.10.26` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Beschwerden bei Vorstellung (Freitext) [36]

`notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext`

**YES · MEDIUM · MULTIPLE(2) · EXECUTABLE**

**Selected:**

`Problemobservationcedis.originalText` `[ST]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Another actionable target has a comparable score. Warning: selected by an exact source/ART-DECOR description inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationcedis.originalText` | `ST` | MEDIUM | CTX[10034] → ARTDECOR_DESC(Problemobservationcedis.originalText) | 93 | SELECTED |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | MEDIUM | NAME | 85 | alternative |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | MEDIUM | CTX[10034] → CDA_ROLE(section_narrative) | 82 | alternative |
| `Problemobservationcedis.originalText` | `ST` | WEAK | DESC | 65 | alternative |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | MEDIUM | relationship:SPEC → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.36`
- Bridge: `CTX[10034] → ARTDECOR_DESC(Problemobservationcedis.originalText)`
- Template: `Problemobservationcedis` — `1.2.276.0.76.10.4040` @ `2015-09-18T00:00:00`
- Element: `hl7:originalText` — `2.16.840.1.113883.2.6.60.3.9.1556`
- CDA path: `hl7:observation/hl7:value/hl7:originalText`
- CDA datatype: `ST`
- Warnings: selected by an exact source/ART-DECOR description inside the mapped container

**Suggested action:**

Compare the similarly ranked candidates before accepting the selection.

## Beschwerden bei Vorstellung (CEDIS) [805]

`notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Problemobservationcedis.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationcedis.value` | `CE` | MEDIUM | VS(1.2.276.0.76.11.61) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | SELECTED |
| `Problemobservationcedis.value` | `CE` | WEAK | VS(1.2.276.0.76.11.61) | 55 | alternative |
| `Problemobservationcedis.value` | `CE` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required,value_set) | 48 | evidence only |
| `Problemobservationcedis.value` | `CE` | MEDIUM | relationship:SPEC → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required,value_set) | 48 | evidence only |
| `Problemobservationcedis.value` | `CE` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `Problemobservationcedis.value` | `CE` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |
| `Problemobservationcedis.value` | `CE` | MEDIUM | relationship:SPEC → inherit^-1 → TA_VERSION → SCHEMATRON_CONSTRAINT(required,value_set) | 40 | evidence only |
| `Problemobservationcedis.value` | `CE` | WEAK | relationship:SPEC → inherit^-1 → TA_VERSION | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.805`
- Bridge: `VS(1.2.276.0.76.11.61) → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Problemobservationcedis` — `1.2.276.0.76.10.4040` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.252`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Ereigniseintritt [20101]

`notfallanamnese.beschwerden_bei_vorstellung.ereigniseintritt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Chiefcomplaintreasonforvisit.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Chiefcomplaintreasonforvisit.section` | `POCD_MT000040.Section` | CONTEXT | CTX[10034] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zeitpunkt erster Arztkontakt [37]

`notfallanamnese.zeitpunkt_erster_arztkontakt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`HistoryofPresentIllnessSection.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDADocumentationOf.documentationOf.serviceEvent.performer.time.low` | `TS` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `CDADocumentationOf.documentationOf.serviceEvent.performer.time.low` | `TS` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Notfallanamnese des Patienten [40]

`notfallanamnese.notfallanamnese_des_patienten`

**YES · STRONG · INDIRECT · EXECUTABLE**

**Selected:**

`Additionalmodulessection.text` `[SD.TEXT]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Additionalmodulessection.text` | `SD.TEXT` | STRONG | originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `Additionalmodulessection.text` | `SD.TEXT` | MEDIUM | originalId → inherit^-1 → TA | 85 | alternative |
| `HistoryofPresentIllnessSection.text` | `SD.TEXT` | STRONG | originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.Section.hl7:text) → SCHEMATRON_CONSTRAINT(required) | 84 | alternative |
| `HistoryofPresentIllnessSection.text` | `SD.TEXT` | MEDIUM | CTX[10030] → CDA_ROLE(section_narrative) | 82 | alternative |
| `HistoryofPresentIllnessSection.text` | `SD.TEXT` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.Section.hl7:text) | 79 | alternative |
| `Additionalmodulessection.text` | `SD.TEXT` | STRONG | originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.Section.hl7:text) → SCHEMATRON_CONSTRAINT(required) | 84 | evidence only |
| `Additionalmodulessection.text` | `SD.TEXT` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.Section.hl7:text) | 79 | evidence only |
| `Additionalmodulessection.text` | `SD.TEXT` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.40`
- Bridge: `originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required)`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.40`
- Template: `Additionalmodulessection` — `1.2.276.0.76.10.3057` @ `2015-03-30T00:00:00`
- Element: `hl7:text` — `2.16.840.1.113883.2.6.60.3.9.212`
- CDA path: `hl7:section/hl7:text`
- CDA datatype: `SD.TEXT`

## Unfallursache [20156]

`notfallanamnese.unfallanamnese.unfallursache`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`unfallursache-kinetik.observation.value` `[CD]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfallursache-kinetik.observation.value` | `CD` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `unfallursache-kinetik.observation.value` | `CD` | STRONG | TERM(69543-7) → VS(1.2.276.0.76.3.1.195.11.6) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `unfallursache-kinetik.observation.value` | `CD` | MEDIUM | NAME | 85 | alternative |
| `unfallursache-kinetik.observation.value` | `CD` | MEDIUM | TERM(69543-7) → VS(1.2.276.0.76.3.1.195.11.6) | 80 | alternative |
| `unfallursache-kinetik.observation.value` | `CD` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.6) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `unfallursache-kinetik.observation.value` | `CD` | WEAK | VS(1.2.276.0.76.3.1.195.11.6) | 55 | alternative |
| `unfallursache-kinetik.code` | `CD` | MEDIUM | TERM(69543-7) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `unfallursache-kinetik.code` | `CD` | WEAK | TERM(69543-7) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20156`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `unfallursache-kinetik` — `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163134`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CD`

## Fahrzeug des Verunfallten [20278]

`notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`unfall-anamnese.act.participant.participantRole.code` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfall-anamnese.act.participant.participantRole.code` | `CE` | STRONG | VS(1.2.276.0.76.3.1.195.11.8@2024-06-26T13:29:30) → EXACT_CONCEPT_ASSOCIATION | 96 | SELECTED / TRANSFORM |
| `unfall-anamnese.act.participant.participantRole.code` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.8) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `unfall-anamnese.act.participant.participantRole.code` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.8) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20278`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.8@2024-06-26T13:29:30) → EXACT_CONCEPT_ASSOCIATION`
- Template: `unfall-anamnese` — `1.2.276.0.76.3.1.195.10.28` @ `2024-08-13T18:34:56`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.60.3.9.375`
- CDA path: `hl7:act/hl7:participant/hl7:participantRole/hl7:code`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Unfallkinetik [20280]

`notfallanamnese.unfallanamnese.unfallkinetik`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | STRONG | VS(1.2.276.0.76.3.1.195.11.5@2024-02-14T12:41:43) → EXACT_CONCEPT_ASSOCIATION | 96 | SELECTED / TRANSFORM |
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | MEDIUM | CTX[20154] → ARTDECOR_DESC(unfallursache-kinetik.qualifier_name_code_67496-0) → CDA_DESCENDANT | 90 | alternative |
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | STRONG | TERM(67496-0) → VS(1.2.276.0.76.3.1.195.11.5) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | alternative |
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | MEDIUM | TERM(67496-0) → VS(1.2.276.0.76.3.1.195.11.5) | 80 | alternative |
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.5) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.5) | 55 | alternative |
| `unfallursache-kinetik.name` | `CV` | MEDIUM | TERM(67496-0) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `unfallursache-kinetik.name` | `CV` | WEAK | TERM(67496-0) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20280`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.5@2024-02-14T12:41:43) → EXACT_CONCEPT_ASSOCIATION`
- Template: `unfallursache-kinetik` — `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163140`
- CDA path: `hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='67496-0']/hl7:value`
- CDA datatype: `CV`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Unfallart TraumaRegister [21748]

`notfallanamnese.unfallanamnese.unfallart_trauma_register`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`unfallart-traumaregister.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfallart-traumaregister.value` | `CE` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `unfallart-traumaregister.value` | `CE` | MEDIUM | NAME | 85 | alternative |
| `unfallart-traumaregister.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.18) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `unfallart-traumaregister.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.18) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21748`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `unfallart-traumaregister` — `1.2.276.0.76.3.1.195.10.30` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163134`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? [20365]

`notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`substanz-einfluss.value` `[CE]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `substanz-einfluss.value` | `CE` | STRONG | TERM(88068-2) → VS(1.2.276.0.76.3.1.195.11.23) → SCHEMATRON_CONSTRAINT(required,value_set) | 85 | SELECTED |
| `substanz-einfluss.value` | `CE` | MEDIUM | TERM(88068-2) → VS(1.2.276.0.76.3.1.195.11.23) | 80 | alternative |
| `substanz-einfluss.value` | `CE` | MEDIUM | TERM(88068-2) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `substanz-einfluss.value` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.23) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `substanz-einfluss.value` | `CE` | WEAK | TERM(88068-2) → DT(code) | 60 | alternative |
| `substanz-einfluss.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.23) | 55 | alternative |
| `substanz-einfluss.code` | `CD` | MEDIUM | TERM(88068-2) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `substanz-einfluss.code` | `CD` | WEAK | TERM(88068-2) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20365`
- Bridge: `TERM(88068-2) → VS(1.2.276.0.76.3.1.195.11.23) → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `substanz-einfluss` — `1.2.276.0.76.3.1.195.10.32` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163134`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Allergie Beschreibung [35]

`klinische_basisdaten_patient.allergien.allergie_beschreibung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`AllergienUnvertraeglichkeiten.text` `[SD.TEXT]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected from the compiled CDA section narrative role.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `AllergienUnvertraeglichkeiten.text` | `SD.TEXT` | MEDIUM | CTX[10009] → CDA_ROLE(section_narrative) | 82 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.35`
- Bridge: `CTX[10009] → CDA_ROLE(section_narrative)`
- Template: `AllergienUnvertraeglichkeiten` — `1.2.276.0.76.10.3051` @ `2015-03-26T00:00:00`
- Element: `hl7:text` — `2.16.840.1.113883.2.6.60.3.9.163`
- CDA path: `hl7:section/hl7:text`
- CDA datatype: `SD.TEXT`
- Warnings: selected from the compiled CDA section narrative role

## Agens [21593]

`klinische_basisdaten_patient.allergien.agens`

**YES · STRONG · INDIRECT · TRANSFORM**

**Selected:**

`Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code` `[CE]` with declarative transform

**Reason:**

The source declares an unconstrained coded domain. Inside the mapped container, one unique coded target binds an OTH exception and exposes originalText, so unmatched wording has a formal target representation without inventing a terminology crosswalk.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code` | `CE` | STRONG | CTX[10009] → OPEN_CODED_DOMAIN(2.16.840.1.113883.2.6.60.4.2.3.6124.20170805115646.0) → VS(1.2.276.0.76.11.52@2015-11-17T00:00:00:OTH) → CODED_ORIGINAL_TEXT(Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code.originalText) → UNIQUE_DESCENDANT | 97 | SELECTED / TRANSFORM |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21593`
- Bridge: `CTX[10009] → OPEN_CODED_DOMAIN(2.16.840.1.113883.2.6.60.4.2.3.6124.20170805115646.0) → VS(1.2.276.0.76.11.52@2015-11-17T00:00:00:OTH) → CODED_ORIGINAL_TEXT(Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code.originalText) → UNIQUE_DESCENDANT`
- Template: `Allergyintoleranceobservation` — `1.2.276.0.76.10.4066` @ `2015-09-18T00:00:00`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.60.3.9.620`
- CDA path: `hl7:observation/hl7:participant/hl7:participantRole/hl7:playingEntity/hl7:code`
- CDA datatype: `CE`
- Warnings: unrecognized source codes use the target ValueSet's explicit OTH null-flavor exception and preserve their wording in originalText

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Antibiotikaallergie [21598]

`klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie`

**YES · STRONG · INDIRECT · TRANSFORM**

**Selected:**

`Allergyintoleranceobservation_antibiotikaallergie.negationInd` `[—]` with declarative transform

**Structural rule:**

`repeat-by-example-discriminator-allergyintoleranceobservation-negationind`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `repeat-by-example-discriminator-allergyintoleranceobservation-negationind`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Allergyintoleranceobservation_antibiotikaallergie.negationInd` | `—` | STRONG | CTX[29219] → ART_DECOR_EXAMPLE(1.2.276.0.76.10.4066@2015-09-18T00:00:00) → BOOLEAN_NEGATION(example=false) → VS(1.2.276.0.76.11.52@2015-11-17T00:00:00) → DISCRIMINATOR(A07AA@2.16.840.1.113883.6.73) | 98 | SELECTED / TRANSFORM |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21598`
- Bridge: `CTX[29219] → ART_DECOR_EXAMPLE(1.2.276.0.76.10.4066@2015-09-18T00:00:00) → BOOLEAN_NEGATION(example=false) → VS(1.2.276.0.76.11.52@2015-11-17T00:00:00) → DISCRIMINATOR(A07AA@2.16.840.1.113883.6.73)`
- Warnings: the source boolean is represented as inverse CDA negation; the target discriminator comes from the exact neutral example

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Kontrastmittelallergie [21599]

`klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie`

**YES · STRONG · INDIRECT · TRANSFORM**

**Selected:**

`Allergyintoleranceobservation_kontrastmittelallergie.negationInd` `[—]` with declarative transform

**Structural rule:**

`repeat-by-example-discriminator-allergyintoleranceobservation-negationind`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `repeat-by-example-discriminator-allergyintoleranceobservation-negationind`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Allergyintoleranceobservation_kontrastmittelallergie.negationInd` | `—` | STRONG | CTX[29219] → ART_DECOR_EXAMPLE(1.2.276.0.76.10.4066@2015-09-18T00:00:00) → BOOLEAN_NEGATION(example=true) → VS(1.2.276.0.76.11.52@2015-11-17T00:00:00) → DISCRIMINATOR(V08@2.16.840.1.113883.6.73) | 98 | SELECTED / TRANSFORM |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21599`
- Bridge: `CTX[29219] → ART_DECOR_EXAMPLE(1.2.276.0.76.10.4066@2015-09-18T00:00:00) → BOOLEAN_NEGATION(example=true) → VS(1.2.276.0.76.11.52@2015-11-17T00:00:00) → DISCRIMINATOR(V08@2.16.840.1.113883.6.73)`
- Warnings: the source boolean is represented as inverse CDA negation; the target discriminator comes from the exact neutral example

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Schwangerschaft [5]

`klinische_basisdaten_patient.schwangerschaft`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`Pregnancystatus.value` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pregnancystatus.value` | `CV` | STRONG | VS(1.2.276.0.76.11.46@2018-08-22T15:28:25) → EXACT_CONCEPT_ASSOCIATION | 96 | SELECTED / TRANSFORM |
| `Pregnancystatus.observation.negationInd` | `BL` | WEAK | SEMANTIC_STATE → TRANSFORM(enum→negationInd) | 72 | alternative |
| `Pregnancystatus.value` | `CV` | MEDIUM | VS(1.2.276.0.76.11.46) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `Pregnancystatus.value` | `CV` | WEAK | VS(1.2.276.0.76.11.46) | 55 | alternative |
| `Pregnancystatus.value` | `CV` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required,value_set) | 48 | evidence only |
| `Pregnancystatus.value` | `CV` | MEDIUM | relationship:SPEC → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required,value_set) | 48 | evidence only |
| `Pregnancystatus.value` | `CV` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `Pregnancystatus.value` | `CV` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.5`
- Bridge: `VS(1.2.276.0.76.11.46@2018-08-22T15:28:25) → EXACT_CONCEPT_ASSOCIATION`
- Template: `Pregnancystatus` — `1.2.276.0.76.10.4043` @ `2015-03-03T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.264`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Tetanusschutz [6]

`klinische_basisdaten_patient.tetanusschutz`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Clostridiumtetaniimmunization.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Clostridiumtetaniimmunization.negationInd` | `bl` | MEDIUM | SEMANTIC_STATE → TRANSFORM(enum→negationInd) | 98 | SELECTED / TRANSFORM |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | STRONG | originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 90 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | STRONG | originalId → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 90 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | MEDIUM | originalId → inherit^-1 → TA | 85 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC | 85 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | STRONG | originalId → inherit^-1 → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | 82 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | MEDIUM | originalId → inherit^-1 → TA_VERSION | 77 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.6`
- Bridge: `SEMANTIC_STATE → TRANSFORM(enum→negationInd)`
- Template: `Clostridiumtetaniimmunization` — `1.2.276.0.76.10.4044` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.268`
- CDA path: `hl7:substanceAdministration/@negationInd`
- CDA datatype: `bl`
- Warnings: generated from dataset state labels and CDA negation semantics

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Zeitpunkt [20366]

`vitalparameter.zeitpunkt`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`vitalparametercontainer.effectiveTime` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected at the occurrence boundary established by the generated for_each rule.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `vitalparametercontainer.effectiveTime` | `TS` | STRONG | CTX[10006] → FOR_EACH(vitalparameter) → NEAREST_WRITABLE_DESCENDANT | 94 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20366`
- Bridge: `CTX[10006] → FOR_EACH(vitalparameter) → NEAREST_WRITABLE_DESCENDANT`
- Template: `vitalparametercontainer` — `1.2.276.0.76.3.1.195.10.95` @ `2026-04-27T15:39:06`
- Element: `hl7:effectiveTime` — `2.16.840.1.113883.2.6.60.3.9.1642361`
- CDA path: `hl7:organizer/hl7:effectiveTime`
- CDA datatype: `TS`
- Warnings: selected at the occurrence boundary established by the generated for_each rule

## Atemfrequenz [9]

`vitalparameter.atemfrequenz`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`RespiratoryRate.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `RespiratoryRate.value` | `PQ` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `RespiratoryRate.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `RespiratoryRate.value` | `PQ` | MEDIUM | TERM(9279-1) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `RespiratoryRate.value` | `PQ` | WEAK | TERM(9279-1) → DT(quantity) | 60 | alternative |
| `RespiratoryRate.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `RespiratoryRate.value` | `PQ` | MEDIUM | relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `RespiratoryRate.value` | `PQ` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `RespiratoryRate.value` | `PQ` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.9`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `RespiratoryRate` — `1.2.276.0.76.10.4030` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.14`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Pulsoximetrische Sauerstoffsättigung [10]

`vitalparameter.pulsoximetrische_sauerstoffsattigung`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`pulsoximetrische_sauerstoffsattigung.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `pulsoximetrische_sauerstoffsattigung.value` | `PQ` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `pulsoximetrische_sauerstoffsattigung.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `pulsoximetrische_sauerstoffsattigung.value` | `PQ` | MEDIUM | TERM(103228002,59408-5) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `pulsoximetrische_sauerstoffsattigung.value` | `PQ` | WEAK | TERM(103228002,59408-5) → DT(quantity) | 60 | alternative |
| `pulsoximetrische_sauerstoffsattigung.code` | `CD` | MEDIUM | TERM(103228002) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `pulsoximetrische_sauerstoffsattigung.translation` | `CE` | MEDIUM | TERM(59408-5) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `pulsoximetrische_sauerstoffsattigung.code` | `CD` | WEAK | TERM(103228002) | 35 | evidence only |
| `pulsoximetrische_sauerstoffsattigung.translation` | `CE` | WEAK | TERM(59408-5) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.10`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `pulsoximetrische_sauerstoffsattigung` — `1.2.276.0.76.3.1.195.10.35` @ `2024-08-14T10:13:56`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Systolischer Blutdruck [11]

`vitalparameter.blutdruck.systolischer_blutdruck`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Systolicbloodpressure.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Systolicbloodpressure.value` | `PQ` | MEDIUM | TERM(8480-6) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | SELECTED |
| `Systolicbloodpressure.value` | `PQ` | WEAK | TERM(8480-6) → DT(quantity) | 60 | alternative |
| `Systolicbloodpressure.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `Systolicbloodpressure.value` | `PQ` | MEDIUM | relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `Systolicbloodpressure.value` | `PQ` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `Systolicbloodpressure.value` | `PQ` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |
| `Systolicbloodpressure.value` | `PQ` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |
| `Systolicbloodpressure.value` | `PQ` | MEDIUM | relationship:SPEC → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.11`
- Bridge: `TERM(8480-6) → DT(quantity) → SCHEMATRON_CONSTRAINT(required)`
- Template: `Systolicbloodpressure` — `1.2.276.0.76.10.4032` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.8`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Diastolischer Blutdruck [20143]

`vitalparameter.blutdruck.diastolischer_blutdruck`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`blutdruck-diastolisch.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `blutdruck-diastolisch.value` | `PQ` | MEDIUM | TERM(271650006,8462-4) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | SELECTED |
| `blutdruck-diastolisch.value` | `PQ` | WEAK | TERM(271650006,8462-4) → DT(quantity) | 60 | alternative |
| `blutdruck-diastolisch.code` | `CD` | MEDIUM | TERM(271650006) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `blutdruck-diastolisch.translation` | `CE` | MEDIUM | TERM(8462-4) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `blutdruck-diastolisch.code` | `CD` | WEAK | TERM(271650006) | 35 | evidence only |
| `blutdruck-diastolisch.translation` | `CE` | WEAK | TERM(8462-4) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20143`
- Bridge: `TERM(271650006,8462-4) → DT(quantity) → SCHEMATRON_CONSTRAINT(required)`
- Template: `blutdruck-diastolisch` — `1.2.276.0.76.3.1.195.10.38` @ `2024-08-14T10:13:56`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.77.9.888`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Herzfrequenz [12]

`vitalparameter.herzfrequenz`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`HeartRate.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `HeartRate.value` | `PQ` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `HeartRate.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `HeartRate.value` | `PQ` | MEDIUM | TERM(8867-4) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `HeartRate.value` | `PQ` | WEAK | TERM(8867-4) → DT(quantity) | 60 | alternative |
| `HeartRate.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `HeartRate.value` | `PQ` | MEDIUM | relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `HeartRate.value` | `PQ` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `HeartRate.value` | `PQ` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.12`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `HeartRate` — `1.2.276.0.76.10.4033` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.9`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Pulsfrequenz [20282]

`vitalparameter.puls.pulsfrequenz`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`pulsfrequenz.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `pulsfrequenz.value` | `PQ` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `pulsfrequenz.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `HeartRate.value` | `PQ` | MEDIUM | TERM(8867-4) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `pulsfrequenz.value` | `PQ` | MEDIUM | TERM(78564009) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `HeartRate.value` | `PQ` | WEAK | TERM(8867-4) → DT(quantity) | 60 | alternative |
| `pulsfrequenz.value` | `PQ` | WEAK | TERM(78564009) → DT(quantity) | 60 | alternative |
| `HeartRate.code` | `CE` | MEDIUM | TERM(8867-4) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `pulsfrequenz.code` | `CD` | MEDIUM | TERM(78564009) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20282`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `pulsfrequenz` — `1.2.276.0.76.3.1.195.10.40` @ `2024-08-14T10:13:56`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.77.9.888`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Pupillenweite (rechts) [18]

`vitalparameter.pupillenweite.pupillenweite_rechts`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Pupilsize.value` `[CV]`

**Structural rule:**

`repeat-by-discriminator-pupilsize-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `repeat-by-discriminator-pupilsize-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilsize.value` | `CV` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `Pupilsize.value` | `CV` | MEDIUM | NAME | 85 | alternative |
| `Pupilsize.value` | `CV` | MEDIUM | VS(1.2.276.0.76.11.49) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | evidence only |
| `Pupilsize.value` | `CV` | WEAK | VS(1.2.276.0.76.11.49) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.18`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Pupilsize` — `1.2.276.0.76.10.4046` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.343`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Pupillenweite (links) [20018]

`vitalparameter.pupillenweite.pupillenweite_links`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Pupilsize.value` `[CV]`

**Structural rule:**

`repeat-by-discriminator-pupilsize-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `repeat-by-discriminator-pupilsize-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilsize.value` | `CV` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `Pupilsize.value` | `CV` | MEDIUM | NAME | 85 | alternative |
| `Pupilsize.value` | `CV` | MEDIUM | VS(1.2.276.0.76.11.49) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | evidence only |
| `Pupilsize.value` | `CV` | WEAK | VS(1.2.276.0.76.11.49) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20018`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Pupilsize` — `1.2.276.0.76.10.4046` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.343`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Pupillenreaktion (rechts) [19]

`vitalparameter.pupillenreaktion.pupillenreaktion_rechts`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Pupilreaction.value` `[CV]`

**Structural rule:**

`repeat-by-discriminator-pupilreaction-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `repeat-by-discriminator-pupilreaction-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilreaction.value` | `CV` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `Pupilreaction.value` | `CV` | MEDIUM | NAME | 85 | alternative |
| `Pupilreaction.value` | `CV` | MEDIUM | VS(1.2.276.0.76.11.50) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | evidence only |
| `Pupilreaction.value` | `CV` | WEAK | VS(1.2.276.0.76.11.50) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.19`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Pupilreaction` — `1.2.276.0.76.10.4047` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.356`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Pupillenreaktion (links) [20019]

`vitalparameter.pupillenreaktion.pupillenreaktion_links`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Pupilreaction.value` `[CV]`

**Structural rule:**

`repeat-by-discriminator-pupilreaction-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `repeat-by-discriminator-pupilreaction-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilreaction.value` | `CV` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required,value_set) | 90 | SELECTED |
| `Pupilreaction.value` | `CV` | MEDIUM | NAME | 85 | alternative |
| `Pupilreaction.value` | `CV` | MEDIUM | VS(1.2.276.0.76.11.50) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | evidence only |
| `Pupilreaction.value` | `CV` | WEAK | VS(1.2.276.0.76.11.50) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20019`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Pupilreaction` — `1.2.276.0.76.10.4047` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.356`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Körperkerntemperatur [20050]

`vitalparameter.korperkerntemperatur.korperkerntemperatur`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`BodyTemperatureCore.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `BodyTemperatureCore.value` | `PQ` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `BodyTemperatureCore.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `BodyTemperatureCore.value` | `PQ` | MEDIUM | TERM(8329-5) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `BodyTemperatureCore.value` | `PQ` | WEAK | TERM(8329-5) → DT(quantity) | 60 | alternative |
| `BodyTemperatureCore.code` | `CE` | MEDIUM | TERM(8329-5) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `BodyTemperatureCore.code` | `CE` | WEAK | TERM(8329-5) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20050`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `BodyTemperatureCore` — `1.2.276.0.76.10.4035` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.13`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## GCS Augenöffnen [13]

`scores.glasgow_coma_scale_gcs.gcs_augenoffnen`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint or one of its formal origins to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | STRONG | originalId → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | STRONG | originalId → STATIC_ASSOC | 97 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | STRONG | originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | STRONG | originalId → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | MEDIUM | TERM/TEMPLATE → TRANSFORM(ordinal→score) | 76 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.13`
- Bridge: `originalId → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.13` — GCS Augenöffnen
- Template: `GlasgowComaScale` — `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.17`
- CDA path: `hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation/hl7:value`
- CDA datatype: `PQ`

## GCS verbale Antwort [14]

`scores.glasgow_coma_scale_gcs.gcs_verbale_antwort`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint or one of its formal origins to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | STRONG | originalId → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | STRONG | originalId → STATIC_ASSOC | 97 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | STRONG | originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | STRONG | originalId → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | MEDIUM | TERM/TEMPLATE → TRANSFORM(ordinal→score) | 76 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.14`
- Bridge: `originalId → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.14` — GCS verbale Antwort
- Template: `GlasgowComaScale` — `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.18`
- CDA path: `hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation/hl7:value`
- CDA datatype: `PQ`

## GCS motorische Antwort [16]

`scores.glasgow_coma_scale_gcs.gcs_motorische_antwort`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint or one of its formal origins to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | STRONG | originalId → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | STRONG | originalId → STATIC_ASSOC | 97 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | STRONG | originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | STRONG | originalId → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 90 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | MEDIUM | TERM/TEMPLATE → TRANSFORM(ordinal→score) | 76 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.16`
- Bridge: `originalId → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.16` — GCS motorische Antwort
- Template: `GlasgowComaScale` — `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19`
- CDA path: `hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation/hl7:value`
- CDA datatype: `PQ`

## GCS Summe [17]

`scores.glasgow_coma_scale_gcs.gcs_summe`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`GlasgowComaScale.observation.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint or one of its formal origins to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.value` | `PQ` | STRONG | originalId → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.value` | `PQ` | STRONG | originalId → STATIC_ASSOC | 97 | alternative |
| `GlasgowComaScale.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.value` | `PQ` | MEDIUM | originalId → inherit^-1 → STATIC_ASSOC | 85 | alternative |
| `GlasgowComaScale.observation.value` | `PQ` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `GlasgowComaScale.observation.value` | `PQ` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |
| `GlasgowComaScale.observation.value` | `PQ` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `GlasgowComaScale.observation.value` | `PQ` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.17`
- Bridge: `originalId → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.17` — GCS Summe
- Template: `GlasgowComaScale` — `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.16`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## modified Rankin Skala Score [114]

`scores.modified_rankin_skala_score`

**YES · WEAK · INDIRECT · TRANSFORM**

**Selected:**

`Modifiedrankinscale.observation.value` `[PQ]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Modifiedrankinscale.observation.value` | `PQ` | WEAK | TERM/TEMPLATE → TRANSFORM(ordinal→score) | 76 | SELECTED / TRANSFORM |
| `Modifiedrankinscale.observation.value` | `PQ` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |
| `Modifiedrankinscale.observation.value` | `PQ` | MEDIUM | relationship:SPEC → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |
| `Modifiedrankinscale.observation.value` | `PQ` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `Modifiedrankinscale.observation.value` | `PQ` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |
| `Modifiedrankinscale.code` | `CE` | MEDIUM | TERM(75859-9) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `Modifiedrankinscale.code` | `CE` | WEAK | TERM(75859-9) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.114`
- Bridge: `TERM/TEMPLATE → TRANSFORM(ordinal→score)`
- Template: `Modifiedrankinscale` — `1.2.276.0.76.10.4045` @ `2015-03-03T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.296`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`
- Warnings: ordinal score derived from leading option ranks or explicit rank/score wording

**Suggested action:**

Verify the selected target because the evidence is indirect. Verify the generated transform and its value mapping before use.

## Numerischen Rating Skala [21]

`scores.schmerzmessung.numerischen_rating_skala`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Painseverity.observation.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Painseverity.observation.value` | `PQ` | MEDIUM | TERM(72514-3) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | SELECTED |
| `Painseverity.observation.value` | `PQ` | WEAK | TERM(72514-3) → DT(quantity) | 60 | alternative |
| `Painseverity.observation.value` | `PQ` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 60 | evidence only |
| `Painseverity.observation.value` | `PQ` | MEDIUM | relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 60 | evidence only |
| `Painseverity.observation.value` | `PQ` | WEAK | relationship:SPEC → TA | 55 | evidence only |
| `Painseverity.observation.value` | `PQ` | WEAK | relationship:SPEC → STATIC_ASSOC | 55 | evidence only |
| `Painseverity.observation.value` | `PQ` | MEDIUM | relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |
| `Painseverity.observation.value` | `PQ` | MEDIUM | relationship:SPEC → inherit^-1 → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 48 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21`
- Bridge: `TERM(72514-3) → DT(quantity) → SCHEMATRON_CONSTRAINT(required)`
- Template: `Painseverity` — `1.2.276.0.76.10.4036` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.23`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Untersuchungsregion [20726]

`diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Relevantdiagnostictestsorlaboratorydata.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Relevantdiagnostictestsorlaboratorydata.section` | `POCD_MT000040.Section` | CONTEXT | CTX[20727] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Untersuchungsregion [20729]

`diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Relevantdiagnostictestsorlaboratorydata.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Relevantdiagnostictestsorlaboratorydata.section` | `POCD_MT000040.Section` | CONTEXT | CTX[20728] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Mikrobiologie angefordert [21764]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`mikrobiologie_angefordert.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mikrobiologie_angefordert.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `mikrobiologie_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `mikrobiologie_angefordert.negationInd` | `bl` | WEAK | TERM(19851009) → DT(boolean) | 60 | alternative |
| `mikrobiologie_angefordert.code` | `CE` | MEDIUM | TERM(19851009) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `mikrobiologie_angefordert.code` | `CE` | WEAK | TERM(19851009) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21764`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `mikrobiologie_angefordert` — `1.2.276.0.76.3.1.195.10.47` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## BGA angefordert [29264]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`bga_angefordert.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `bga_angefordert.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `bga_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `bga_angefordert.negationInd` | `bl` | WEAK | TERM(278297009) → DT(boolean) | 60 | alternative |
| `bga_angefordert.code` | `CE` | MEDIUM | TERM(278297009) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `bga_angefordert.code` | `CE` | WEAK | TERM(278297009) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29264`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `bga_angefordert` — `1.2.276.0.76.3.1.195.10.48` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## EKG angefordert [29265]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`ekg_angefordert.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ekg_angefordert.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `ekg_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `ekg_angefordert.negationInd` | `bl` | WEAK | TERM(29303009) → DT(boolean) | 60 | alternative |
| `ekg_angefordert.code` | `CE` | MEDIUM | TERM(29303009) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `Twelveleadelectrocardiogram.observation` | `POCD_MT000040.Observation` | MEDIUM | relationship:ADAPT → relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 35 | evidence only |
| `Twelveleadelectrocardiogram.observation` | `POCD_MT000040.Observation` | MEDIUM | relationship:ADAPT → relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 35 | evidence only |
| `ekg_angefordert.code` | `CE` | WEAK | TERM(29303009) | 35 | evidence only |
| `Twelveleadelectrocardiogram.observation` | `POCD_MT000040.Observation` | WEAK | relationship:ADAPT → relationship:SPEC → TA | 30 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29265`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `ekg_angefordert` — `1.2.276.0.76.3.1.195.10.49` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Sonographie angefordert [29266]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`sonographie_angefordert.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `sonographie_angefordert.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `sonographie_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `sonographie_angefordert.negationInd` | `bl` | WEAK | TERM(16310003) → DT(boolean) | 60 | alternative |
| `sonographie_angefordert.code` | `CE` | MEDIUM | TERM(16310003) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `sonographie_angefordert.code` | `CE` | WEAK | TERM(16310003) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29266`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `sonographie_angefordert` — `1.2.276.0.76.3.1.195.10.50` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Röntgenthorax angefordert [29267]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`rontgenthorax_angefordert.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `rontgenthorax_angefordert.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `rontgenthorax_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `rontgenthorax_angefordert.negationInd` | `bl` | WEAK | TERM(415232002) → DT(boolean) | 60 | alternative |
| `rontgenthorax_angefordert.code` | `CE` | MEDIUM | TERM(415232002) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `rontgenthorax_angefordert.code` | `CE` | WEAK | TERM(415232002) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29267`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `rontgenthorax_angefordert` — `1.2.276.0.76.3.1.195.10.51` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Röntgen-Thorax durchgeführt [21964]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Plainchestxray.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Plainchestxray.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `Plainchestxray.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `rontgenthorax_angefordert.negationInd` | `bl` | WEAK | TERM(415232002) → DT(boolean) | 60 | alternative |
| `rontgenthorax_angefordert.code` | `CE` | MEDIUM | TERM(415232002) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `rontgenthorax_angefordert.code` | `CE` | WEAK | TERM(415232002) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21964`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `Plainchestxray` — `1.2.276.0.76.10.4050` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.361`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Röntgen-Becken durchgeführt [21966]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Pelvisxray.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pelvisxray.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `Pelvisxray.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21966`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `Pelvisxray` — `1.2.276.0.76.10.4052` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.397`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Röntgen-Wirbelsäule durchgeführt [21968]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Radiographyofspine.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Radiographyofspine.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21968`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `Radiographyofspine` — `1.2.276.0.76.10.4051` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.379`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## CT Kopf durchgeführt [21972]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Computedtomographyofentirehead.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Computedtomographyofentirehead.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `Computedtomographyofentirehead.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21972`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `Computedtomographyofentirehead` — `1.2.276.0.76.10.4055` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.451`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## CT HWS durchgeführt [21974]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`ct_hws_durchgefuhrt.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct_hws_durchgefuhrt.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `ct_hws_durchgefuhrt.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `ct_hws_durchgefuhrt.negationInd` | `bl` | WEAK | TERM(241578008) → DT(boolean) | 60 | alternative |
| `ct_hws_durchgefuhrt.code` | `CE` | MEDIUM | TERM(241578008) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `ct_hws_durchgefuhrt.code` | `CE` | WEAK | TERM(241578008) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21974`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `ct_hws_durchgefuhrt` — `1.2.276.0.76.3.1.195.10.57` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## CT Thorax durchgeführt [21976]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`ct_thorax_durchgefuhrt.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct_thorax_durchgefuhrt.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `ct_thorax_durchgefuhrt.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `ct_thorax_durchgefuhrt.negationInd` | `bl` | WEAK | TERM(169069000) → DT(boolean) | 60 | alternative |
| `ct_thorax_durchgefuhrt.code` | `CE` | MEDIUM | TERM(169069000) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `ct_thorax_durchgefuhrt.code` | `CE` | WEAK | TERM(169069000) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21976`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `ct_thorax_durchgefuhrt` — `1.2.276.0.76.3.1.195.10.58` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## CT Abdomen durchgeführt [21978]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`ct_abdomen_durchgefuhrt.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct_abdomen_durchgefuhrt.negationInd` | `bl` | MEDIUM | SEMANTIC_ACT → TRANSFORM(boolean→negationInd) | 97 | SELECTED / TRANSFORM |
| `ct_abdomen_durchgefuhrt.negationInd` | `bl` | MEDIUM | NAME | 85 | alternative |
| `ct_abdomen_durchgefuhrt.negationInd` | `bl` | WEAK | TERM(169070004) → DT(boolean) | 60 | alternative |
| `ct_abdomen_durchgefuhrt.code` | `CE` | MEDIUM | TERM(169070004) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `ct_abdomen_durchgefuhrt.code` | `CE` | WEAK | TERM(169070004) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21978`
- Bridge: `SEMANTIC_ACT → TRANSFORM(boolean→negationInd)`
- Template: `ct_abdomen_durchgefuhrt` — `1.2.276.0.76.3.1.195.10.59` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: coded act presence represented by inverse CDA negationInd

**Suggested action:**

Verify the generated transform and its value mapping before use.

## CT- bzw. MR- bzw. DS-Angiographie [22056]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`ct-mr-ds-angiographie.value` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct-mr-ds-angiographie.value` | `CV` | STRONG | VS(1.2.276.0.76.3.1.195.11.24@2024-07-22T16:51:10) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `ct-mr-ds-angiographie.value` | `CV` | MEDIUM | TERM(FLN-122) → DT(code) → SCHEMATRON_CONSTRAINT(required,value_set) | 65 | alternative |
| `ct-mr-ds-angiographie.value` | `CV` | WEAK | TERM(FLN-122) → DT(code) | 60 | alternative |
| `ct-mr-ds-angiographie.code` | `CE` | MEDIUM | TERM(FLN-122) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `ct-mr-ds-angiographie.code` | `CE` | WEAK | TERM(FLN-122) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.22056`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.24@2024-07-22T16:51:10) → EXACT_ENUM`
- Template: `ct-mr-ds-angiographie` — `1.2.276.0.76.3.1.195.10.91` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Zeitpunkt [29603]

`diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`WildcardDiagnostik.effectiveTime_not_xsi_type` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.effectiveTime_not_xsi_type` | `TS` | STRONG | CTX[29608] → ARTDECOR_CHOICE(atomic) | 95 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29603`
- Bridge: `CTX[29608] → ARTDECOR_CHOICE(atomic)`
- Template: `WildcardDiagnostik` — `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`
- Element: `hl7:effectiveTime[not(@xsi:type)]` — `2.16.840.1.113883.2.6.60.3.9.1642329`
- CDA path: `hl7:observation/hl7:effectiveTime[not(@xsi:type)]`
- CDA datatype: `TS`

## Zeitraum [29609]

`diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width` | `PQ` | STRONG | CTX[29608] → ARTDECOR_CHOICE(complex) → HL7_DATATYPE_DESCENDANT | 94 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29609`
- Bridge: `CTX[29608] → ARTDECOR_CHOICE(complex) → HL7_DATATYPE_DESCENDANT`
- Template: `WildcardDiagnostik` — `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`
- Element: `hl7:width` — ``
- CDA path: `hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:width`
- CDA datatype: `PQ`

## Code [29604]

`diagnostik.wildcard_diagnostik.code`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`WildcardDiagnostik.code` `[CD]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by a unique explicit ART-DECOR leaf role inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.code` | `CD` | MEDIUM | CTX[29601] → ARTDECOR_ROLE(code) | 74 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29604`
- Bridge: `CTX[29601] → ARTDECOR_ROLE(code)`
- Template: `WildcardDiagnostik` — `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.60.3.9.608`
- CDA path: `hl7:observation/hl7:code`
- CDA datatype: `CD`
- Warnings: selected by a unique explicit ART-DECOR leaf role inside the mapped container

## Wert [29605]

`diagnostik.wildcard_diagnostik.wert`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`WildcardDiagnostik.value_as_ST` `[ST]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by a unique explicit ART-DECOR leaf role inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.value_as_ST` | `ST` | MEDIUM | CTX[29601] → ARTDECOR_ROLE(wert) | 74 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29605`
- Bridge: `CTX[29601] → ARTDECOR_ROLE(wert)`
- Template: `WildcardDiagnostik` — `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.613`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `ST`
- Warnings: selected by a unique explicit ART-DECOR leaf role inside the mapped container

## Definitorischer Link [29606]

`diagnostik.wildcard_diagnostik.definitorischer_link`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`WildcardDiagnostik.observation.reference.externalDocument.text.reference` `[URL]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by an exact source/ART-DECOR description inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation.reference.externalDocument.text.reference` | `URL` | MEDIUM | CTX[29601] → ARTDECOR_DESC(WildcardDiagnostik.externalDocument) → CDA_DESCENDANT | 90 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29606`
- Bridge: `CTX[29601] → ARTDECOR_DESC(WildcardDiagnostik.externalDocument) → CDA_DESCENDANT`
- Template: `WildcardDiagnostik` — `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`
- Element: `hl7:reference` — `2.16.840.1.113883.2.6.60.3.9.1642334`
- CDA path: `hl7:observation/hl7:reference/hl7:externalDocument/hl7:text/hl7:reference`
- CDA datatype: `URL`
- Warnings: selected by an exact source/ART-DECOR description inside the mapped container

## Isolation [7]

`masnahmen.isolation.isolation`

**YES · WEAK · INDIRECT · TRANSFORM**

**Selected:**

`isolation.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `isolation.negationInd` | `bl` | WEAK | SEMANTIC_STATE → TRANSFORM(enum→negationInd) | 72 | SELECTED / TRANSFORM |
| `isolation.code` | `CE` | MEDIUM | TERM(40174006) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `isolation.code` | `CE` | WEAK | TERM(40174006) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.7`
- Bridge: `SEMANTIC_STATE → TRANSFORM(enum→negationInd)`
- Template: `isolation` — `1.2.276.0.76.3.1.195.10.65` @ `2024-08-14T18:08:14`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.4068.1`
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`
- Warnings: generated from dataset state labels and CDA negation semantics

**Suggested action:**

Verify the selected target because the evidence is indirect. Verify the generated transform and its value mapping before use.

## Isolation Begründung [8]

`masnahmen.isolation.isolation_begrundung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Isolationindication.value` `[CV]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Isolationindication.value` | `CV` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.25) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | SELECTED |
| `Isolationindication.value` | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.25) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.8`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.25) → SCHEMATRON_CONSTRAINT(required,value_set)`
- Template: `Isolationindication` — `1.2.276.0.76.3.1.195.10.66` @ `2024-08-14T18:14:44`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.4069.1`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Zeitpunkt [29614]

`masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitpunkt`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`WildcardTherapie.effectiveTime_not_xsi_type` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.effectiveTime_not_xsi_type` | `TS` | STRONG | CTX[29613] → ARTDECOR_CHOICE(atomic) | 95 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29614`
- Bridge: `CTX[29613] → ARTDECOR_CHOICE(atomic)`
- Template: `WildcardTherapie` — `1.2.276.0.76.3.1.195.10.90` @ `2024-08-18T21:50:30`
- Element: `hl7:effectiveTime[not(@xsi:type)]` — `2.16.840.1.113883.2.6.60.3.9.1642321`
- CDA path: `hl7:procedure/hl7:effectiveTime[not(@xsi:type)]`
- CDA datatype: `TS`

## Zeitraum [29615]

`masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitraum`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width` | `PQ` | STRONG | CTX[29613] → ARTDECOR_CHOICE(complex) → HL7_DATATYPE_DESCENDANT | 94 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29615`
- Bridge: `CTX[29613] → ARTDECOR_CHOICE(complex) → HL7_DATATYPE_DESCENDANT`
- Template: `WildcardTherapie` — `1.2.276.0.76.3.1.195.10.90` @ `2024-08-18T21:50:30`
- Element: `hl7:width` — ``
- CDA path: `hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:width`
- CDA datatype: `PQ`

## Code [29612]

`masnahmen.wildcard_therapie.code`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`WildcardTherapie.code` `[CD]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by a unique explicit ART-DECOR leaf role inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.code` | `CD` | MEDIUM | CTX[29610] → ARTDECOR_ROLE(code) | 74 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29612`
- Bridge: `CTX[29610] → ARTDECOR_ROLE(code)`
- Template: `WildcardTherapie` — `1.2.276.0.76.3.1.195.10.90` @ `2024-08-18T21:50:30`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.60.3.9.608`
- CDA path: `hl7:procedure/hl7:code`
- CDA datatype: `CD`
- Warnings: selected by a unique explicit ART-DECOR leaf role inside the mapped container

## Definitorischer Link [29611]

`masnahmen.wildcard_therapie.definitorischer_link`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`WildcardTherapie.procedure.reference.externalDocument.text.reference` `[URL]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected by an exact source/ART-DECOR description inside the mapped container.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.procedure.reference.externalDocument.text.reference` | `URL` | MEDIUM | CTX[29610] → ARTDECOR_DESC(WildcardTherapie.externalDocument) → CDA_DESCENDANT | 90 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29611`
- Bridge: `CTX[29610] → ARTDECOR_DESC(WildcardTherapie.externalDocument) → CDA_DESCENDANT`
- Template: `WildcardTherapie` — `1.2.276.0.76.3.1.195.10.90` @ `2024-08-18T21:50:30`
- Element: `hl7:reference` — `2.16.840.1.113883.2.6.60.3.9.1642326`
- CDA path: `hl7:procedure/hl7:reference/hl7:externalDocument/hl7:text/hl7:reference`
- CDA datatype: `URL`
- Warnings: selected by an exact source/ART-DECOR description inside the mapped container

## Freitext Abschlussdiagnose [42]

`abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Eddiagnosis.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationeddiagnosis.originalText` | `ST` | WEAK | relationship:SPEC → TA_VERSION | 47 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## ICD-10 [44]

`abschlussdiagnosen.abschlussdiagnose.icd10`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Eddiagnosis.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationeddiagnosis.observation.value` | `CD` | MEDIUM | relationship:SPEC → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | 72 | evidence only |
| `Problemobservationeddiagnosis.observation.value` | `CD` | WEAK | relationship:SPEC → TA_VERSION | 67 | evidence only |
| `Problemobservationeddiagnosis.observation.value` | `CD` | MEDIUM | relationship:SPEC → relationship:EQUIV → inherit^-1 → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | 15 | evidence only |
| `Problemobservationeddiagnosis.observation.value` | `CD` | WEAK | relationship:SPEC → relationship:EQUIV → inherit^-1 → TA_VERSION | 10 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## ICD-10 Sekundärdiagnose [29508]

`abschlussdiagnosen.abschlussdiagnose.icd10_sekundardiagnose`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Eddiagnosis.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationeddiagnosis.observation.value` | `CD` | MEDIUM | relationship:ADAPT → relationship:SPEC → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | 27 | evidence only |
| `Problemobservationeddiagnosis.observation.value` | `CD` | WEAK | relationship:ADAPT → relationship:SPEC → TA_VERSION | 22 | evidence only |
| `Problemobservationeddiagnosis.observation.value` | `CD` | MEDIUM | relationship:ADAPT → relationship:SPEC → relationship:EQUIV → inherit^-1 → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | -10 | evidence only |
| `Problemobservationeddiagnosis.observation.value` | `CD` | WEAK | relationship:ADAPT → relationship:SPEC → relationship:EQUIV → inherit^-1 → TA_VERSION | -15 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Zusatzkennzeichen [20024]

`abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Certainty.value` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Certainty.value` | `CV` | MEDIUM | LOGICAL(V/A/Z/G) → VS(1.2.276.0.76.11.121) → TRANSFORM(certainty) | 105 | SELECTED / TRANSFORM |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20024`
- Bridge: `LOGICAL(V/A/Z/G) → VS(1.2.276.0.76.11.121) → TRANSFORM(certainty)`
- Template: `Certainty` — `1.2.276.0.76.10.90027` @ `2017-03-02T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.77.9.300`
- CDA path: `hl7:qualifier[hl7:name/@code='8']/hl7:value`
- CDA datatype: `CV`
- Warnings: diagnosis certainty is normalized into the formal CDA qualifier vocabulary

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Führende Abschlussdiagnose? / Sequenznummer [20023]

`abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Problemconcernacteddiagnoses.sequenceNumber` `[INT.POS]`

**Reason:**

An explicit ART-DECOR implementation XPath identifies this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemconcernacteddiagnoses.sequenceNumber` | `INT.POS` | STRONG | XPATH(1.2.276.0.76.10.4048) | 125 | SELECTED |
| `Problemconcernacteddiagnoses.sequenceNumber` | `INT.POS` | STRONG | TA | 100 | alternative |
| `Problemconcernacteddiagnoses.sequenceNumber` | `INT.POS` | STRONG | STATIC_ASSOC | 100 | alternative |
| `Problemconcernacteddiagnoses.sequenceNumber` | `INT.POS` | MEDIUM | TA_VERSION | 92 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.2.20023`
- Bridge: `XPATH(1.2.276.0.76.10.4048)`
- Template: `Problemconcernacteddiagnoses` — `1.2.276.0.76.10.4048` @ `2016-06-22T00:00:00`
- Element: `hl7:sequenceNumber` — `2.16.840.1.113883.2.6.60.3.9.1263`
- CDA path: `hl7:act/hl7:entryRelationship/hl7:sequenceNumber`
- CDA datatype: `INT.POS`

## Procedere [46]

`weiteres_procedere_therapieempfehlung_weiterbehandler.procedere`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Eddisposition.text` `[SD.TEXT]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. Warning: selected from the compiled CDA section narrative role.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Eddisposition.text` | `SD.TEXT` | MEDIUM | CTX[10014] → CDA_ROLE(section_narrative) | 82 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.46`
- Bridge: `CTX[10014] → CDA_ROLE(section_narrative)`
- Template: `Eddisposition` — `1.2.276.0.76.10.3056` @ `2015-01-10T00:00:00`
- Element: `hl7:text` — `2.16.840.1.113883.2.6.60.3.9.202`
- CDA path: `hl7:section/hl7:text`
- CDA datatype: `SD.TEXT`
- Warnings: selected from the compiled CDA section narrative role

## Typ Verlegung [20021]

`administrative_verlegungsentlassungsinformationen.typ_verlegung`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

Candidate evidence exists, but none is safe enough to become an executable mapping automatically.

**Gap:** `terminology:closure` — reopens with: `valueset:1.2.276.0.76.11.53@2015-11-17T00:00:00`, `codesystem:1.2.276.0.76.3.1.195.5.53@2019-12-30T00:00:00`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Referralto.act.code` | `CE` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `Referralto.act.code` | `CE` | MEDIUM | relationship:SPEC → STATIC_ASSOC → SCHEMATRON_CONSTRAINT(required) | 80 | evidence only |
| `Referralto.act.code` | `CE` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `Referralto.act.code` | `CE` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |
| `Referralto.act.code` | `CE` | MEDIUM | relationship:SPEC → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | 72 | evidence only |
| `Referralto.act.code` | `CE` | WEAK | relationship:SPEC → TA_VERSION | 67 | evidence only |
| `Referralto.act.code` | `CE` | MEDIUM | VS(1.2.276.0.76.11.53) → SCHEMATRON_CONSTRAINT(required) | 60 | evidence only |
| `Referralto.act.code` | `CE` | WEAK | VS(1.2.276.0.76.11.53) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Typ Entlassung [20022]

`administrative_verlegungsentlassungsinformationen.typ_entlassung`

**YES · WEAK · INDIRECT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.dischargeDispositionCode` `[CV]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. The evidence is indirect, so the selection should be reviewed.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | VS(1.2.276.0.76.11.56) | 55 | SELECTED |
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | relationship:SPEC → TA_VERSION | 67 | evidence only |
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |
| `CDAEncompassingEncounter.dischargeDispositionCode` | `CV` | WEAK | relationship:SPEC → inherit^-1 → TA_VERSION | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20022`
- Bridge: `VS(1.2.276.0.76.11.56)`
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:dischargeDispositionCode` — `2.16.840.1.113883.2.6.60.3.9.224`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode`
- CDA datatype: `CV`

**Suggested action:**

Verify the selected target because the evidence is indirect.

## Zeitpunkt Entscheidung zur Verlegung / Entlassung [20237]

`administrative_verlegungsentlassungsinformationen.zeitpunkt_entscheidung_zur_verlegung_entlassung`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`zeitpunkt_entscheidung_zur_verlegung__entlassung.value` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `zeitpunkt_entscheidung_zur_verlegung__entlassung.value` | `TS` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `zeitpunkt_entscheidung_zur_verlegung__entlassung.value` | `TS` | MEDIUM | NAME | 85 | alternative |
| `zeitpunkt_entscheidung_zur_verlegung__entlassung.code` | `CE` | MEDIUM | TERM(FLN-124) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `zeitpunkt_entscheidung_zur_verlegung__entlassung.code` | `CE` | WEAK | TERM(FLN-124) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20237`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `zeitpunkt_entscheidung_zur_verlegung__entlassung` — `1.2.276.0.76.3.1.195.10.75` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `TS`

## Zeitpunkt Patient verlegungs- / entlassungsfähig [20814]

`administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`zeitpunkt_patient_verlegungs__entlassungsfahig.value` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `zeitpunkt_patient_verlegungs__entlassungsfahig.value` | `TS` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `zeitpunkt_patient_verlegungs__entlassungsfahig.value` | `TS` | MEDIUM | NAME | 85 | alternative |
| `zeitpunkt_patient_verlegungs__entlassungsfahig.code` | `CE` | MEDIUM | TERM(FLN-125) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `zeitpunkt_patient_verlegungs__entlassungsfahig.code` | `CE` | WEAK | TERM(FLN-125) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20814`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `zeitpunkt_patient_verlegungs__entlassungsfahig` — `1.2.276.0.76.3.1.195.10.76` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `TS`

## Zeitpunkt Patient verlegt / entlassen nach [882]

`administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`zeitpunkt_patient_verlegt__entlassen_nach.value` `[TS]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `zeitpunkt_patient_verlegt__entlassen_nach.value` | `TS` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `zeitpunkt_patient_verlegt__entlassen_nach.value` | `TS` | MEDIUM | NAME | 85 | alternative |
| `CDAEncompassingEncounter.high` | `TS.DATE.MIN` | WEAK | relationship:SPEC → TA | 75 | evidence only |
| `CDAEncompassingEncounter.high` | `TS.DATE.MIN` | WEAK | relationship:SPEC → STATIC_ASSOC | 75 | evidence only |
| `CDAEncompassingEncounter.high` | `TS.DATE.MIN` | WEAK | relationship:SPEC → TA_VERSION | 67 | evidence only |
| `CDAEncompassingEncounter.high` | `TS.DATE.MIN` | WEAK | relationship:SPEC → inherit^-1 → TA | 43 | evidence only |
| `CDAEncompassingEncounter.high` | `TS.DATE.MIN` | WEAK | relationship:SPEC → inherit^-1 → STATIC_ASSOC | 43 | evidence only |
| `zeitpunkt_patient_verlegt__entlassen_nach.code` | `CE` | MEDIUM | TERM(FLN-126) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.882`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `zeitpunkt_patient_verlegt__entlassen_nach` — `1.2.276.0.76.3.1.195.10.77` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `TS`

## Zeitpunkt Beginn patientenbezogene Dokumentation [21744]

`dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

Candidate evidence exists, but none is safe enough to become an executable mapping automatically.

**Gap:** `semantic:no_association` — reopens with: `CDAEncompassingEncounter.low`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:ADAPT → relationship:SPEC → inherit^-1 → TA | 18 | evidence only |
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:ADAPT → relationship:SPEC → inherit^-1 → STATIC_ASSOC | 18 | evidence only |
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:ADAPT → relationship:SPEC → inherit^-1 → TA_VERSION | 10 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Zeit bis zum Export [21742]

`dokumentationsinformationen.berechnete_zeitintervalle.zeit_bis_zum_export`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`zeit_bis_zum_export.value` `[PQ]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `zeit_bis_zum_export.value` | `PQ` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `zeit_bis_zum_export.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `zeit_bis_zum_export.value` | `PQ` | MEDIUM | TERM(FLN-134) → DT(quantity) → SCHEMATRON_CONSTRAINT(required) | 65 | alternative |
| `zeit_bis_zum_export.value` | `PQ` | WEAK | TERM(FLN-134) → DT(quantity) | 60 | alternative |
| `zeit_bis_zum_export.code` | `CE` | MEDIUM | TERM(FLN-134) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `zeit_bis_zum_export.code` | `CE` | WEAK | TERM(FLN-134) | 35 | evidence only |
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:ADAPT → relationship:ADAPT → relationship:SPEC → inherit^-1 → TA | -7 | evidence only |
| `CDAEncompassingEncounter.low` | `TS.DATE.MIN` | WEAK | relationship:ADAPT → relationship:ADAPT → relationship:SPEC → inherit^-1 → STATIC_ASSOC | -7 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21742`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `zeit_bis_zum_export` — `1.2.276.0.76.3.1.195.10.85` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Name des EDIS [21738]

`dokumentationsinformationen.datenbereitstellung.name_des_edis`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`name_des_edis.value` `[ST]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `name_des_edis.value` | `ST` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `name_des_edis.value` | `ST` | MEDIUM | NAME | 85 | alternative |
| `name_des_edis.code` | `CE` | MEDIUM | TERM(FLN-135) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `name_des_edis.code` | `CE` | WEAK | TERM(FLN-135) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21738`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `name_des_edis` — `1.2.276.0.76.3.1.195.10.86` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `ST`

## Version des EDIS [21740]

`dokumentationsinformationen.datenbereitstellung.version_des_edis`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`version_des_edis.value` `[ST]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `version_des_edis.value` | `ST` | STRONG | NAME → SCHEMATRON_CONSTRAINT(required) | 90 | SELECTED |
| `version_des_edis.value` | `ST` | MEDIUM | NAME | 85 | alternative |
| `version_des_edis.code` | `CE` | MEDIUM | TERM(FLN-136) → SCHEMATRON_CONSTRAINT(required) | 40 | evidence only |
| `version_des_edis.code` | `CE` | WEAK | TERM(FLN-136) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21740`
- Bridge: `NAME → SCHEMATRON_CONSTRAINT(required)`
- Template: `version_des_edis` — `1.2.276.0.76.3.1.195.10.87` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `ST`

## Arzneimittel-Name [488]

`masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[487] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Arzneimittel-Code [489]

`masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[487] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Darreichungsform [492]

`masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[483] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wirkstoff-Name [485]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wirkstoff-Code [486]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Arzneilich wirksamer Bestandteil? [519]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wirkstärke [493]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Chargennummer [738]

`masnahmen.medikamentose_therapie.medikation.medikament.chargennummer`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[483] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## (Start)zeitpunkt der Anwendung [497]

`masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`

**YES · STRONG · EXACT · REQUIRES RULE**

**Selected:**

`UVSubordinateadministration.effectiveTime_value_or_nullFlavor` `[TS]`

**Reason:**

The best CDA target is supported by mapping evidence, but it is shared with another dataset field and therefore needs an explicit rule before execution.

**Gap:** `semantic:shared_target` — reopens with: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`, `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`, `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`, `UVSubordinateadministration.effectiveTime_value_or_nullFlavor`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `UVSubordinateadministration.effectiveTime_value_or_nullFlavor` | `TS` | STRONG | CTX[496] → ARTDECOR_CHOICE(atomic) | 95 | SELECTED / REQUIRES RULE |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.3.1937.777.75.2.1.497`
- Bridge: `CTX[496] → ARTDECOR_CHOICE(atomic)`
- Template: `UVSubordinateadministration` — `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`
- Element: `hl7:effectiveTime[@value or @nullFlavor]` — `2.16.840.1.113883.3.1937.777.15.9.9114`
- CDA path: `hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor]`
- CDA datatype: `TS`

**Suggested action:**

Define an explicit merge/repetition rule before enabling this mapping.

## Stoppzeitpunkt der Anwendung [498]

`masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`

**YES · STRONG · EXACT · REQUIRES RULE**

**Selected:**

`UVSubordinateadministration.effectiveTime_value_or_nullFlavor` `[TS]`

**Reason:**

The best CDA target is supported by mapping evidence, but it is shared with another dataset field and therefore needs an explicit rule before execution.

**Gap:** `semantic:shared_target` — reopens with: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`, `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`, `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`, `UVSubordinateadministration.effectiveTime_value_or_nullFlavor`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `UVSubordinateadministration.effectiveTime_value_or_nullFlavor` | `TS` | STRONG | CTX[496] → ARTDECOR_CHOICE(atomic) | 95 | SELECTED / REQUIRES RULE |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.3.1937.777.75.2.1.498`
- Bridge: `CTX[496] → ARTDECOR_CHOICE(atomic)`
- Template: `UVSubordinateadministration` — `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`
- Element: `hl7:effectiveTime[@value or @nullFlavor]` — `2.16.840.1.113883.3.1937.777.15.9.9114`
- CDA path: `hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor]`
- CDA datatype: `TS`

**Suggested action:**

Define an explicit merge/repetition rule before enabling this mapping.

## Sequenznummer [523]

`masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Medikation.sequenceNumber` `[INT]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.sequenceNumber` | `INT` | STRONG | CTX[522] → ARTDECOR_CHOICE(complex) → HL7_DATATYPE_DESCENDANT | 94 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.3.1937.777.75.2.1.523`
- Bridge: `CTX[522] → ARTDECOR_CHOICE(complex) → HL7_DATATYPE_DESCENDANT`
- Template: `Medikation` — `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`
- Element: `hl7:sequenceNumber` — `2.16.840.1.113883.3.1937.777.15.9.63`
- CDA path: `hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber`
- CDA datatype: `INT`

## Freitext [524]

`masnahmen.medikamentose_therapie.medikation.dosierung.freitext`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zusätzliche Hinweise [533]

`masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Anweisungen zur Einnahme [534]

`masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zeitpunkt [526]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`

**YES · STRONG · EXACT · REQUIRES RULE**

**Selected:**

`UVSubordinateadministration.effectiveTime_value_or_nullFlavor` `[TS]`

**Reason:**

The best CDA target is supported by mapping evidence, but it is shared with another dataset field and therefore needs an explicit rule before execution.

**Gap:** `semantic:shared_target` — reopens with: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`, `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`, `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`, `UVSubordinateadministration.effectiveTime_value_or_nullFlavor`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `UVSubordinateadministration.effectiveTime_value_or_nullFlavor` | `TS` | STRONG | CTX[525] → ARTDECOR_CHOICE(atomic) | 95 | SELECTED / REQUIRES RULE |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.3.1937.777.75.2.1.526`
- Bridge: `CTX[525] → ARTDECOR_CHOICE(atomic)`
- Template: `UVSubordinateadministration` — `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`
- Element: `hl7:effectiveTime[@value or @nullFlavor]` — `2.16.840.1.113883.3.1937.777.15.9.9114`
- CDA path: `hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor]`
- CDA datatype: `TS`

**Suggested action:**

Define an explicit merge/repetition rule before enabling this mapping.

## Ereignis [528]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.ereignis`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[527] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Offset [529]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset`

**YES · STRONG · EXACT · REQUIRES COMPANION**

**Candidate:**

`UVSubordinateadministration.substanceAdministration.effectiveTime_xsi_type_EIVL_TS.offset` `[IVL_PQ]`

**Reason:**

The best CDA target is supported by mapping evidence, but a non-null compound value also requires the companion target(s) `UVSubordinateadministration.event`. No source mapping currently supplies that companion.

**Gap:** `semantic:missing_companion` — reopens with: `UVSubordinateadministration.event`

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `UVSubordinateadministration.substanceAdministration.effectiveTime_xsi_type_EIVL_TS.offset` | `IVL_PQ` | STRONG | CTX[527] → FORMAL_ORIGIN_LABEL(Offset zum Ereignis, z. B. 30 Minuten vorher) → CDA_DESCENDANT | 92 | CANDIDATE / REQUIRES COMPANION |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.3.1937.777.75.2.1.529`
- Bridge: `CTX[527] → FORMAL_ORIGIN_LABEL(Offset zum Ereignis, z. B. 30 Minuten vorher) → CDA_DESCENDANT`
- Template: `UVSubordinateadministration` — `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`
- Element: `hl7:offset` — ``
- CDA path: `hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:offset`
- CDA datatype: `IVL_PQ`

**Suggested action:**

Map the required companion for the same occurrence before enabling this candidate.

## Einnahme bei Bedarf [530]

`masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Körperstelle [535]

`masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Art der Anwendung [531]

`masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Methode der Anwendung [532]

`masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Dosismenge und -einheit [494]

`masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Kontinuierliche Gabe (Rate) [495]

`masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Begründungstext [501]

`masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[520] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Kodierte Begründung [521]

`masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[520] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Geschlecht [geschlecht]

`patient.geschlecht`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`CDArecordTargetnnar.administrativeGenderCode` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDArecordTargetnnar.administrativeGenderCode` | `CE` | STRONG | VS(2.16.840.1.113883.1.11.1@2016-06-23T00:00:00) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `CDArecordTargetnnar.administrativeGenderCode` | `CE` | WEAK | VS(2.16.840.1.113883.1.11.1) | 55 | alternative |

### Evidence chain

- Dataset concept: `model-extension:patient.geschlecht`
- Bridge: `VS(2.16.840.1.113883.1.11.1@2016-06-23T00:00:00) → EXACT_ENUM`
- Template: `CDArecordTargetnnar` — `1.2.276.0.76.10.2032` @ `2014-09-17T00:00:00`
- Element: `hl7:administrativeGenderCode` — `2.16.840.1.113883.2.6.60.3.9.5`
- CDA path: `hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Versichertenstatus [versichertenstatus]

`hauptkostentrager.versicherungsverhaltnis.versichertenstatus`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`HeaderParticipantKostentraeger.code` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `HeaderParticipantKostentraeger.code` | `CE` | STRONG | VS(1.2.276.0.76.11.68@2011-12-19T00:00:00) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `HeaderParticipantKostentraeger.code` | `CE` | WEAK | DESC | 65 | alternative |
| `HeaderParticipantKostentraeger.code` | `CE` | WEAK | VS(1.2.276.0.76.11.68) | 55 | alternative |

### Evidence chain

- Dataset concept: `model-extension:hauptkostentrager.versicherungsverhaltnis.versichertenstatus`
- Bridge: `VS(1.2.276.0.76.11.68@2011-12-19T00:00:00) → EXACT_ENUM`
- Template: `HeaderParticipantKostentraeger` — `1.2.276.0.76.10.2022` @ `2014-08-25T00:00:00`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.77.9.27`
- CDA path: `hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Versichertenstatus GKV [versichertenstatus_gkv]

`hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1` | `CV` | STRONG | VS(1.2.276.0.76.11.162@2014-01-01T00:00:00) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1` | `CV` | WEAK | VS(1.2.276.0.76.11.162) | 55 | alternative |

### Evidence chain

- Dataset concept: `model-extension:hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv`
- Bridge: `VS(1.2.276.0.76.11.162@2014-01-01T00:00:00) → EXACT_ENUM`
- Template: `HeaderParticipantKostentraeger` — `1.2.276.0.76.10.2022` @ `2014-08-25T00:00:00`
- Element: `hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1']` — `2.16.840.1.113883.2.6.77.9.178`
- CDA path: `hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1']`
- CDA datatype: `CV`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Weitere Versichertenstatuskodierung [weitere_versichertenstatuskodierung]

`hauptkostentrager.versicherungsverhaltnis.weitere_versichertenstatuskodierung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`hauptkostentrager.associatedEntity`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `hauptkostentrager.associatedEntity` | `POCD_MT000040.AssociatedEntity` | CONTEXT | CTX[21581] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Als KV-Fall abgerechnet [kv_fall]

`hauptkostentrager.versicherungsverhaltnis.kv_fall`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`hauptkostentrager.code` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `hauptkostentrager.code` | `CE` | STRONG | VS(1.2.276.0.76.3.1.195.11.19@2024-08-08T20:33:01) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `hauptkostentrager.code` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.19) | 55 | alternative |

### Evidence chain

- Dataset concept: `model-extension:hauptkostentrager.versicherungsverhaltnis.kv_fall`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.19@2024-08-08T20:33:01) → EXACT_ENUM`
- Template: `hauptkostentrager` — `1.2.276.0.76.3.1.195.10.4` @ `2024-08-09T10:35:24`
- Element: `hl7:code` — `2.16.840.1.113883.2.6.77.9.27`
- CDA path: `hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:code`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Ankunftszeit [ankunftszeit]

`administrative_aufnahmeinformationen.transport.ankunftszeit`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Transportmethod.observation`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

**Gap:** `semantic:no_association` — reopens with: upstream association or reviewed semantic bridge

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Transportmethod.observation` | `POCD_MT000040.Observation` | CONTEXT | CTX[10005] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Lateralität [lateralitat]

`abschlussdiagnosen.abschlussdiagnose.lateralitat`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`Laterality.value` `[CV]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Laterality.value` | `CV` | STRONG | VS(1.2.276.0.76.11.412@2017-02-08T00:00:00) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `Laterality.value` | `CV` | MEDIUM | NAME | 85 | alternative |
| `Laterality.value` | `CV` | WEAK | VS(1.2.276.0.76.11.412) | 55 | alternative |

### Evidence chain

- Dataset concept: `model-extension:abschlussdiagnosen.abschlussdiagnose.lateralitat`
- Bridge: `VS(1.2.276.0.76.11.412@2017-02-08T00:00:00) → EXACT_ENUM`
- Template: `Laterality` — `1.2.276.0.76.10.90026` @ `2017-02-13T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.77.9.100`
- CDA path: `hl7:qualifier[hl7:name/@code='20228-3']/hl7:value`
- CDA datatype: `CV`

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Aufnehmende Fachabteilung [aufnehmende_fachabteilung]

`administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung`

**YES · STRONG · EXACT · TRANSFORM**

**Selected:**

`Referralto.act.participant.participantRole.code` `[CE]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Referralto.act.participant.participantRole.code` | `CE` | STRONG | VS(1.2.276.0.76.3.1.195.11.17@2024-08-08T13:35:43) → EXACT_ENUM | 96 | SELECTED / TRANSFORM |
| `Referralto.act.participant.participantRole.code` | `CE` | MEDIUM | VS(1.2.276.0.76.3.1.195.11.17) → SCHEMATRON_CONSTRAINT(required,value_set) | 60 | alternative |
| `Referralto.act.participant.participantRole.code` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.17) | 55 | alternative |

### Evidence chain

- Dataset concept: `model-extension:administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung`
- Bridge: `VS(1.2.276.0.76.3.1.195.11.17@2024-08-08T13:35:43) → EXACT_ENUM`
- Template: `Referralto` — `1.2.276.0.76.10.4067` @ `2025-12-01T00:00:00`
- Element: `hl7:code` — ``
- CDA path: `hl7:act/hl7:participant/hl7:participantRole/hl7:code`
- CDA datatype: `CE`

**Suggested action:**

Verify the generated transform and its value mapping before use.

# Structural group context

## Patient [10002]

`patient`

**YES · WEAK · INDIRECT**

→ `CDArecordTargetnnar.recordTarget`

Evidence: `relationship:SPEC → TA`

## Anschrift [20119]

`patient.anschrift`

**PARTIAL · CONTEXT**

→ `CDArecordTargetnnar.recordTarget`

## Identifikatoren [20187]

`patient.identifikatoren`

**PARTIAL · CONTEXT**

→ `CDArecordTargetnnar.recordTarget`

## Hauptkostenträger [20096]

`hauptkostentrager`

**YES · MEDIUM · INDIRECT**

→ `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4`

Evidence: `NAME`

## Kostenträger [21578]

`hauptkostentrager.kostentrager`

**YES · WEAK · INDIRECT**

→ `hauptkostentrager.scopingOrganization`

Evidence: `relationship:SPEC → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.AssociatedEntity.hl7:scopingOrganization)`

## Versicherungsverhältnis [21581]

`hauptkostentrager.versicherungsverhaltnis`

**YES · MEDIUM · INDIRECT**

→ `hauptkostentrager.associatedEntity`

Evidence: `originalId → inherit^-1 → STATIC_ASSOC → CDA_RIM_SLOT(POCD_MT000040.Participant1.hl7:associatedEntity)`

## Administrative Aufnahmeinformationen [20099]

`administrative_aufnahmeinformationen`

**NO**

## Zuweisung zur Notaufnahme [10017]

`administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme`

**YES · MEDIUM · INDIRECT**

→ `Referralfrom.act`

Evidence: `relationship:SPEC → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required)`

## Transport [10005]

`administrative_aufnahmeinformationen.transport`

**YES · STRONG · MULTIPLE(2)**

→ `Transportmethod.observation`

Evidence: `NAME → SCHEMATRON_CONSTRAINT(required)`

## Ersteinschätzung [10029]

`ersteinschatzung`

**YES · STRONG · MULTIPLE(2)**

→ `ersteinschatzung.observation`

Evidence: `NAME → SCHEMATRON_CONSTRAINT(required)`

## Parameter der Ersteinschätzung [29249]

`ersteinschatzung.parameter_der_ersteinschatzung`

**PARTIAL · CONTEXT**

→ `ersteinschatzung.observation`

## Manchester Triage System [21715]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system`

**YES · MEDIUM · INDIRECT**

→ `manchester-triage-system.observation`

Evidence: `NAME`

## MTS-Indikator [22156]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator`

**YES · MEDIUM · MULTIPLE(4)**

→ `mts-indikatoren-rot.observation`

Evidence: `NAME`

## Notfallanamnese [10030]

`notfallanamnese`

**YES · MEDIUM · INDIRECT**

→ `HistoryofPresentIllnessSection.section`

Evidence: `NAME`

## Beschwerden bei Vorstellung [10034]

`notfallanamnese.beschwerden_bei_vorstellung`

**YES · MEDIUM · INDIRECT**

→ `Chiefcomplaintreasonforvisit.section`

Evidence: `NAME`

## Unfall-Anamnese [20154]

`notfallanamnese.unfallanamnese`

**YES · MEDIUM · INDIRECT**

→ `unfall-anamnese.act`

Evidence: `NAME`

## Klinische Basisdaten Patient [10016]

`klinische_basisdaten_patient`

**YES · WEAK · INDIRECT**

→ `ClinicalInformation.section`

Evidence: `relationship:SPEC → TA`

## Allergien [10009]

`klinische_basisdaten_patient.allergien`

**YES · WEAK · INDIRECT**

→ `AllergienUnvertraeglichkeiten.section`

Evidence: `relationship:SPEC → inherit^-1 → TA`

## Abgeleitete Informationen zur Weitergabe [29219]

`klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe`

**PARTIAL · CONTEXT**

→ `AllergienUnvertraeglichkeiten.section`

## Vitalparameter [10006]

`vitalparameter`

**YES · MEDIUM · INDIRECT**

→ `VitalSignsSection.section`

Evidence: `NAME`

## Blutdruck [20141]

`vitalparameter.blutdruck`

**PARTIAL · CONTEXT**

→ `VitalSignsSection.section`

## Puls [20146]

`vitalparameter.puls`

**PARTIAL · CONTEXT**

→ `VitalSignsSection.section`

## Pupillenweite [10032]

`vitalparameter.pupillenweite`

**YES · STRONG · INDIRECT**

→ `Pupilsize.observation`

Evidence: `originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required)`

## Pupillenreaktion [10033]

`vitalparameter.pupillenreaktion`

**YES · STRONG · INDIRECT**

→ `Pupilreaction.observation`

Evidence: `originalId → inherit^-1 → TA → SCHEMATRON_CONSTRAINT(required)`

## Körperkerntemperatur [20]

`vitalparameter.korperkerntemperatur`

**YES · STRONG · EXACT**

→ `BodyTemperatureCore.observation`

Evidence: `NAME → SCHEMATRON_CONSTRAINT(required)`

## Scores [20207]

`scores`

**NO**

## Glasgow Coma Scale (GCS) [10007]

`scores.glasgow_coma_scale_gcs`

**YES · MEDIUM · INDIRECT**

→ `GlasgowComaScale.observation`

Evidence: `NAME`

## Schmerzmessung [20815]

`scores.schmerzmessung`

**YES · STRONG · EXACT**

→ `Painseverity.observation`

Evidence: `NAME → SCHEMATRON_CONSTRAINT(required)`

## Diagnostik [10011]

`diagnostik`

**YES · MEDIUM · INDIRECT**

→ `Relevantdiagnostictestsorlaboratorydata.section`

Evidence: `NAME`

## Bildgebende Diagnostik [20720]

`diagnostik.bildgebende_diagnostik`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section`

## Magnetresonanztomographie [20727]

`diagnostik.bildgebende_diagnostik.magnetresonanztomographie`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section`

## Röntgen [20728]

`diagnostik.bildgebende_diagnostik.rontgen`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section`

## Abgeleitete Informationen über Diagnostik zur Weitergabe [21762]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section`

## Wildcard: Diagnostik [29601]

`diagnostik.wildcard_diagnostik`

**YES · MEDIUM · INDIRECT**

→ `WildcardDiagnostik.observation`

Evidence: `NAME`

## Klinisch relevante Zeitangaben [29608]

`diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben`

**PARTIAL · CONTEXT**

→ `WildcardDiagnostik.observation`

## Maßnahmen [22159]

`masnahmen`

**NO**

## Medikamentöse Therapie [20668]

`masnahmen.medikamentose_therapie`

**YES · MEDIUM · INDIRECT**

→ `medikamentose-therapie.section`

Evidence: `NAME`

## Medikation [30086]

`masnahmen.medikamentose_therapie.medikation`

**YES · MEDIUM · INDIRECT**

→ `Medikation.substanceAdministration`

Evidence: `NAME`

## Isolation [10004]

`masnahmen.isolation`

**YES · MEDIUM · INDIRECT**

→ `isolation.procedure`

Evidence: `NAME`

## Wildcard: Therapie [29610]

`masnahmen.wildcard_therapie`

**YES · MEDIUM · INDIRECT**

→ `WildcardTherapie.procedure`

Evidence: `NAME`

## Klinisch relevante Zeitangaben [29613]

`masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben`

**PARTIAL · CONTEXT**

→ `WildcardTherapie.procedure`

## Abschlussdiagnosen [10018]

`abschlussdiagnosen`

**YES · MEDIUM · INDIRECT**

→ `Eddiagnosis.section`

Evidence: `NAME`

## Abschlussdiagnose [10012]

`abschlussdiagnosen.abschlussdiagnose`

**YES · MEDIUM · INDIRECT**

→ `Eddiagnosis.section`

Evidence: `NAME`

## Weiteres Procedere / Therapieempfehlung / Weiterbehandler [10014]

`weiteres_procedere_therapieempfehlung_weiterbehandler`

**YES · MEDIUM · INDIRECT**

→ `Eddisposition.section`

Evidence: `NAME`

## Administrative Verlegungs-/Entlassungsinformationen [21607]

`administrative_verlegungsentlassungsinformationen`

**NO**

## Dokumentationsinformationen [21743]

`dokumentationsinformationen`

**NO**

## Beginn patientenbezogene Dokumentation [21752]

`dokumentationsinformationen.beginn_patientenbezogene_dokumentation`

**NO**

## Berechnete Zeitintervalle [21755]

`dokumentationsinformationen.berechnete_zeitintervalle`

**NO**

## Datenbereitstellung [21739]

`dokumentationsinformationen.datenbereitstellung`

**NO**

## Medikament [483]

`masnahmen.medikamentose_therapie.medikation.medikament`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Arzneimittel [487]

`masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Wirkstoff [484]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Anwendungszeiten [496]

`masnahmen.medikamentose_therapie.medikation.anwendungszeiten`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Dosierung [522]

`masnahmen.medikamentose_therapie.medikation.dosierung`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Zeitangabe [525]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Ereignisbezogene Wiederholung [527]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

## Grund der Medikation [520]

`masnahmen.medikamentose_therapie.medikation.grund_der_medikation`

**PARTIAL · CONTEXT**

→ `Medikation.substanceAdministration`

