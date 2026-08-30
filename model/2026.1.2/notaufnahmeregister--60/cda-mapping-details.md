# CDA Mapping Details

This is the evidence appendix for `cda-mapping.json`. Edit the JSON mapping,
not this generated report; the concise review workflow is in `cda-mapping.md`.

Target CDA template: `1.2.276.0.76.3.1.195.10.93` @ `2026-03-25T11:04:07`
Transaction: `2.16.840.1.113883.2.6.60.3.4.60` (Notaufnahmeregister Transitionsversion)

```text
Dataset datapoints:   177
CDA covered:           90
Partial:               74
Not covered:           13

Items:      YES 63, PARTIAL 52, NO 5
Groups:     YES 27, PARTIAL 22, NO 8
Required items: YES 17, PARTIAL 12, NO 0

Reachable templates:   308
Named CDA targets:    6207
Renderable targets:   1009
Evidence-linked items:   71
Executable proposal:    62
Unresolved templates:    1
```

## Summary by evidence

### Qualification

- EXACT: 22
- INDIRECT: 64
- PARTIAL: 74
- NO_CDA: 13
- MULTIPLE(2): 3
- MULTIPLE(4): 1

### Primary evidence

- NONE: 87
- TA: 40
- NAME: 38
- TRANSFORM: 4
- TERM+VS: 3
- TERM+DT: 2
- VS: 1
- DESC: 1
- XPATH: 1

### Confidence

- STRONG: 22
- MEDIUM: 62
- WEAK: 6
- NO: 87

## Executable structural rules

- `coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601` — `coalesce`
  - shared singleton CDA target
  - compatible source datatypes
- `fan-out-pupilsize-value` — `fan_out`
  - shared repeatable CDA value target
  - one additional CDA repeat level
  - required side discriminator Pupilsize.targetSiteCode
- `fan-out-pupilreaction-value` — `fan_out`
  - shared repeatable CDA value target
  - one additional CDA repeat level
  - required side discriminator Pupilreaction.targetSiteCode
- `for-each-vitalparameter` — `for_each`
  - matching source and CDA repeat depth
- `for-each-abschlussdiagnosen-abschlussdiagnose` — `for_each`
  - matching source and CDA repeat depth

## Unresolved template references

- `SPEC` → `2.16.840.1.113883.10.20.1.53` @ `2005-09-07T00:00:00`

# Datapoint analysis

## Postleitzahl [20123]

`patient.anschrift.postleitzahl`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`CDArecordTargetnnar.recordTarget`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDArecordTargetnnar.recordTarget` | `—` | CONTEXT | CTX[20119] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Patienten ID [3]

`patient.identifikatoren.patienten_id`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`PatientIdentifier.id` `[II]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `PatientIdentifier.id` | `II` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.3`
- Bridge: `SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.3`
- Template: `PatientIdentifier` — `1.2.276.0.76.10.90024` @ `2014-12-17T00:00:00`
- Element: `hl7:id` — `1.2.276.0.76.9.90024`
- CDA path: `hl7:id`
- CDA datatype: `II`

## Name [21579]

`hauptkostentrager.kostentrager.name`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4` | `—` | CONTEXT | CTX[21578] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Identifikation [21582]

`hauptkostentrager.versicherungsverhaltnis.identifikation`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4` | `—` | CONTEXT | CTX[21581] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Aufnahmezeitpunkt [58]

`administrative_aufnahmeinformationen.aufnahmezeitpunkt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` `[TS.DATE.MIN]`

**Structural rule:**

`coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | `TS.DATE.MIN` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | SELECTED |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | `TS.DATE.MIN` | MEDIUM | SPEC → INHERIT^-1 → TA_VERSION | 77 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.58`
- Bridge: `SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.58`
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:low` — `2.16.840.1.113883.2.6.60.3.9.222`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low`
- CDA datatype: `TS.DATE.MIN`

## Fallnummer [20094]

`administrative_aufnahmeinformationen.fallnummer`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.id_2` `[II]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.id_2` | `II` | STRONG | ORIGINAL → TA | 97 | SELECTED |
| `CDAEncompassingEncounter.id_2` | `II` | STRONG | SPEC → TA | 97 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20094`
- Bridge: `ORIGINAL → TA`
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

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.id_1` | `II` | STRONG | ORIGINAL → TA | 97 | SELECTED |
| `CDAEncompassingEncounter.id_1` | `II` | STRONG | SPEC → TA | 97 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20093`
- Bridge: `ORIGINAL → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.3.20093` — Episodennummer
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:id[1]` — `2.16.840.1.113883.2.6.60.3.9.1558`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:id[1]`
- CDA datatype: `II`

## Zuweisung [22]

`administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Referralfrom.act`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Referralfrom.act.participant.participantRole.code` | `CE` | STRONG | SPEC → TA | 97 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | MEDIUM | SPEC → TA_VERSION | 89 | evidence only |
| `Referralfrom.act.participant.participantRole.code` | `CE` | WEAK | VS(1.2.276.0.76.11.42) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Transportmittel [20139]

`administrative_aufnahmeinformationen.transport.transportmittel`

**YES · WEAK · INDIRECT · EXECUTABLE**

**Selected:**

`Transportmethod.value` `[CV]`

**Reason:**

The available ART-DECOR evidence identifies this as the best CDA target. The evidence is indirect, so the selection should be reviewed.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Transportmethod.value` | `CV` | WEAK | VS(1.2.276.0.76.11.41) | 55 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20139`
- Bridge: `VS(1.2.276.0.76.11.41)`
- Template: `Transportmethod` — `1.2.276.0.76.10.4037` @ `2015-03-03T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.1631714`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

**Suggested action:**

Verify the selected target because the evidence is indirect.

## Medizinische Begleitung [20140]

`administrative_aufnahmeinformationen.transport.medizinische_begleitung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`CDAEncompassingEncounter.componentOf.encompassingEncounter@20160601`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `medizinische-begleitung.code` | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.2) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Direkter Arztkontakt [21559]

`ersteinschatzung.direkter_arztkontakt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`ersteinschatzung-section.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `direkter_arztkontakt.code` | `CE` | WEAK | TERM(FLN-13) | 35 | evidence only |
| `direkter_arztkontakt.value` | `CE` | WEAK | TERM(305660003) | 35 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Ergebnis der Ersteinschätzung [21746]

`ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`ersteinschatzung.value` `[CE]`

**Reason:**

Terminology locates the CDA template and compatible value-set evidence identifies the target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ersteinschatzung.value` | `CE` | MEDIUM | TERM(273887006,75616-3) → VS(1.2.276.0.76.3.1.195.11.11) | 80 | SELECTED |
| `ersteinschatzung.value` | `CE` | WEAK | TERM(273887006,75616-3) → DT(code) | 60 | alternative |
| `emergency-severity-index.value` | `CE` | WEAK | VS(1.2.276.0.76.11.45) | 55 | alternative |
| `ersteinschatzung.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.11) | 55 | alternative |
| `manchester-triage-system.value` | `CE` | WEAK | VS(1.2.276.0.76.11.44) | 55 | alternative |
| `ersteinschatzung.translation` | `CE` | WEAK | TERM(75616-3) | 35 | evidence only |
| `ersteinschatzung.code` | `CD` | WEAK | TERM(273887006) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21746`
- Bridge: `TERM(273887006,75616-3) → VS(1.2.276.0.76.3.1.195.11.11)`
- Template: `ersteinschatzung` — `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.649`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Zeitpunkt der Ersteinschätzung [770]

`ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung`

**YES · WEAK · INDIRECT · EXECUTABLE**

**Selected:**

`ersteinschatzung.effectiveTime` `[TS]`

**Reason:**

Published descriptions provide a semantic bridge to this CDA target. The evidence is indirect, so the selection should be reviewed.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ersteinschatzung.effectiveTime` | `TS` | WEAK | DESC | 65 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.770`
- Bridge: `DESC`
- Template: `ersteinschatzung` — `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`
- Element: `hl7:effectiveTime` — `2.16.840.1.113883.2.6.60.3.9.646`
- CDA path: `hl7:observation/hl7:effectiveTime`
- CDA datatype: `TS`

**Suggested action:**

Verify the selected target because the evidence is indirect.

## verwendetes Ersteinschätzungssystem [804]

`ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`ersteinschatzung-section.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ersteinschatzung.methodCode` | `CD` | WEAK | VS(1.2.276.0.76.3.1.195.11.12) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## MTS-Präsentationsdiagramm [21074]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`mts-prasentationsdiagramm.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-prasentationsdiagramm.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `mts-prasentationsdiagramm.value` | `CE` | MEDIUM | TERM(SCTPOCC-1269489004) → VS(1.2.276.0.76.3.1.195.11.10) | 80 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | WEAK | TERM(SCTPOCC-1269489004) → DT(code) | 60 | alternative |
| `mts-prasentationsdiagramm.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.10) | 55 | alternative |
| `mts-prasentationsdiagramm.code` | `CD` | WEAK | TERM(SCTPOCC-1269489004) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21074`
- Bridge: `NAME`
- Template: `mts-prasentationsdiagramm` — `1.2.276.0.76.3.1.195.10.21` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren ROT [21047]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`mts-indikatoren-rot.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-rot.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `mts-indikatoren-rot.value` | `CE` | MEDIUM | TERM(SCTPOCC-49499008) → VS(1.2.276.0.76.3.1.195.11.13) | 80 | alternative |
| `mts-indikatoren-rot.value` | `CE` | WEAK | TERM(SCTPOCC-49499008) → DT(code) | 60 | alternative |
| `mts-indikatoren-rot.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.13) | 55 | alternative |
| `mts-indikatoren-rot.code` | `CD` | WEAK | TERM(SCTPOCC-49499008) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21047`
- Bridge: `NAME`
- Template: `mts-indikatoren-rot` — `1.2.276.0.76.3.1.195.10.22` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren ORANGE [21048]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`mts-indikatoren-orange.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-orange.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `mts-indikatoren-orange.value` | `CE` | MEDIUM | TERM(SCTPOCC-25876001) → VS(1.2.276.0.76.3.1.195.11.14) | 80 | alternative |
| `mts-indikatoren-orange.value` | `CE` | WEAK | TERM(SCTPOCC-25876001) → DT(code) | 60 | alternative |
| `mts-indikatoren-orange.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.14) | 55 | alternative |
| `mts-indikatoren-orange.code` | `CD` | WEAK | TERM(SCTPOCC-25876001) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21048`
- Bridge: `NAME`
- Template: `mts-indikatoren-orange` — `1.2.276.0.76.3.1.195.10.23` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren GELB [21049]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`mts-indikatoren-gelb.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-gelb.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `mts-indikatoren-gelb.value` | `CE` | MEDIUM | TERM(SCTPOCC-103391001) → VS(1.2.276.0.76.3.1.195.11.15) | 80 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | WEAK | TERM(SCTPOCC-103391001) → DT(code) | 60 | alternative |
| `mts-indikatoren-gelb.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.15) | 55 | alternative |
| `mts-indikatoren-gelb.code` | `CD` | WEAK | TERM(SCTPOCC-103391001) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21049`
- Bridge: `NAME`
- Template: `mts-indikatoren-gelb` — `1.2.276.0.76.3.1.195.10.24` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## MTS-Indikatoren GRÜN [21050]

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`mts-indikatoren-grun.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mts-indikatoren-grun.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `mts-indikatoren-grun.value` | `CE` | MEDIUM | TERM(SCTPOCC-394848005) → VS(1.2.276.0.76.3.1.195.11.16) | 80 | alternative |
| `mts-indikatoren-grun.value` | `CE` | WEAK | TERM(SCTPOCC-394848005) → DT(code) | 60 | alternative |
| `mts-indikatoren-grun.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.16) | 55 | alternative |
| `mts-indikatoren-grun.code` | `CD` | WEAK | TERM(SCTPOCC-394848005) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21050`
- Bridge: `NAME`
- Template: `mts-indikatoren-grun` — `1.2.276.0.76.3.1.195.10.25` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## ESI-Triage [21073]

`ersteinschatzung.parameter_der_ersteinschatzung.esitriage`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`esi-triage-faktoren.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `esi-triage-faktoren.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `emergency-severity-index.value` | `CE` | WEAK | TERM(1255873000) → DT(code) | 60 | alternative |
| `emergency-severity-index.code` | `CD` | WEAK | TERM(1255873000) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21073`
- Bridge: `NAME`
- Template: `esi-triage-faktoren` — `1.2.276.0.76.3.1.195.10.26` @ `2024-08-13T10:50:15`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.19196`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Beschwerden bei Vorstellung (Freitext) [36]

`notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext`

**YES · MEDIUM · MULTIPLE(2) · EXECUTABLE**

**Selected:**

`Chiefcomplaintreasonforvisit.text` `[SD.TEXT]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element. Another actionable target has a comparable score.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | SELECTED |
| `Problemobservationcedis.originalText` | `ST` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `Chiefcomplaintreasonforvisit.text` | `SD.TEXT` | MEDIUM | NAME | 85 | alternative |
| `Problemobservationcedis.originalText` | `ST` | WEAK | DESC | 65 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.36`
- Bridge: `SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.36`
- Template: `Chiefcomplaintreasonforvisit` — `1.2.276.0.76.10.3048` @ `2015-01-10T00:00:00`
- Element: `hl7:text` — `2.16.840.1.113883.2.6.60.3.9.81`
- CDA path: `hl7:section/hl7:text`
- CDA datatype: `SD.TEXT`

**Suggested action:**

Compare the similarly ranked candidates before accepting the selection.

## Beschwerden bei Vorstellung (CEDIS) [805]

`notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Problemobservationcedis.value` `[CE]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationcedis.value` | `CE` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | SELECTED |
| `Problemobservationcedis.value` | `CE` | MEDIUM | SPEC → INHERIT^-1 → TA_VERSION | 77 | alternative |
| `Problemobservationcedis.value` | `CE` | WEAK | VS(1.2.276.0.76.11.61) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.805`
- Bridge: `SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.805`
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

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Chiefcomplaintreasonforvisit.section` | `—` | CONTEXT | CTX[10034] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zeitpunkt erster Arztkontakt [37]

`notfallanamnese.zeitpunkt_erster_arztkontakt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`CDADocumentationOf.documentationOf.serviceEvent.performer.time.low` `[TS]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDADocumentationOf.documentationOf.serviceEvent.performer.time.low` | `TS` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.37`
- Bridge: `SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.37`
- Template: `CDADocumentationOf` — `1.2.276.0.76.10.2035` @ `2014-09-17T00:00:00`
- Element: `hl7:low` — `2.16.840.1.113883.2.6.60.3.9.39`
- CDA path: `hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low`
- CDA datatype: `TS`

## Notfallanamnese des Patienten [40]

`notfallanamnese.notfallanamnese_des_patienten`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Additionalmodulessection.text` `[SD.TEXT]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Additionalmodulessection.text` | `SD.TEXT` | MEDIUM | ORIGINAL → INHERIT^-1 → TA | 85 | SELECTED |
| `Additionalmodulessection.text` | `SD.TEXT` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.40`
- Bridge: `ORIGINAL → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.40`
- Template: `Additionalmodulessection` — `1.2.276.0.76.10.3057` @ `2015-03-30T00:00:00`
- Element: `hl7:text` — `2.16.840.1.113883.2.6.60.3.9.212`
- CDA path: `hl7:section/hl7:text`
- CDA datatype: `SD.TEXT`

## Unfallursache [20156]

`notfallanamnese.unfallanamnese.unfallursache`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`unfallursache-kinetik.observation.value` `[CD]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfallursache-kinetik.observation.value` | `CD` | MEDIUM | NAME | 85 | SELECTED |
| `unfallursache-kinetik.observation.value` | `CD` | MEDIUM | TERM(69543-7) → VS(1.2.276.0.76.3.1.195.11.6) | 80 | alternative |
| `unfallursache-kinetik.observation.value` | `CD` | WEAK | VS(1.2.276.0.76.3.1.195.11.6) | 55 | alternative |
| `unfallursache-kinetik.code` | `CD` | WEAK | TERM(69543-7) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20156`
- Bridge: `NAME`
- Template: `unfallursache-kinetik` — `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163134`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CD`

## Fahrzeug des Verunfallten [20278]

`notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`unfall-anamnese.act`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfall-anamnese.act.participant.participantRole.code` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.8) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Unfallkinetik [20280]

`notfallanamnese.unfallanamnese.unfallkinetik`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` `[CV]`

**Reason:**

Terminology locates the CDA template and compatible value-set evidence identifies the target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | MEDIUM | TERM(67496-0) → VS(1.2.276.0.76.3.1.195.11.5) | 80 | SELECTED |
| `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.5) | 55 | alternative |
| `unfallursache-kinetik.name` | `CV` | WEAK | TERM(67496-0) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20280`
- Bridge: `TERM(67496-0) → VS(1.2.276.0.76.3.1.195.11.5)`
- Template: `unfallursache-kinetik` — `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163140`
- CDA path: `hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='67496-0']/hl7:value`
- CDA datatype: `CV`

## Unfallart TraumaRegister [21748]

`notfallanamnese.unfallanamnese.unfallart_trauma_register`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`unfallart-traumaregister.value` `[CE]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `unfallart-traumaregister.value` | `CE` | MEDIUM | NAME | 85 | SELECTED |
| `unfallart-traumaregister.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.18) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21748`
- Bridge: `NAME`
- Template: `unfallart-traumaregister` — `1.2.276.0.76.3.1.195.10.30` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163134`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? [20365]

`notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`substanz-einfluss.value` `[CE]`

**Reason:**

Terminology locates the CDA template and compatible value-set evidence identifies the target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `substanz-einfluss.value` | `CE` | MEDIUM | TERM(88068-2) → VS(1.2.276.0.76.3.1.195.11.23) | 80 | SELECTED |
| `substanz-einfluss.value` | `CE` | WEAK | TERM(88068-2) → DT(code) | 60 | alternative |
| `substanz-einfluss.value` | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.23) | 55 | alternative |
| `substanz-einfluss.code` | `CD` | WEAK | TERM(88068-2) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20365`
- Bridge: `TERM(88068-2) → VS(1.2.276.0.76.3.1.195.11.23)`
- Template: `substanz-einfluss` — `1.2.276.0.76.3.1.195.10.32` @ `2024-08-13T18:37:55`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.163134`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CE`

## Allergie Beschreibung [35]

`klinische_basisdaten_patient.allergien.allergie_beschreibung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`AllergienUnvertraeglichkeiten.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `AllergienUnvertraeglichkeiten.section` | `—` | CONTEXT | CTX[10009] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Agens [21593]

`klinische_basisdaten_patient.allergien.agens`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`AllergienUnvertraeglichkeiten.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `AllergienUnvertraeglichkeiten.section` | `—` | CONTEXT | CTX[10009] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Antibiotikaallergie [21598]

`klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`AllergienUnvertraeglichkeiten.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `AllergienUnvertraeglichkeiten.section` | `—` | CONTEXT | CTX[29219] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Kontrastmittelallergie [21599]

`klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`AllergienUnvertraeglichkeiten.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `AllergienUnvertraeglichkeiten.section` | `—` | CONTEXT | CTX[29219] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Schwangerschaft [5]

`klinische_basisdaten_patient.schwangerschaft`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Pregnancystatus.value` `[CV]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pregnancystatus.value` | `CV` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | SELECTED |
| `Pregnancystatus.value` | `CV` | WEAK | VS(1.2.276.0.76.11.46) | 55 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.5`
- Bridge: `SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.5`
- Template: `Pregnancystatus` — `1.2.276.0.76.10.4043` @ `2015-03-03T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.264`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

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
| `Clostridiumtetaniimmunization.negationInd` | `bl` | MEDIUM | SEMANTIC_STATE → TRANSFORM(enum→negationInd) | 78 | SELECTED / TRANSFORM |
| `Clostridiumtetaniimmunization.substanceAdministration` | `—` | MEDIUM | ORIGINAL → INHERIT^-1 → TA | 85 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `—` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `—` | MEDIUM | ORIGINAL → INHERIT^-1 → TA_VERSION | 77 | evidence only |
| `Clostridiumtetaniimmunization.substanceAdministration` | `—` | MEDIUM | SPEC → INHERIT^-1 → TA_VERSION | 77 | evidence only |

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

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`VitalSignsSection.section@20251201`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `VitalSignsSection.section@20251201` | `—` | CONTEXT | CTX[10006] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Atemfrequenz [9]

`vitalparameter.atemfrequenz`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`RespiratoryRate.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `RespiratoryRate.value` | `PQ` | STRONG | SPEC → TA | 97 | SELECTED |
| `RespiratoryRate.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `RespiratoryRate.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `RespiratoryRate.value` | `PQ` | WEAK | TERM(9279-1) → DT(quantity) | 60 | alternative |
| `RespiratoryRate.code` | `CE` | WEAK | TERM(9279-1) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.9`
- Bridge: `SPEC → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.9` — Atemfrequenz
- Template: `RespiratoryRate` — `1.2.276.0.76.10.4030` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.14`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Pulsoximetrische Sauerstoffsättigung [10]

`vitalparameter.pulsoximetrische_sauerstoffsattigung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`pulsoximetrische_sauerstoffsattigung.value` `[PQ]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `pulsoximetrische_sauerstoffsattigung.value` | `PQ` | MEDIUM | NAME | 85 | SELECTED |
| `pulsoximetrische_sauerstoffsattigung.value` | `PQ` | WEAK | TERM(103228002,59408-5) → DT(quantity) | 60 | alternative |
| `pulsoximetrische_sauerstoffsattigung.translation` | `CE` | WEAK | TERM(59408-5) | 35 | evidence only |
| `pulsoximetrische_sauerstoffsattigung.code` | `CD` | WEAK | TERM(103228002) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.10`
- Bridge: `NAME`
- Template: `pulsoximetrische_sauerstoffsattigung` — `1.2.276.0.76.3.1.195.10.35` @ `2024-08-14T10:13:56`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Systolischer Blutdruck [11]

`vitalparameter.blutdruck.systolischer_blutdruck`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Systolicbloodpressure.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Systolicbloodpressure.value` | `PQ` | STRONG | SPEC → TA | 97 | SELECTED |
| `Systolicbloodpressure.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `Systolicbloodpressure.value` | `PQ` | WEAK | TERM(8480-6) → DT(quantity) | 60 | alternative |
| `Systolicbloodpressure.code` | `CE` | WEAK | TERM(8480-6) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.11`
- Bridge: `SPEC → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.11` — Systolischer Blutdruck
- Template: `Systolicbloodpressure` — `1.2.276.0.76.10.4032` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.8`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Diastolischer Blutdruck [20143]

`vitalparameter.blutdruck.diastolischer_blutdruck`

**YES · WEAK · INDIRECT · EXECUTABLE**

**Selected:**

`blutdruck-diastolisch.value` `[PQ]`

**Reason:**

Terminology locates the CDA template and datatype compatibility identifies its unique payload. The evidence is indirect, so the selection should be reviewed.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `blutdruck-diastolisch.value` | `PQ` | WEAK | TERM(271650006,8462-4) → DT(quantity) | 60 | SELECTED |
| `blutdruck-diastolisch.code` | `CD` | WEAK | TERM(271650006) | 35 | evidence only |
| `blutdruck-diastolisch.translation` | `CE` | WEAK | TERM(8462-4) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20143`
- Bridge: `TERM(271650006,8462-4) → DT(quantity)`
- Template: `blutdruck-diastolisch` — `1.2.276.0.76.3.1.195.10.38` @ `2024-08-14T10:13:56`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.77.9.888`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

**Suggested action:**

Verify the selected target because the evidence is indirect.

## Herzfrequenz [12]

`vitalparameter.herzfrequenz`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`HeartRate.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `HeartRate.value` | `PQ` | STRONG | SPEC → TA | 97 | SELECTED |
| `HeartRate.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `HeartRate.value` | `PQ` | MEDIUM | NAME | 85 | alternative |
| `HeartRate.value` | `PQ` | WEAK | TERM(8867-4) → DT(quantity) | 60 | alternative |
| `HeartRate.code` | `CE` | WEAK | TERM(8867-4) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.12`
- Bridge: `SPEC → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.12` — Herzfrequenz
- Template: `HeartRate` — `1.2.276.0.76.10.4033` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.9`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Pulsfrequenz [20282]

`vitalparameter.puls.pulsfrequenz`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`pulsfrequenz.value` `[PQ]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `pulsfrequenz.value` | `PQ` | MEDIUM | NAME | 85 | SELECTED |
| `HeartRate.value` | `PQ` | WEAK | TERM(8867-4) → DT(quantity) | 60 | alternative |
| `pulsfrequenz.value` | `PQ` | WEAK | TERM(78564009) → DT(quantity) | 60 | alternative |
| `HeartRate.code` | `CE` | WEAK | TERM(8867-4) | 35 | evidence only |
| `pulsfrequenz.code` | `CD` | WEAK | TERM(78564009) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20282`
- Bridge: `NAME`
- Template: `pulsfrequenz` — `1.2.276.0.76.3.1.195.10.40` @ `2024-08-14T10:13:56`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.77.9.888`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Pupillenweite (rechts) [18]

`vitalparameter.pupillenweite.pupillenweite_rechts`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Pupilsize.value` `[CV]`

**Structural rule:**

`fan-out-pupilsize-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `fan-out-pupilsize-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilsize.value` | `CV` | MEDIUM | NAME | 85 | SELECTED |
| `Pupilsize.value` | `CV` | WEAK | VS(1.2.276.0.76.11.49) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.18`
- Bridge: `NAME`
- Template: `Pupilsize` — `1.2.276.0.76.10.4046` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.343`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Pupillenweite (links) [20018]

`vitalparameter.pupillenweite.pupillenweite_links`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Pupilsize.value` `[CV]`

**Structural rule:**

`fan-out-pupilsize-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `fan-out-pupilsize-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilsize.value` | `CV` | MEDIUM | NAME | 85 | SELECTED |
| `Pupilsize.value` | `CV` | WEAK | VS(1.2.276.0.76.11.49) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20018`
- Bridge: `NAME`
- Template: `Pupilsize` — `1.2.276.0.76.10.4046` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.343`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Pupillenreaktion (rechts) [19]

`vitalparameter.pupillenreaktion.pupillenreaktion_rechts`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Pupilreaction.value` `[CV]`

**Structural rule:**

`fan-out-pupilreaction-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `fan-out-pupilreaction-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilreaction.value` | `CV` | MEDIUM | NAME | 85 | SELECTED |
| `Pupilreaction.value` | `CV` | WEAK | VS(1.2.276.0.76.11.50) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.19`
- Bridge: `NAME`
- Template: `Pupilreaction` — `1.2.276.0.76.10.4047` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.356`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Pupillenreaktion (links) [20019]

`vitalparameter.pupillenreaktion.pupillenreaktion_links`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Pupilreaction.value` `[CV]`

**Structural rule:**

`fan-out-pupilreaction-value`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `fan-out-pupilreaction-value`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pupilreaction.value` | `CV` | MEDIUM | NAME | 85 | SELECTED |
| `Pupilreaction.value` | `CV` | WEAK | VS(1.2.276.0.76.11.50) | 55 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20019`
- Bridge: `NAME`
- Template: `Pupilreaction` — `1.2.276.0.76.10.4047` @ `2015-09-18T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.356`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Körperkerntemperatur [20050]

`vitalparameter.korperkerntemperatur.korperkerntemperatur`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`BodyTemperatureCore.value` `[PQ]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `BodyTemperatureCore.value` | `PQ` | MEDIUM | NAME | 85 | SELECTED |
| `BodyTemperatureCore.value` | `PQ` | WEAK | TERM(8329-5) → DT(quantity) | 60 | alternative |
| `BodyTemperatureCore.code` | `CE` | WEAK | TERM(8329-5) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20050`
- Bridge: `NAME`
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

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | STRONG | ORIGINAL → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | STRONG | SPEC → TA | 97 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | MEDIUM | ORIGINAL → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.code` | `CE` | WEAK | TERM(9267-6) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.13`
- Bridge: `ORIGINAL → TA`
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

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | STRONG | ORIGINAL → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | STRONG | SPEC → TA | 97 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | MEDIUM | ORIGINAL → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.code` | `CE` | WEAK | TERM(9270-0) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.14`
- Bridge: `ORIGINAL → TA`
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

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | STRONG | ORIGINAL → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | STRONG | SPEC → TA | 97 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | MEDIUM | ORIGINAL → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.code` | `CE` | WEAK | TERM(9268-4) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.16`
- Bridge: `ORIGINAL → TA`
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

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `GlasgowComaScale.observation.value` | `PQ` | STRONG | ORIGINAL → TA | 97 | SELECTED |
| `GlasgowComaScale.observation.value` | `PQ` | STRONG | SPEC → TA | 97 | alternative |
| `GlasgowComaScale.observation.value` | `PQ` | MEDIUM | ORIGINAL → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `GlasgowComaScale.observation.code` | `CE` | WEAK | TERM(9269-2) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.17`
- Bridge: `ORIGINAL → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.17` — GCS Summe
- Template: `GlasgowComaScale` — `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.16`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## modified Rankin Skala Score [114]

`scores.modified_rankin_skala_score`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`Modifiedrankinscale.observation.value` `[PQ]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Modifiedrankinscale.observation.value` | `PQ` | MEDIUM | TERM/TEMPLATE → TRANSFORM(ordinal→score) | 76 | SELECTED / TRANSFORM |
| `Modifiedrankinscale.observation.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | evidence only |
| `Modifiedrankinscale.code` | `CE` | WEAK | TERM(75859-9) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.114`
- Bridge: `TERM/TEMPLATE → TRANSFORM(ordinal→score)`
- Template: `Modifiedrankinscale` — `1.2.276.0.76.10.4045` @ `2015-03-03T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.296`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`
- Warnings: ordinal score derived from dataset option synonyms

**Suggested action:**

Verify the generated transform and its value mapping before use.

## Numerischen Rating Skala [21]

`scores.schmerzmessung.numerischen_rating_skala`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`Painseverity.observation.value` `[PQ]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Painseverity.observation.value` | `PQ` | STRONG | SPEC → TA | 97 | SELECTED |
| `Painseverity.observation.value` | `PQ` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `Painseverity.observation.value` | `PQ` | WEAK | TERM(72514-3) → DT(quantity) | 60 | alternative |
| `Painseverity.code` | `CE` | WEAK | TERM(72514-3) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21`
- Bridge: `SPEC → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.1.21` — Schmerz
- Template: `Painseverity` — `1.2.276.0.76.10.4036` @ `2014-09-16T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.23`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `PQ`

## Untersuchungsregion [20726]

`diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Relevantdiagnostictestsorlaboratorydata.section@20251201`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Relevantdiagnostictestsorlaboratorydata.section@20251201` | `—` | CONTEXT | CTX[20727] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Untersuchungsregion [20729]

`diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Relevantdiagnostictestsorlaboratorydata.section@20251201`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Relevantdiagnostictestsorlaboratorydata.section@20251201` | `—` | CONTEXT | CTX[20728] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Mikrobiologie angefordert [21764]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`mikrobiologie_angefordert.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `mikrobiologie_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `mikrobiologie_angefordert.negationInd` | `bl` | WEAK | TERM(19851009) → DT(boolean) | 60 | alternative |
| `mikrobiologie_angefordert.code` | `CE` | WEAK | TERM(19851009) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21764`
- Bridge: `NAME`
- Template: `mikrobiologie_angefordert` — `1.2.276.0.76.3.1.195.10.47` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## BGA angefordert [29264]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`bga_angefordert.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `bga_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `bga_angefordert.negationInd` | `bl` | WEAK | TERM(278297009) → DT(boolean) | 60 | alternative |
| `bga_angefordert.code` | `CE` | WEAK | TERM(278297009) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29264`
- Bridge: `NAME`
- Template: `bga_angefordert` — `1.2.276.0.76.3.1.195.10.48` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## EKG angefordert [29265]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`ekg_angefordert.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ekg_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `ekg_angefordert.negationInd` | `bl` | WEAK | TERM(29303009) → DT(boolean) | 60 | alternative |
| `Twelveleadelectrocardiogram.observation` | `—` | WEAK | ADAPT → SPEC → TA | 52 | evidence only |
| `Twelveleadelectrocardiogram.observation` | `—` | WEAK | ADAPT → SPEC → TA_VERSION | 44 | evidence only |
| `Twelveleadelectrocardiogram.observation` | `—` | WEAK | ADAPT → SPEC → INHERIT^-1 → TA | 40 | evidence only |
| `ekg_angefordert.code` | `CE` | WEAK | TERM(29303009) | 35 | evidence only |
| `Twelveleadelectrocardiogram.observation` | `—` | WEAK | ADAPT → SPEC → INHERIT^-1 → TA_VERSION | 32 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29265`
- Bridge: `NAME`
- Template: `ekg_angefordert` — `1.2.276.0.76.3.1.195.10.49` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## Sonographie angefordert [29266]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`sonographie_angefordert.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `sonographie_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `sonographie_angefordert.negationInd` | `bl` | WEAK | TERM(16310003) → DT(boolean) | 60 | alternative |
| `sonographie_angefordert.code` | `CE` | WEAK | TERM(16310003) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29266`
- Bridge: `NAME`
- Template: `sonographie_angefordert` — `1.2.276.0.76.3.1.195.10.50` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## Röntgenthorax angefordert [29267]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`rontgenthorax_angefordert.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `rontgenthorax_angefordert.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `rontgenthorax_angefordert.negationInd` | `bl` | WEAK | TERM(415232002) → DT(boolean) | 60 | alternative |
| `rontgenthorax_angefordert.code` | `CE` | WEAK | TERM(415232002) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29267`
- Bridge: `NAME`
- Template: `rontgenthorax_angefordert` — `1.2.276.0.76.3.1.195.10.51` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## Röntgen-Thorax durchgeführt [21964]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Plainchestxray.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Plainchestxray.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `rontgenthorax_angefordert.negationInd` | `bl` | WEAK | TERM(415232002) → DT(boolean) | 60 | alternative |
| `rontgenthorax_angefordert.code` | `CE` | WEAK | TERM(415232002) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21964`
- Bridge: `NAME`
- Template: `Plainchestxray` — `1.2.276.0.76.10.4050` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.361`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`

## Röntgen-Becken durchgeführt [21966]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Pelvisxray.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Pelvisxray.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21966`
- Bridge: `NAME`
- Template: `Pelvisxray` — `1.2.276.0.76.10.4052` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.397`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`

## Röntgen-Wirbelsäule durchgeführt [21968]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Relevantdiagnostictestsorlaboratorydata.section@20251201`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Relevantdiagnostictestsorlaboratorydata.section@20251201` | `—` | CONTEXT | CTX[21762] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## CT Kopf durchgeführt [21972]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Computedtomographyofentirehead.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Computedtomographyofentirehead.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21972`
- Bridge: `NAME`
- Template: `Computedtomographyofentirehead` — `1.2.276.0.76.10.4055` @ `2015-09-18T00:00:00`
- Element: `@negationInd` — `2.16.840.1.113883.2.6.60.3.9.451`
- CDA path: `hl7:observation/@negationInd`
- CDA datatype: `bl`

## CT HWS durchgeführt [21974]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`ct_hws_durchgefuhrt.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct_hws_durchgefuhrt.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `ct_hws_durchgefuhrt.negationInd` | `bl` | WEAK | TERM(241578008) → DT(boolean) | 60 | alternative |
| `ct_hws_durchgefuhrt.code` | `CE` | WEAK | TERM(241578008) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21974`
- Bridge: `NAME`
- Template: `ct_hws_durchgefuhrt` — `1.2.276.0.76.3.1.195.10.57` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## CT Thorax durchgeführt [21976]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`ct_thorax_durchgefuhrt.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct_thorax_durchgefuhrt.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `ct_thorax_durchgefuhrt.negationInd` | `bl` | WEAK | TERM(169069000) → DT(boolean) | 60 | alternative |
| `ct_thorax_durchgefuhrt.code` | `CE` | WEAK | TERM(169069000) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21976`
- Bridge: `NAME`
- Template: `ct_thorax_durchgefuhrt` — `1.2.276.0.76.3.1.195.10.58` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## CT Abdomen durchgeführt [21978]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`ct_abdomen_durchgefuhrt.negationInd` `[bl]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct_abdomen_durchgefuhrt.negationInd` | `bl` | MEDIUM | NAME | 85 | SELECTED |
| `ct_abdomen_durchgefuhrt.negationInd` | `bl` | WEAK | TERM(169070004) → DT(boolean) | 60 | alternative |
| `ct_abdomen_durchgefuhrt.code` | `CE` | WEAK | TERM(169070004) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21978`
- Bridge: `NAME`
- Template: `ct_abdomen_durchgefuhrt` — `1.2.276.0.76.3.1.195.10.59` @ `2024-05-24T00:00:00`
- Element: `@negationInd` — ``
- CDA path: `hl7:procedure/@negationInd`
- CDA datatype: `bl`

## CT- bzw. MR- bzw. DS-Angiographie [22056]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie`

**YES · WEAK · INDIRECT · EXECUTABLE**

**Selected:**

`ct-mr-ds-angiographie.value` `[CV]`

**Reason:**

Terminology locates the CDA template and datatype compatibility identifies its unique payload. The evidence is indirect, so the selection should be reviewed.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `ct-mr-ds-angiographie.value` | `CV` | WEAK | TERM(FLN-122) → DT(code) | 60 | SELECTED |
| `ct-mr-ds-angiographie.code` | `CE` | WEAK | TERM(FLN-122) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.22056`
- Bridge: `TERM(FLN-122) → DT(code)`
- Template: `ct-mr-ds-angiographie` — `1.2.276.0.76.3.1.195.10.91` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

**Suggested action:**

Verify the selected target because the evidence is indirect.

## Zeitpunkt [29603]

`diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardDiagnostik.observation`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation` | `—` | CONTEXT | CTX[29608] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zeitraum [29609]

`diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardDiagnostik.observation`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation` | `—` | CONTEXT | CTX[29608] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Code [29604]

`diagnostik.wildcard_diagnostik.code`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardDiagnostik.observation`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation` | `—` | CONTEXT | CTX[29601] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wert [29605]

`diagnostik.wildcard_diagnostik.wert`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardDiagnostik.observation`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation` | `—` | CONTEXT | CTX[29601] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Definitorischer Link [29606]

`diagnostik.wildcard_diagnostik.definitorischer_link`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardDiagnostik.observation`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardDiagnostik.observation` | `—` | CONTEXT | CTX[29601] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Isolation [7]

`masnahmen.isolation.isolation`

**YES · MEDIUM · INDIRECT · TRANSFORM**

**Selected:**

`isolation.negationInd` `[bl]` with declarative transform

**Reason:**

The datapoint and CDA target represent the same information with different representations, so a declarative transform is required.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `isolation.negationInd` | `bl` | MEDIUM | SEMANTIC_STATE → TRANSFORM(enum→negationInd) | 78 | SELECTED / TRANSFORM |
| `isolation.negationInd` | `bl` | MEDIUM | SPEC → TA_SPEC | 91 | evidence only |
| `isolation.negationInd` | `bl` | MEDIUM | SPEC → INHERIT^-1 → TA_SPEC | 79 | evidence only |
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

Verify the generated transform and its value mapping before use.

## Isolation Begründung [8]

`masnahmen.isolation.isolation_begrundung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Isolationindication.observation.value@20240814` `[CV]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Isolationindication.observation.value@20240814` | `CV` | MEDIUM | SPEC → TA_SPEC | 91 | SELECTED |
| `Isolationindication.observation.value@20240814` | `CV` | MEDIUM | SPEC → INHERIT^-1 → TA_SPEC | 79 | alternative |
| `Isolationindication.observation.value@20240814` | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.25) | 55 | alternative |
| `isolation.procedure` | `—` | WEAK | ADAPT → SPEC → TA_SPEC | 46 | evidence only |
| `isolation.procedure` | `—` | WEAK | ADAPT → SPEC → INHERIT^-1 → TA_SPEC | 34 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.8`
- Bridge: `SPEC → TA_SPEC`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.8` — Isolation Begründung
- Template: `Isolationindication` — `1.2.276.0.76.3.1.195.10.66` @ `2024-08-14T18:14:44`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.4069.1`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CV`

## Zeitpunkt [29614]

`masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitpunkt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardTherapie.procedure`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.procedure` | `—` | CONTEXT | CTX[29613] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zeitraum [29615]

`masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitraum`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardTherapie.procedure`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.procedure` | `—` | CONTEXT | CTX[29613] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Code [29612]

`masnahmen.wildcard_therapie.code`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardTherapie.procedure`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.procedure` | `—` | CONTEXT | CTX[29610] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Definitorischer Link [29611]

`masnahmen.wildcard_therapie.definitorischer_link`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`WildcardTherapie.procedure`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `WildcardTherapie.procedure` | `—` | CONTEXT | CTX[29610] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Freitext Abschlussdiagnose [42]

`abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Problemobservationeddiagnosis.observation.value.originalText@20170213` `[ST]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationeddiagnosis.observation.value.originalText@20170213` | `ST` | MEDIUM | SPEC → TA_VERSION | 89 | SELECTED |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.42`
- Bridge: `SPEC → TA_VERSION`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.3.42` — Abschlussdiagnose
- Template: `Problemobservationeddiagnosis` — `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`
- Element: `hl7:originalText` — `2.16.840.1.113883.2.6.60.3.9.1555`
- CDA path: `hl7:observation/hl7:value/hl7:originalText`
- CDA datatype: `ST`

## ICD-10 [44]

`abschlussdiagnosen.abschlussdiagnose.icd10`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`Problemobservationeddiagnosis.observation.value@20170213` `[CD]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationeddiagnosis.observation.value@20170213` | `CD` | MEDIUM | SPEC → TA_VERSION | 89 | SELECTED |
| `Problemobservationeddiagnosis.observation.value@20170213` | `CD` | MEDIUM | SPEC → EQUIV → INHERIT^-1 → TA_VERSION | 74 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.44`
- Bridge: `SPEC → TA_VERSION`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.3.44` — ICD10
- Template: `Problemobservationeddiagnosis` — `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.635`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CD`

## ICD-10 Sekundärdiagnose [29508]

`abschlussdiagnosen.abschlussdiagnose.icd10_sekundardiagnose`

**YES · WEAK · INDIRECT · REQUIRES RULE**

**Selected:**

`Problemobservationeddiagnosis.observation.value@20170213` `[CD]`

**Reason:**

The best CDA target is supported by mapping evidence, but it is shared with another dataset field and therefore needs an explicit rule before execution.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemobservationeddiagnosis.observation.value@20170213` | `CD` | WEAK | ADAPT → SPEC → TA_VERSION | 44 | SELECTED / REQUIRES RULE |
| `Problemobservationeddiagnosis.observation.value@20170213` | `CD` | WEAK | ADAPT → SPEC → EQUIV → INHERIT^-1 → TA_VERSION | 29 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.29508`
- Bridge: `ADAPT → SPEC → TA_VERSION`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.3.44` — ICD10
- Template: `Problemobservationeddiagnosis` — `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`
- Element: `hl7:value` — `2.16.840.1.113883.2.6.60.3.9.635`
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `CD`
- Warnings: lineage name drift

**Suggested action:**

Define an explicit merge/repetition rule before enabling this mapping. Verify the selected target because the evidence is indirect.

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

`Problemconcernacteddiagnoses.act.entryRelationship.sequenceNumber@20160622` `[INT.POS]`

**Reason:**

An explicit ART-DECOR implementation XPath identifies this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Problemconcernacteddiagnoses.act.entryRelationship.sequenceNumber@20160622` | `INT.POS` | STRONG | XPATH(1.2.276.0.76.10.4048) | 125 | SELECTED |
| `Problemconcernacteddiagnoses.act.entryRelationship.sequenceNumber@20160622` | `INT.POS` | STRONG | TA | 100 | alternative |
| `Problemconcernacteddiagnoses.act.entryRelationship.sequenceNumber@20160622` | `INT.POS` | MEDIUM | TA_VERSION | 92 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.2.20023`
- Bridge: `XPATH(1.2.276.0.76.10.4048)`
- Template: `Problemconcernacteddiagnoses` — `1.2.276.0.76.10.4048` @ `2016-06-22T00:00:00`
- Element: `hl7:sequenceNumber` — `2.16.840.1.113883.2.6.60.3.9.1263`
- CDA path: `hl7:act/hl7:entryRelationship/hl7:sequenceNumber`
- CDA datatype: `INT.POS`

## Procedere [46]

`weiteres_procedere_therapieempfehlung_weiterbehandler.procedere`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Eddisposition.section`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Eddisposition.section` | `—` | CONTEXT | CTX[10014] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Typ Verlegung [20021]

`administrative_verlegungsentlassungsinformationen.typ_verlegung`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

Candidate evidence exists, but none is safe enough to become an executable mapping automatically.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Referralto.act.code@20251201` | `CE` | STRONG | SPEC → TA | 97 | evidence only |
| `Referralto.act.code@20251201` | `CE` | MEDIUM | SPEC → TA_VERSION | 89 | evidence only |
| `Referralto.act.code@20251201` | `CE` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | evidence only |
| `Referralto.act.code@20251201` | `CE` | MEDIUM | SPEC → INHERIT^-1 → TA_VERSION | 77 | evidence only |
| `Referralto.act.code@20251201` | `CE` | WEAK | VS(1.2.276.0.76.11.53) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Typ Entlassung [20022]

`administrative_verlegungsentlassungsinformationen.typ_entlassung`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

Candidate evidence exists, but none is safe enough to become an executable mapping automatically.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.dischargeDispositionCode@20160601` | `CV` | STRONG | SPEC → TA | 97 | evidence only |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.dischargeDispositionCode@20160601` | `CV` | MEDIUM | SPEC → TA_VERSION | 89 | evidence only |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.dischargeDispositionCode@20160601` | `CV` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | evidence only |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.dischargeDispositionCode@20160601` | `CV` | MEDIUM | SPEC → INHERIT^-1 → TA_VERSION | 77 | evidence only |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.dischargeDispositionCode@20160601` | `CV` | WEAK | VS(1.2.276.0.76.11.56) | 55 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Zeitpunkt Entscheidung zur Verlegung / Entlassung [20237]

`administrative_verlegungsentlassungsinformationen.zeitpunkt_entscheidung_zur_verlegung_entlassung`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`zeitpunkt_entscheidung_zur_verlegung__entlassung.value` `[TS]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `zeitpunkt_entscheidung_zur_verlegung__entlassung.value` | `TS` | MEDIUM | NAME | 85 | SELECTED |
| `zeitpunkt_entscheidung_zur_verlegung__entlassung.code` | `CE` | WEAK | TERM(FLN-124) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20237`
- Bridge: `NAME`
- Template: `zeitpunkt_entscheidung_zur_verlegung__entlassung` — `1.2.276.0.76.3.1.195.10.75` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `TS`

## Zeitpunkt Patient verlegungs- / entlassungsfähig [20814]

`administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig`

**YES · MEDIUM · INDIRECT · EXECUTABLE**

**Selected:**

`zeitpunkt_patient_verlegungs__entlassungsfahig.value` `[TS]`

**Reason:**

A unique semantic template-name match provides the bridge to this CDA target.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `zeitpunkt_patient_verlegungs__entlassungsfahig.value` | `TS` | MEDIUM | NAME | 85 | SELECTED |
| `zeitpunkt_patient_verlegungs__entlassungsfahig.code` | `CE` | WEAK | TERM(FLN-125) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.20814`
- Bridge: `NAME`
- Template: `zeitpunkt_patient_verlegungs__entlassungsfahig` — `1.2.276.0.76.3.1.195.10.76` @ `2024-05-24T00:00:00`
- Element: `hl7:value` — ``
- CDA path: `hl7:observation/hl7:value`
- CDA datatype: `TS`

## Zeitpunkt Patient verlegt / entlassen nach [882]

`administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach`

**YES · STRONG · EXACT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601` `[TS.DATE.MIN]`

**Reason:**

A formal template association connects the datapoint lineage to this CDA element.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601` | `TS.DATE.MIN` | STRONG | SPEC → TA | 97 | SELECTED |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601` | `TS.DATE.MIN` | MEDIUM | SPEC → TA_VERSION | 89 | alternative |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601` | `TS.DATE.MIN` | MEDIUM | SPEC → INHERIT^-1 → TA | 85 | alternative |
| `zeitpunkt_patient_verlegt__entlassen_nach.value` | `TS` | MEDIUM | NAME | 85 | alternative |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601` | `TS.DATE.MIN` | MEDIUM | SPEC → INHERIT^-1 → TA_VERSION | 77 | alternative |
| `zeitpunkt_patient_verlegt__entlassen_nach.code` | `CE` | WEAK | TERM(FLN-126) | 35 | evidence only |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.882`
- Bridge: `SPEC → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.882` — Zeitpunkt Patient verlegt / entlassen nach
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:high` — `2.16.840.1.113883.2.6.60.3.9.223`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high`
- CDA datatype: `TS.DATE.MIN`

## Zeitpunkt Beginn patientenbezogene Dokumentation [21744]

`dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation`

**YES · WEAK · INDIRECT · EXECUTABLE**

**Selected:**

`CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` `[TS.DATE.MIN]`

**Structural rule:**

`coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601`

**Reason:**

The CDA target is supported by mapping evidence and the shared occurrence semantics are made explicit by structural rule `coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601`.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | `TS.DATE.MIN` | WEAK | ADAPT → SPEC → INHERIT^-1 → TA | 40 | SELECTED |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | `TS.DATE.MIN` | WEAK | ADAPT → SPEC → INHERIT^-1 → TA_VERSION | 32 | alternative |

### Evidence chain

- Dataset concept: `2.16.840.1.113883.2.6.60.3.2.9.21744`
- Bridge: `ADAPT → SPEC → INHERIT^-1 → TA`
- Via concept: `2.16.840.1.113883.2.6.60.3.2.2.58`
- Template: `CDAEncompassingEncounter` — `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`
- Element: `hl7:low` — `2.16.840.1.113883.2.6.60.3.9.222`
- CDA path: `hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low`
- CDA datatype: `TS.DATE.MIN`
- Warnings: lineage name drift

**Suggested action:**

Verify the selected target because the evidence is indirect.

## Zeit bis zum Export [21742]

`dokumentationsinformationen.berechnete_zeitintervalle.zeit_bis_zum_export`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

Candidate evidence exists, but none is safe enough to become an executable mapping automatically.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | `TS.DATE.MIN` | WEAK | ADAPT → ADAPT → SPEC → INHERIT^-1 → TA | 15 | evidence only |
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | `TS.DATE.MIN` | WEAK | ADAPT → ADAPT → SPEC → INHERIT^-1 → TA_VERSION | 7 | evidence only |

**Suggested action:**

Review the candidates and set the intended target in `cda-mapping.json`, or leave the field explicitly `null`.

## Name des EDIS [21738]

`dokumentationsinformationen.datenbereitstellung.name_des_edis`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

No usable CDA target evidence was found for this datapoint.

**Suggested action:**

Find the intended CDA representation manually or leave the field explicitly `null`.

## Version des EDIS [21740]

`dokumentationsinformationen.datenbereitstellung.version_des_edis`

**NO · NOT EXECUTABLE**

**Selected:** none

**Reason:**

No usable CDA target evidence was found for this datapoint.

**Suggested action:**

Find the intended CDA representation manually or leave the field explicitly `null`.

## Arzneimittel-Name [488]

`masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[487] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Arzneimittel-Code [489]

`masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[487] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Darreichungsform [492]

`masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[483] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wirkstoff-Name [485]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wirkstoff-Code [486]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Arzneilich wirksamer Bestandteil? [519]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Wirkstärke [493]

`masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[484] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Chargennummer [738]

`masnahmen.medikamentose_therapie.medikation.medikament.chargennummer`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[483] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## (Start)zeitpunkt der Anwendung [497]

`masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[496] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Stoppzeitpunkt der Anwendung [498]

`masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[496] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Sequenznummer [523]

`masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Freitext [524]

`masnahmen.medikamentose_therapie.medikation.dosierung.freitext`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zusätzliche Hinweise [533]

`masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Anweisungen zur Einnahme [534]

`masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Zeitpunkt [526]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[525] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Ereignis [528]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.ereignis`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[527] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Offset [529]

`masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[527] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Einnahme bei Bedarf [530]

`masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Körperstelle [535]

`masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Art der Anwendung [531]

`masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Methode der Anwendung [532]

`masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Dosismenge und -einheit [494]

`masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Kontinuierliche Gabe (Rate) [495]

`masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[522] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Begründungstext [501]

`masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[520] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

## Kodierte Begründung [521]

`masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung`

**PARTIAL · CONTEXT · NOT EXECUTABLE**

**Context:**

`Medikation.substanceAdministration`

**Reason:**

No executable CDA element could be established; the nearest mapped structural group supplies only contextual placement.

### Candidates

| Target | Datatype | Confidence | Evidence | Score | Result |
|---|---|---|---|---:|---|
| `Medikation.substanceAdministration` | `—` | CONTEXT | CTX[520] | 0 | context only |

**Suggested action:**

Use the contextual target to navigate the CDA structure, then choose an actual value-bearing element or leave the field unmapped.

# Structural group context

## Patient [10002]

`patient`

**YES · STRONG · EXACT**

→ `CDArecordTargetnnar.recordTarget`

Evidence: `SPEC → TA`

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

**PARTIAL · CONTEXT**

→ `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4`

## Versicherungsverhältnis [21581]

`hauptkostentrager.versicherungsverhaltnis`

**PARTIAL · CONTEXT**

→ `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4`

## Administrative Aufnahmeinformationen [20099]

`administrative_aufnahmeinformationen`

**NO**

## Zuweisung zur Notaufnahme [10017]

`administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme`

**YES · MEDIUM · INDIRECT**

→ `Referralfrom.act`

Evidence: `SPEC → INHERIT^-1 → TA`

## Transport [10005]

`administrative_aufnahmeinformationen.transport`

**YES · STRONG · EXACT**

→ `CDAEncompassingEncounter.componentOf.encompassingEncounter@20160601`

Evidence: `SPEC → TA`

## Ersteinschätzung [10029]

`ersteinschatzung`

**YES · MEDIUM · MULTIPLE(2)**

→ `ersteinschatzung-section.section`

Evidence: `NAME`

## Parameter der Ersteinschätzung [29249]

`ersteinschatzung.parameter_der_ersteinschatzung`

**PARTIAL · CONTEXT**

→ `ersteinschatzung-section.section`

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

**YES · STRONG · EXACT**

→ `HistoryofPresentIllnessSection.section@20251201`

Evidence: `SPEC → TA`

## Beschwerden bei Vorstellung [10034]

`notfallanamnese.beschwerden_bei_vorstellung`

**YES · STRONG · EXACT**

→ `Chiefcomplaintreasonforvisit.section`

Evidence: `SPEC → TA`

## Unfall-Anamnese [20154]

`notfallanamnese.unfallanamnese`

**YES · MEDIUM · INDIRECT**

→ `unfall-anamnese.act`

Evidence: `NAME`

## Klinische Basisdaten Patient [10016]

`klinische_basisdaten_patient`

**YES · STRONG · EXACT**

→ `ClinicalInformation.section@20160802`

Evidence: `SPEC → TA`

## Allergien [10009]

`klinische_basisdaten_patient.allergien`

**YES · MEDIUM · INDIRECT**

→ `AllergienUnvertraeglichkeiten.section`

Evidence: `SPEC → INHERIT^-1 → TA`

## Abgeleitete Informationen zur Weitergabe [29219]

`klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe`

**PARTIAL · CONTEXT**

→ `AllergienUnvertraeglichkeiten.section`

## Vitalparameter [10006]

`vitalparameter`

**YES · STRONG · EXACT**

→ `VitalSignsSection.section@20251201`

Evidence: `SPEC → TA`

## Blutdruck [20141]

`vitalparameter.blutdruck`

**PARTIAL · CONTEXT**

→ `VitalSignsSection.section@20251201`

## Puls [20146]

`vitalparameter.puls`

**PARTIAL · CONTEXT**

→ `VitalSignsSection.section@20251201`

## Pupillenweite [10032]

`vitalparameter.pupillenweite`

**YES · MEDIUM · INDIRECT**

→ `Pupilsize.observation`

Evidence: `ORIGINAL → INHERIT^-1 → TA`

## Pupillenreaktion [10033]

`vitalparameter.pupillenreaktion`

**YES · MEDIUM · INDIRECT**

→ `Pupilreaction.observation`

Evidence: `ORIGINAL → INHERIT^-1 → TA`

## Körperkerntemperatur [20]

`vitalparameter.korperkerntemperatur`

**YES · STRONG · EXACT**

→ `BodyTemperatureCore.value`

Evidence: `SPEC → TA`

## Scores [20207]

`scores`

**NO**

## Glasgow Coma Scale (GCS) [10007]

`scores.glasgow_coma_scale_gcs`

**YES · STRONG · EXACT**

→ `GlasgowComaScale.observation`

Evidence: `SPEC → TA`

## Schmerzmessung [20815]

`scores.schmerzmessung`

**YES · MEDIUM · INDIRECT**

→ `Painseverity.observation`

Evidence: `NAME`

## Diagnostik [10011]

`diagnostik`

**YES · STRONG · EXACT**

→ `Relevantdiagnostictestsorlaboratorydata.section@20251201`

Evidence: `SPEC → TA`

## Bildgebende Diagnostik [20720]

`diagnostik.bildgebende_diagnostik`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section@20251201`

## Magnetresonanztomographie [20727]

`diagnostik.bildgebende_diagnostik.magnetresonanztomographie`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section@20251201`

## Röntgen [20728]

`diagnostik.bildgebende_diagnostik.rontgen`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section@20251201`

## Abgeleitete Informationen über Diagnostik zur Weitergabe [21762]

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe`

**PARTIAL · CONTEXT**

→ `Relevantdiagnostictestsorlaboratorydata.section@20251201`

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

Evidence: `SPEC → TA_SPEC`

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

→ `Eddiagnosis.section@20160622`

Evidence: `SPEC → TA_VERSION`

## Abschlussdiagnose [10012]

`abschlussdiagnosen.abschlussdiagnose`

**YES · MEDIUM · MULTIPLE(2)**

→ `Problemobservationeddiagnosis.observation@20170213`

Evidence: `SPEC → TA_VERSION`

## Weiteres Procedere / Therapieempfehlung / Weiterbehandler [10014]

`weiteres_procedere_therapieempfehlung_weiterbehandler`

**YES · STRONG · EXACT**

→ `Eddisposition.section`

Evidence: `SPEC → TA`

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

