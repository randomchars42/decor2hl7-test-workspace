# Extended dataset-to-CDA coverage trees

Edit `cda-mapping.json`, not this report.

Document template: **Notaufnahmeregister Transitionsversion** (`1.2.276.0.76.3.1.195.10.93` @ `2026-03-25T11:04:07`)

Model: **128 datapoints** · ✓ mapped **123 dp → 135 leaves** · = reviewed null **5 dp** · ! suggested **0 dp → 0 leaves** · × no target **0 dp** · ○ no source **353 leaves**

The primary tree line is kept compact. Indented evidence lines mean:

- `S:` source concept OID, stable dataset path, logical type and cardinality;
- `T:` owning template/revision, template-relative XPath, CDA datatype, cardinality, conformance and required ValueSet where available;
- `A:` exact ART-DECOR Beschreibung on the target or an owner-template ancestor, with its template-relative path;
- `R:` executable transform, structural rule, active required-leaf completion policy, reviewed default or site responsibility;
- `G:` reviewed non-transmission or unresolved evidence gate and reopening condition.

Status: `✓` mapped; `!` suggested but not selected; `×` no approved target; `=` intentionally unmapped; `○` physical CDA leaf without a dataset counterpart; `D` exact reviewed target default; `▲` unresolved required construction; `◆` site-owned required construction. Markers may combine.

Logical targets identify separately reviewable occurrences. When several logical occurrences write one repeatable CDA leaf, the report also names the shared physical target. The inverse no-source count is therefore computed after logical-to-physical resolution.

The CDA tree excludes generic datatype-expansion plumbing and fixed, conditional-fixed, or system-supplied values. Those remain available in `cda.json`.

## Complete dataset tree

`Dataset datapoint` → `{logical CDA target}`

```text
   Dataset model — 128 datapoints
   ├── Patient
   │   ├── Anschrift
✓  │   │   └── Postleitzahl → {CDArecordTargetnnar.recordTarget.patientRole.addr.postalCode}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20123 · patient.anschrift.postleitzahl · text · 1..1
   │   │       T: CDA recordTarget (nnar) (CDArecordTargetnnar) · 1.2.276.0.76.10.2032 @ 2014-09-17T00:00:00 · template-relative hl7:recordTarget/hl7:patientRole/hl7:addr/hl7:postalCode · adxp.postalCode 0..*
   │   ├── Identifikatoren
✓  │   │   └── Patienten ID → {PatientIdentifier.id}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.3 · patient.identifikatoren.patienten_id · identifier · 0..1
   │   │       T: Patientenidentifikation (PatientIdentifier) · 1.2.276.0.76.10.90024 @ 2014-12-17T00:00:00 · template-relative hl7:id · II 1..1
✓  │   └── Geschlecht → {CDArecordTargetnnar.administrativeGenderCode}
   │       S: reviewed model extension · patient.geschlecht · code · 0..1 · AKTIN approved supplying the administrative gender required by the CDA recordTarget from site source data although the selected dataset omits the field.
   │       T: CDA recordTarget (nnar) (CDArecordTargetnnar) · 1.2.276.0.76.10.2032 @ 2014-09-17T00:00:00 · template-relative hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode · CE 1..1 R · ValueSet 2.16.840.1.113883.1.11.1 @ 2016-06-23T00:00:00
   ├── Hauptkostenträger
   │   ├── Kostenträger
✓  │   │   └── Name → {hauptkostentrager.name}, {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.name}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21579 · hauptkostentrager.kostentrager.name · text · 0..1
   │   │       T1: Hauptkostenträger (hauptkostentrager) · 1.2.276.0.76.3.1.195.10.4 @ 2024-08-09T10:35:24 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name · ON 1..1 R
   │   │       T2: CDA Organization Elements (OrganizationElements) · 1.2.276.0.76.10.90011 @ 2011-12-19T00:00:00 · template-relative hl7:name · ON 1..1
   │   └── Versicherungsverhältnis
✓  │       ├── Identifikation → {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21582 · hauptkostentrager.versicherungsverhaltnis.identifikation · identifier · 0..1
   │       │   T: CDA participant Kostentraeger (HeaderParticipantKostentraeger) · 1.2.276.0.76.10.2022 @ 2014-08-25T00:00:00 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id · II 0..*
✓  │       ├── Versichertenstatus → {HeaderParticipantKostentraeger.code}
   │       │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.versichertenstatus · code · 0..1 · AKTIN approved adding the missing dataset value needed for the CDA Kostenträger participant.
   │       │   T: CDA participant Kostentraeger (HeaderParticipantKostentraeger) · 1.2.276.0.76.10.2022 @ 2014-08-25T00:00:00 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code · CE 0..1 · ValueSet 1.2.276.0.76.11.68 @ 2011-12-19T00:00:00
✓  │       ├── Versichertenstatus GKV → {HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1}
   │       │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv · code · 0..1 · AKTIN approved adding the missing GKV status coding expected by the CDA Kostenträger translation.
   │       │   T: CDA participant Kostentraeger (HeaderParticipantKostentraeger) · 1.2.276.0.76.10.2022 @ 2014-08-25T00:00:00 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1'] · CV 0..1 · ValueSet 1.2.276.0.76.11.162 @ 2014-01-01T00:00:00
✓  │       ├── Weitere Versichertenstatuskodierung → {HeaderParticipantKostentraeger.translation}
   │       │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.weitere_versichertenstatuskodierung · code · 0..1 · AKTIN approved a configurable additional coding for the repeating CDA Versichertenstatus translation.
   │       │   T: CDA participant Kostentraeger (HeaderParticipantKostentraeger) · 1.2.276.0.76.10.2022 @ 2014-08-25T00:00:00 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation · CV 0..*
✓  │       └── Als KV-Fall abgerechnet → {hauptkostentrager.code}
   │           S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.kv_fall · code · 0..1 · AKTIN approved adding the missing dataset value expected by the CDA Hauptkostenträger template.
   │           T: Hauptkostenträger (hauptkostentrager) · 1.2.276.0.76.3.1.195.10.4 @ 2024-08-09T10:35:24 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:code · CE 0..1 · ValueSet 1.2.276.0.76.3.1.195.11.19 @ 2024-08-08T20:33:01
   ├── Administrative Aufnahmeinformationen
   │   ├── Zuweisung zur Notaufnahme
✓  │   │   └── Zuweisung → {Referralfrom.act.participant.participantRole.code}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.22 · administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung · code · 1..1
   │   │       T: Zuweisung mit Zuweiser (Referralfrom) · 1.2.276.0.76.10.4038 @ 2015-09-18T00:00:00 · template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.11.42 @ 2015-09-18T00:00:00
   │   ├── Transport
✓  │   │   ├── Transportmittel → {Transportmethod.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20139 · administrative_aufnahmeinformationen.transport.transportmittel · code · 0..1
   │   │   │   T: Transportmethode (Transportmethod) · 1.2.276.0.76.10.4037 @ 2015-03-03T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.41 @ 2015-11-17T00:00:00
✓  │   │   ├── Medizinische Begleitung → {medizinische-begleitung.code}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20140 · administrative_aufnahmeinformationen.transport.medizinische_begleitung · code · 0..1
   │   │   │   T: Medizinische Begleitung (medizinische-begleitung) · 1.2.276.0.76.3.1.195.10.12 @ 2024-08-13T12:56:59 · template-relative hl7:procedure/hl7:code · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.2 @ 2024-02-14T11:23:51
✓  │   │   └── Ankunftszeit → {Transportmethod.high}
   │   │       S: reviewed model extension · administrative_aufnahmeinformationen.transport.ankunftszeit · datetime · 0..1 · AKTIN approved adding the missing arrival timestamp expected by the CDA Transportmethode template.
   │   │       T: Transportmethode (Transportmethod) · 1.2.276.0.76.10.4037 @ 2015-03-03T00:00:00 · template-relative hl7:observation/hl7:effectiveTime/hl7:high · TS 1..1
✓  │   ├── Aufnahmezeitpunkt → {CDAEncompassingEncounter.low}, {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.low}, {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.time.high}, {Allergyconcernact.low}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.58 · administrative_aufnahmeinformationen.aufnahmezeitpunkt · datetime · 0..1
   │   │   T1: CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter) · 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00 · template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low · TS.DATE.MIN 1..1 R
   │   │   T2: Dienstleistung/Behandlung (Basis) (CDADocumentationOf) · 1.2.276.0.76.10.2035 @ 2014-09-17T00:00:00 · template-relative hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low · TS.DATETIME.MIN 1..1 R
   │   │   T3: CDA participant Kostentraeger (HeaderParticipantKostentraeger) · 1.2.276.0.76.10.2022 @ 2014-08-25T00:00:00 · template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time/hl7:high · IVXB_TS 0..1
   │   │   R: if_active; writes only when target HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id has a mapped value; transform quarter_end; AKTIN approved deriving the insurance-period quarter end from Aufnahmezeitpunkt; the value is emitted only when another mapping activates the generic Kostenträger participant.
   │   │   T4: Allergy Concern Act (Allergyconcernact) · 1.2.276.0.76.10.4065 @ 2015-03-27T00:00:00 · template-relative hl7:act/hl7:effectiveTime/hl7:low · TS 1..1
   │   │   R: fallback_if_active; fills only an already-active CDA branch; AKTIN confirmed that the emergency-department collection time may populate the Allergy Concern Act start; this reviewed mapping uses Aufnahmezeitpunkt and must not activate an otherwise absent allergy branch.
✓  │   ├── Fallnummer → {CDAEncompassingEncounter.id_1}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20094 · administrative_aufnahmeinformationen.fallnummer · identifier · 0..1
   │   │   T: CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter) · 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00 · template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:id[1] · II 1..* R
✓  │   └── Episodennummer → {CDAEncompassingEncounter.id_2}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20093 · administrative_aufnahmeinformationen.episodennummer · identifier · 1..1
   │       T: CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter) · 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00 · template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:id[2] · II 0..1 R
   ├── Ersteinschätzung
   │   ├── Parameter der Ersteinschätzung
   │   │   ├── Manchester Triage System
   │   │   │   ├── MTS-Indikator
✓  │   │   │   │   ├── MTS-Indikatoren ROT → {mts-indikatoren-rot.value}
   │   │   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21047 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot · code · 0..1
   │   │   │   │   │   T: MTS-Indikatoren ROT (mts-indikatoren-rot) · 1.2.276.0.76.3.1.195.10.22 @ 2024-08-13T10:50:15 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.13 @ 2024-07-22T16:51:10
✓  │   │   │   │   ├── MTS-Indikatoren ORANGE → {mts-indikatoren-orange.value}
   │   │   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21048 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange · code · 0..1
   │   │   │   │   │   T: MTS-Indikatoren ORANGE (mts-indikatoren-orange) · 1.2.276.0.76.3.1.195.10.23 @ 2024-08-13T10:50:15 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.14 @ 2024-07-22T16:51:10
✓  │   │   │   │   ├── MTS-Indikatoren GELB → {mts-indikatoren-gelb.value}
   │   │   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21049 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb · code · 0..1
   │   │   │   │   │   T: MTS-Indikatoren GELB (mts-indikatoren-gelb) · 1.2.276.0.76.3.1.195.10.24 @ 2024-08-13T10:50:15 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.15 @ 2024-07-22T16:51:10
✓  │   │   │   │   └── MTS-Indikatoren GRÜN → {mts-indikatoren-grun.value}
   │   │   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21050 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun · code · 0..1
   │   │   │   │       T: MTS-Indikatoren GRÜN (mts-indikatoren-grun) · 1.2.276.0.76.3.1.195.10.25 @ 2024-08-13T10:50:15 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.16 @ 2024-07-22T16:51:10
✓  │   │   │   └── MTS-Präsentationsdiagramm → {mts-prasentationsdiagramm.value}
   │   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21074 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm · code · 0..1
   │   │   │       T: MTS-Präsentationsdiagramm (mts-prasentationsdiagramm) · 1.2.276.0.76.3.1.195.10.21 @ 2024-08-13T10:50:15 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.10 @ 2024-02-11T21:23:38
✓  │   │   ├── Ergebnis der Ersteinschätzung → {ersteinschatzung.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21746 · ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung · code · 1..1
   │   │   │   T: Ersteinschätzung (ersteinschatzung) · 1.2.276.0.76.3.1.195.10.18 @ 2024-08-13T14:17:50 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.11 @ 2024-07-22T14:52:50
   │   │   │   R: transform enum, select raw
✓  │   │   ├── Zeitpunkt der Ersteinschätzung → {ersteinschatzung.effectiveTime}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.770 · ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung · datetime · 1..1
   │   │   │   T: Ersteinschätzung (ersteinschatzung) · 1.2.276.0.76.3.1.195.10.18 @ 2024-08-13T14:17:50 · template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
✓  │   │   ├── verwendetes Ersteinschätzungssystem → {ersteinschatzung.methodCode}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.804 · ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem · code · 1..1
   │   │   │   T: Ersteinschätzung (ersteinschatzung) · 1.2.276.0.76.3.1.195.10.18 @ 2024-08-13T14:17:50 · template-relative hl7:observation/hl7:methodCode · CD 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.12 @ 2024-07-22T15:20:32
✓  │   │   └── ESI-Triage → {esi-triage-faktoren.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21073 · ersteinschatzung.parameter_der_ersteinschatzung.esitriage · code · 0..1
   │   │       T: ESI-Triagefaktoren (esi-triage-faktoren) · 1.2.276.0.76.3.1.195.10.26 @ 2024-08-13T10:50:15 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.20 @ 2024-07-22T16:51:10
   │   │       R: transform enum, select raw
✓  │   └── Direkter Arztkontakt → {direkter_arztkontakt.observation.negationInd}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21559 · ersteinschatzung.direkter_arztkontakt · boolean · 0..1
   │       T: Direkter Arztkontakt (direkter_arztkontakt) · 1.2.276.0.76.3.1.195.10.17 @ 2024-05-24T00:00:00 · template-relative hl7:observation/@negationInd · BL 0..1 R
   │       R: transform not
   ├── Notfallanamnese
   │   ├── Beschwerden bei Vorstellung
✓  │   │   ├── Beschwerden bei Vorstellung (Freitext) → {Problemobservationcedis.originalText}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.36 · notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext · text · 1..1
   │   │   │   T: Problem Observation (Text/CEDIS) (Problemobservationcedis) · 1.2.276.0.76.10.4040 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:value/hl7:originalText · ST 0..1 C
✓  │   │   ├── Beschwerden bei Vorstellung (CEDIS) → {Problemobservationcedis.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.805 · notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis · code · 0..1
   │   │   │   T: Problem Observation (Text/CEDIS) (Problemobservationcedis) · 1.2.276.0.76.10.4040 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.61 @ 2016-02-21T00:00:00
✓  │   │   └── Ereigniseintritt → {Problemconcernactcedis.low}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20101 · notfallanamnese.beschwerden_bei_vorstellung.ereigniseintritt · datetime · 0..1
   │   │       T: Problem Concern Act (Text/CEDIS) (Problemconcernactcedis) · 1.2.276.0.76.10.4039 @ 2015-03-03T00:00:00 · template-relative hl7:act/hl7:effectiveTime/hl7:low · IVXB_TS 1..1 R
   │   ├── Unfall-Anamnese
✓  │   │   ├── Unfallursache → {unfallursache-kinetik.observation.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20156 · notfallanamnese.unfallanamnese.unfallursache · code · 0..1
   │   │   │   T: Unfallursache/-kinetik (unfallursache-kinetik) · 1.2.276.0.76.3.1.195.10.29 @ 2024-08-13T18:37:55 · template-relative hl7:observation/hl7:value · CD 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.6 @ 2024-02-14T13:19:28
✓  │   │   ├── Fahrzeug des Verunfallten → {unfall-anamnese.act.participant.participantRole.code}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20278 · notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten · code · 0..1
   │   │   │   T: Unfall-Anamnese (unfall-anamnese) · 1.2.276.0.76.3.1.195.10.28 @ 2024-08-13T18:34:56 · template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.8 @ 2024-06-26T13:29:30
✓  │   │   ├── Unfallkinetik → {unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20280 · notfallanamnese.unfallanamnese.unfallkinetik · code · 0..1
   │   │   │   T: Unfallursache/-kinetik (unfallursache-kinetik) · 1.2.276.0.76.3.1.195.10.29 @ 2024-08-13T18:37:55 · template-relative hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='67496-0']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.5 @ 2024-02-14T12:41:43
✓  │   │   └── Unfallart TraumaRegister → {unfallart-traumaregister.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21748 · notfallanamnese.unfallanamnese.unfallart_trauma_register · code · 0..1
   │   │       T: Unfallart Traumaregister (unfallart-traumaregister) · 1.2.276.0.76.3.1.195.10.30 @ 2024-08-13T18:37:55 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.18 @ 2024-08-08T20:33:01
✓  │   ├── Zeitpunkt erster Arztkontakt → {CDADocumentationOf.documentationOf.serviceEvent.performer.time.low}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.37 · notfallanamnese.zeitpunkt_erster_arztkontakt · datetime · 1..1
   │   │   T: Dienstleistung/Behandlung (Basis) (CDADocumentationOf) · 1.2.276.0.76.10.2035 @ 2014-09-17T00:00:00 · template-relative hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low · TS 1..1 R
✓  │   ├── Notfallanamnese des Patienten → {Additionalmodulessection.text}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.40 · notfallanamnese.notfallanamnese_des_patienten · text · 1..1
   │   │   T: Zusatzmodule (weitere Dokumentation) (Additionalmodulessection) · 1.2.276.0.76.10.3057 @ 2015-03-30T00:00:00 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
✓  │   └── Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? → {substanz-einfluss.value}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20365 · notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq · code · 0..1
   │       T: Substanz-Einfluss (substanz-einfluss) · 1.2.276.0.76.3.1.195.10.32 @ 2024-08-13T18:37:55 · template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.23 @ 2024-07-22T16:51:10
   ├── Klinische Basisdaten Patient
   │   ├── Allergien
   │   │   ├── Abgeleitete Informationen zur Weitergabe
✓  │   │   │   ├── Antibiotikaallergie → {Allergyintoleranceobservation_antibiotikaallergie.negationInd}
   │   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21598 · klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie · boolean · 0..1
   │   │   │   │   T: Allergy / Intolerance Observation (Allergyintoleranceobservation) · 1.2.276.0.76.10.4066 @ 2015-09-18T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1 · logical {Allergyintoleranceobservation_antibiotikaallergie.negationInd} uses physical {Allergyintoleranceobservation.negationInd}
   │   │   │   │   R: repeat_by_discriminator (repeat-by-example-discriminator-allergyintoleranceobservation-negationind); physical {Allergyintoleranceobservation.negationInd}; branch antibiotikaallergie; Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code=code=A07AA, codeSystem=2.16.840.1.113883.6.73, displayName=Antibiotika
✓  │   │   │   └── Kontrastmittelallergie → {Allergyintoleranceobservation_kontrastmittelallergie.negationInd}
   │   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21599 · klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie · boolean · 0..1
   │   │   │       T: Allergy / Intolerance Observation (Allergyintoleranceobservation) · 1.2.276.0.76.10.4066 @ 2015-09-18T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1 · logical {Allergyintoleranceobservation_kontrastmittelallergie.negationInd} uses physical {Allergyintoleranceobservation.negationInd}
   │   │   │       R: repeat_by_discriminator (repeat-by-example-discriminator-allergyintoleranceobservation-negationind); physical {Allergyintoleranceobservation.negationInd}; branch kontrastmittelallergie; Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code=code=V08, codeSystem=2.16.840.1.113883.6.73, displayName=Kontrastmittel
✓  │   │   ├── Allergie Beschreibung → {AllergienUnvertraeglichkeiten.text}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.35 · klinische_basisdaten_patient.allergien.allergie_beschreibung · text · 1..1
   │   │   │   T: Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten) · 1.2.276.0.76.10.3051 @ 2015-03-26T00:00:00 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
✓  │   │   └── Agens → {Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21593 · klinische_basisdaten_patient.allergien.agens · code · 0..1
   │   │       T: Allergy / Intolerance Observation (Allergyintoleranceobservation) · 1.2.276.0.76.10.4066 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:participant/hl7:participantRole/hl7:playingEntity/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.11.52 @ 2015-11-17T00:00:00
   │   │       R: transform coded_fallback, nullFlavor OTH
✓  │   ├── Schwangerschaft → {Pregnancystatus.value}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.5 · klinische_basisdaten_patient.schwangerschaft · code · 0..1
   │   │   T: Status Schwangerschaft (Pregnancystatus) · 1.2.276.0.76.10.4043 @ 2015-03-03T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.46 @ 2015-11-17T00:00:00
   │   │   R: transform enum, select raw
✓  │   └── Tetanusschutz → {Clostridiumtetaniimmunization.negationInd}, {Clostridiumtetaniimmunization.nullFlavor}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.6 · klinische_basisdaten_patient.tetanusschutz · code · 0..1
   │       T1: Immunisierung Clostridium tetani (Clostridiumtetaniimmunization) · 1.2.276.0.76.10.4044 @ 2015-09-18T00:00:00 · template-relative hl7:substanceAdministration/@negationInd · bl 1..1
   │       R: transform enum
   │       T2: Immunisierung Clostridium tetani (Clostridiumtetaniimmunization) · 1.2.276.0.76.10.4044 @ 2015-09-18T00:00:00 · template-relative hl7:substanceAdministration/@nullFlavor · cs 0..1
   │       R: transform enum
   ├── Vitalparameter [repeatable dataset group]
   │   ├── Blutdruck
✓  │   │   ├── Systolischer Blutdruck → {Systolicbloodpressure.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.11 · vitalparameter.blutdruck.systolischer_blutdruck · quantity · 0..1
   │   │   │   T: Blutdruck systolisch (Systolicbloodpressure) · 1.2.276.0.76.10.4032 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
✓  │   │   └── Diastolischer Blutdruck → {blutdruck-diastolisch.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20143 · vitalparameter.blutdruck.diastolischer_blutdruck · quantity · 0..1
   │   │       T: Blutdruck diastolisch (blutdruck-diastolisch) · 1.2.276.0.76.3.1.195.10.38 @ 2024-08-14T10:13:56 · template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   ├── Puls
✓  │   │   └── Pulsfrequenz → {pulsfrequenz.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20282 · vitalparameter.puls.pulsfrequenz · quantity · 0..1
   │   │       T: Pulsfrequenz (pulsfrequenz) · 1.2.276.0.76.3.1.195.10.40 @ 2024-08-14T10:13:56 · template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   ├── Pupillenweite
✓  │   │   ├── Pupillenweite (rechts) → {Pupilsize_right.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.18 · vitalparameter.pupillenweite.pupillenweite_rechts · code · 1..1
   │   │   │   T: Pupillenweite (Pupilsize) · 1.2.276.0.76.10.4046 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.49 @ 2015-11-17T00:00:00 · logical {Pupilsize_right.value} uses physical {Pupilsize.value}
   │   │   │   R: repeat_by_discriminator (repeat-by-discriminator-pupilsize-value); physical {Pupilsize.value}; branch right; Pupilsize.targetSiteCode=code=R, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge rechts
✓  │   │   └── Pupillenweite (links) → {Pupilsize_left.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20018 · vitalparameter.pupillenweite.pupillenweite_links · code · 1..1
   │   │       T: Pupillenweite (Pupilsize) · 1.2.276.0.76.10.4046 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.49 @ 2015-11-17T00:00:00 · logical {Pupilsize_left.value} uses physical {Pupilsize.value}
   │   │       R: repeat_by_discriminator (repeat-by-discriminator-pupilsize-value); physical {Pupilsize.value}; branch left; Pupilsize.targetSiteCode=code=L, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge links
   │   ├── Pupillenreaktion
✓  │   │   ├── Pupillenreaktion (rechts) → {Pupilreaction_right.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.19 · vitalparameter.pupillenreaktion.pupillenreaktion_rechts · code · 1..1
   │   │   │   T: Pupillenreaktion (Pupilreaction) · 1.2.276.0.76.10.4047 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.50 @ 2015-11-17T00:00:00 · logical {Pupilreaction_right.value} uses physical {Pupilreaction.value}
   │   │   │   R: repeat_by_discriminator (repeat-by-discriminator-pupilreaction-value); physical {Pupilreaction.value}; branch right; Pupilreaction.targetSiteCode=code=R, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge rechts
✓  │   │   └── Pupillenreaktion (links) → {Pupilreaction_left.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20019 · vitalparameter.pupillenreaktion.pupillenreaktion_links · code · 1..1
   │   │       T: Pupillenreaktion (Pupilreaction) · 1.2.276.0.76.10.4047 @ 2015-09-18T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.50 @ 2015-11-17T00:00:00 · logical {Pupilreaction_left.value} uses physical {Pupilreaction.value}
   │   │       R: repeat_by_discriminator (repeat-by-discriminator-pupilreaction-value); physical {Pupilreaction.value}; branch left; Pupilreaction.targetSiteCode=code=L, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge links
   │   ├── Körperkerntemperatur
✓  │   │   └── Körperkerntemperatur → {BodyTemperatureCore.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20050 · vitalparameter.korperkerntemperatur.korperkerntemperatur · quantity · 0..1
   │   │       T: Körperkerntemperatur (BodyTemperatureCore) · 1.2.276.0.76.10.4035 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
✓  │   ├── Zeitpunkt → {vitalparametercontainer.effectiveTime}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20366 · vitalparameter.zeitpunkt · datetime · 1..1
   │   │   T: Vitalparameter-Container (vitalparametercontainer) · 1.2.276.0.76.3.1.195.10.95 @ 2026-04-27T15:39:06 · template-relative hl7:organizer/hl7:effectiveTime · TS 1..1 R
✓  │   ├── Atemfrequenz → {RespiratoryRate.value}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.9 · vitalparameter.atemfrequenz · quantity · 0..1
   │   │   T: Atemfrequenz (RespiratoryRate) · 1.2.276.0.76.10.4030 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
✓  │   ├── Pulsoximetrische Sauerstoffsättigung → {pulsoximetrische_sauerstoffsattigung.value}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.10 · vitalparameter.pulsoximetrische_sauerstoffsattigung · quantity · 0..1
   │   │   T: Pulsoximetrische Sauerstoffsättigung (pulsoximetrische_sauerstoffsattigung) · 1.2.276.0.76.3.1.195.10.35 @ 2024-08-14T10:13:56 · template-relative hl7:observation/hl7:value · PQ 1..1 R
✓  │   └── Herzfrequenz → {HeartRate.value}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.12 · vitalparameter.herzfrequenz · quantity · 0..1
   │       T: Herzfrequenz (HeartRate) · 1.2.276.0.76.10.4033 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
   ├── Scores
   │   ├── Glasgow Coma Scale (GCS)
✓  │   │   ├── GCS Augenöffnen → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.13 · scores.glasgow_coma_scale_gcs.gcs_augenoffnen · ordinal · 1..1
   │   │   │   T: Glasgow Coma Scale (GlasgowComaScale) · 1.2.276.0.76.10.4034 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation/hl7:value · PQ 1..1 R
✓  │   │   ├── GCS verbale Antwort → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.14 · scores.glasgow_coma_scale_gcs.gcs_verbale_antwort · ordinal · 1..1
   │   │   │   T: Glasgow Coma Scale (GlasgowComaScale) · 1.2.276.0.76.10.4034 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation/hl7:value · PQ 1..1 R
✓  │   │   ├── GCS motorische Antwort → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.16 · scores.glasgow_coma_scale_gcs.gcs_motorische_antwort · ordinal · 1..1
   │   │   │   T: Glasgow Coma Scale (GlasgowComaScale) · 1.2.276.0.76.10.4034 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation/hl7:value · PQ 1..1 R
✓  │   │   └── GCS Summe → {GlasgowComaScale.observation.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.17 · scores.glasgow_coma_scale_gcs.gcs_summe · ordinal · 1..1
   │   │       T: Glasgow Coma Scale (GlasgowComaScale) · 1.2.276.0.76.10.4034 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   ├── Schmerzmessung
✓  │   │   └── Numerischen Rating Skala → {Painseverity.observation.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21 · scores.schmerzmessung.numerischen_rating_skala · quantity · 0..1
   │   │       T: Schmerz (Painseverity) · 1.2.276.0.76.10.4036 @ 2014-09-16T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
✓  │   └── modified Rankin Skala Score → {Modifiedrankinscale.observation.value}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.114 · scores.modified_rankin_skala_score · code · 0..1
   │       T: Modified Rankin Scale (Modifiedrankinscale) · 1.2.276.0.76.10.4045 @ 2015-03-03T00:00:00 · template-relative hl7:observation/hl7:value · PQ 1..1 R
   │       R: transform ordinal
   ├── Diagnostik
   │   ├── Bildgebende Diagnostik
   │   │   ├── Magnetresonanztomographie
✓  │   │   │   └── Untersuchungsregion → {Relevantdiagnostictestsorlaboratorydata.text}
   │   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20726 · diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion · code · 0..1
   │   │   │       T: narrative Diagnostik (Relevantdiagnostictestsorlaboratorydata) · 1.2.276.0.76.10.3050 @ 2025-12-01T00:00:00 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   │   │       R: narrative-only fact [DEC-044]; Preserve the reviewed MRI examination-region wording in the Diagnostics section narrative; no structured imaging-region code target or crosswalk is asserted.
   │   │   └── Röntgen [repeatable dataset group]
✓  │   │       └── Untersuchungsregion → {Relevantdiagnostictestsorlaboratorydata.text}
   │   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.20729 · diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion · code · 0..1
   │   │           T: narrative Diagnostik (Relevantdiagnostictestsorlaboratorydata) · 1.2.276.0.76.10.3050 @ 2025-12-01T00:00:00 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   │           R: narrative-only for_each [DEC-044]; Preserve each reviewed X-ray examination-region occurrence in the Diagnostics section narrative without joining occurrences or coalescing them with structured diagnostic entries.
   │   ├── Abgeleitete Informationen über Diagnostik zur Weitergabe
✓  │   │   ├── Mikrobiologie angefordert → {mikrobiologie_angefordert.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21764 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert · boolean · 0..1
   │   │   │   T: Mikrobiologie angefordert (mikrobiologie_angefordert) · 1.2.276.0.76.3.1.195.10.47 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── BGA angefordert → {bga_angefordert.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29264 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert · boolean · 0..1
   │   │   │   T: BGA angefordert (bga_angefordert) · 1.2.276.0.76.3.1.195.10.48 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── EKG angefordert → {ekg_angefordert.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29265 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert · boolean · 0..1
   │   │   │   T: EKG angefordert (ekg_angefordert) · 1.2.276.0.76.3.1.195.10.49 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── Sonographie angefordert → {sonographie_angefordert.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29266 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert · boolean · 0..1
   │   │   │   T: Sonographie angefordert (sonographie_angefordert) · 1.2.276.0.76.3.1.195.10.50 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── Röntgenthorax angefordert → {rontgenthorax_angefordert.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29267 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert · boolean · 0..1
   │   │   │   T: Röntgen-Thorax angefordert (rontgenthorax_angefordert) · 1.2.276.0.76.3.1.195.10.51 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── Röntgen-Thorax durchgeführt → {Plainchestxray.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21964 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt · boolean · 0..1
   │   │   │   T: Röntgen-Thorax durchgeführt (Plainchestxray) · 1.2.276.0.76.10.4050 @ 2015-09-18T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1
   │   │   │   R: transform not
✓  │   │   ├── Röntgen-Becken durchgeführt → {Pelvisxray.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21966 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt · boolean · 0..1
   │   │   │   T: Röntgen-Becken durchgeführt (Pelvisxray) · 1.2.276.0.76.10.4052 @ 2015-09-18T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1
   │   │   │   R: transform not
✓  │   │   ├── Röntgen-Wirbelsäule durchgeführt → {Radiographyofspine.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21968 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt · boolean · 0..1
   │   │   │   T: Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt (Radiographyofspine) · 1.2.276.0.76.10.4051 @ 2015-09-18T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1
   │   │   │   R: transform not
✓  │   │   ├── CT Kopf durchgeführt → {Computedtomographyofentirehead.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21972 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt · boolean · 0..1
   │   │   │   T: CT Kopf durchgeführt (Computedtomographyofentirehead) · 1.2.276.0.76.10.4055 @ 2015-09-18T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1
   │   │   │   R: transform not
✓  │   │   ├── CT HWS durchgeführt → {ct_hws_durchgefuhrt.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21974 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt · boolean · 0..1
   │   │   │   T: CT HWS durchgeführt (ct_hws_durchgefuhrt) · 1.2.276.0.76.3.1.195.10.57 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── CT Thorax durchgeführt → {ct_thorax_durchgefuhrt.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21976 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt · boolean · 0..1
   │   │   │   T: CT Thorax durchgeführt (ct_thorax_durchgefuhrt) · 1.2.276.0.76.3.1.195.10.58 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   ├── CT Abdomen durchgeführt → {ct_abdomen_durchgefuhrt.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21978 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt · boolean · 0..1
   │   │   │   T: CT Abdomen durchgeführt (ct_abdomen_durchgefuhrt) · 1.2.276.0.76.3.1.195.10.59 @ 2024-05-24T00:00:00 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform not
✓  │   │   └── CT- bzw. MR- bzw. DS-Angiographie → {ct-mr-ds-angiographie.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.22056 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie · code · 0..1
   │   │       T: CT-/MR-/DS-Angiographie (ct-mr-ds-angiographie) · 1.2.276.0.76.3.1.195.10.91 @ 2024-05-24T00:00:00 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.24 @ 2024-07-22T16:51:10
   │   │       R: transform enum, select raw
   │   └── Wildcard: Diagnostik [repeatable dataset group]
   │       ├── Klinisch relevante Zeitangaben
✓  │       │   ├── Zeitpunkt → {WildcardDiagnostik.effectiveTime_not_xsi_type}
   │       │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29603 · diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt · datetime · 0..1
   │       │   │   T: Wildcard Diagnostik (WildcardDiagnostik) · 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 · template-relative hl7:observation/hl7:effectiveTime[not(@xsi:type)] · TS 0..1 R
✓  │       │   └── Zeitraum → {WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width}
   │       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.29609 · diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum · duration · 0..1
   │       │       T: Wildcard Diagnostik (WildcardDiagnostik) · 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 · template-relative hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:width · PQ 0..1
✓  │       ├── Code → {WildcardDiagnostik.code}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29604 · diagnostik.wildcard_diagnostik.code · code · 1..1
   │       │   T: Wildcard Diagnostik (WildcardDiagnostik) · 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 · template-relative hl7:observation/hl7:code · CD 1..1
✓  │       ├── Wert → {WildcardDiagnostik.value_as_ST}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29605 · diagnostik.wildcard_diagnostik.wert · text · 1..1
   │       │   T: Wildcard Diagnostik (WildcardDiagnostik) · 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 · template-relative hl7:observation/hl7:value · ST 1..1
✓  │       └── Definitorischer Link → {WildcardDiagnostik.observation.reference.externalDocument.text.reference}
   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.29606 · diagnostik.wildcard_diagnostik.definitorischer_link · text · 1..1
   │           T: Wildcard Diagnostik (WildcardDiagnostik) · 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 · template-relative hl7:observation/hl7:reference/hl7:externalDocument/hl7:text/hl7:reference · URL 1..1 R
   ├── Maßnahmen
   │   ├── Medikamentöse Therapie [repeatable dataset group]
   │   │   └── Medikation
   │   │       ├── Medikament
   │   │       │   ├── Arzneimittel
✓  │   │       │   │   ├── Arzneimittel-Name → {UVMedicationInformationsimple.code}, {Medikation.text}
   │   │       │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.488 · masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname · text · 0..1
   │   │       │   │   │   T1: UV Medication Information (simple) (UVMedicationInformationsimple) · 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 · template-relative hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code · CD 1..1 R
   │   │       │   │   │   R: compose_coded (compose-medication-product-code); The selected AKTIN simple medication-information template represents the medicinal product in manufacturedMaterial/code. Combine Arzneimittel-Code with Arzneimittel-Name as code plus displayName; when only the name is available, use the template-mandated NA null flavor and preserve the name in originalText.
   │   │       │   │   │   T2: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   │   └── Arzneimittel-Code → {UVMedicationInformationsimple.code}
   │   │       │   │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.489 · masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode · code · 0..1
   │   │       │   │       T: UV Medication Information (simple) (UVMedicationInformationsimple) · 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 · template-relative hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code · CD 1..1 R
   │   │       │   │       R: compose_coded (compose-medication-product-code); The selected AKTIN simple medication-information template represents the medicinal product in manufacturedMaterial/code. Combine Arzneimittel-Code with Arzneimittel-Name as code plus displayName; when only the name is available, use the template-mandated NA null flavor and preserve the name in originalText.
   │   │       │   ├── Wirkstoff
✓  │   │       │   │   ├── Wirkstoff-Name → {Medikation.text}
   │   │       │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.485 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname · text · 0..1
   │   │       │   │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   │   ├── Wirkstoff-Code → {Medikation.text}
   │   │       │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.486 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode · code · 0..1
   │   │       │   │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   │   ├── Arzneilich wirksamer Bestandteil? → {Medikation.text}
   │   │       │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.519 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq · boolean · 0..1
   │   │       │   │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   │   └── Wirkstärke → {Medikation.text}
   │   │       │   │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.493 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke · text · 0..1
   │   │       │   │       T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │       R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   ├── Darreichungsform → {UVSubordinateadministration.administrationUnitCode}, {Medikation.text}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.492 · masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform · code · 0..1
   │   │       │   │   T1: UV Subordinate Substance Administration (UVSubordinateadministration) · 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 · template-relative hl7:substanceAdministration/hl7:administrationUnitCode · CE 0..1 · ValueSet 2.16.840.1.113883.1.11.14570 @ 2014-03-26T00:00:00
   │   │       │   │   R: transform coded_only
   │   │       │   │   T2: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   └── Chargennummer → {UVMedicationInformationsimple.lotNumberText}
   │   │       │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.738 · masnahmen.medikamentose_therapie.medikation.medikament.chargennummer · text · 0..1
   │   │       │       T: UV Medication Information (simple) (UVMedicationInformationsimple) · 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 · template-relative hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText · ST 0..1
   │   │       ├── Anwendungszeiten
✓  │   │       │   ├── (Start)zeitpunkt der Anwendung → {UVSubordinateadministration.effectiveTime_value_or_nullFlavor}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.497 · masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung · datetime · 0..1
   │   │       │   │   T: UV Subordinate Substance Administration (UVSubordinateadministration) · 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 · template-relative hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor] · TS 0..1 C
=  │   │       │   └── Stoppzeitpunkt der Anwendung → — intentionally unmapped [DEC-043]
   │   │       │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.498 · masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung · datetime · 0..1
   │   │       │       G: DEC-043 · The reviewed rule maps only the application start to the atomic subordinate TS; the active target offers no separate stop slot.
   │   │       ├── Dosierung
   │   │       │   ├── Zeitangabe
   │   │       │   │   ├── Ereignisbezogene Wiederholung
=  │   │       │   │   │   ├── Ereignis → — intentionally unmapped [DEC-043]
   │   │       │   │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.528 · masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.ereignis · code · 0..1
   │   │       │   │   │   │   G: DEC-043 · Event-relative repeat timing is outside the current AKTIN medication-given scope and is retained for later review.
✓  │   │       │   │   │   └── Offset → {Medikation.text}
   │   │       │   │   │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.529 · masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset · quantity · 0..1
   │   │       │   │   │       T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   │       R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
=  │   │       │   │   └── Zeitpunkt → — intentionally unmapped [DEC-043]
   │   │       │   │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.526 · masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt · datetime · 0..1
   │   │       │   │       G: DEC-043 · Current AKTIN scope documents medication given via the application start; structured dosage timing is deferred.
✓  │   │       │   ├── Sequenznummer → {Medikation.sequenceNumber}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.523 · masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer · integer · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber · INT 0..1
✓  │   │       │   ├── Freitext → {Medikation.text}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.524 · masnahmen.medikamentose_therapie.medikation.dosierung.freitext · text · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   ├── Zusätzliche Hinweise → {Medikation.text}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.533 · masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise · code · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   ├── Anweisungen zur Einnahme → {Medikation.text}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.534 · masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme · text · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   ├── Einnahme bei Bedarf → {Medikation.text}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.530 · masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf · boolean · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │       │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │       │   ├── Körperstelle → {Medikation.approachSiteCode}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.535 · masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle · code · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:approachSiteCode · CD 0..* · ValueSet 2.16.840.1.113883.1.11.19724 @ 2014-03-26T00:00:00
   │   │       │   │   R: transform coded_or_original_text, nullFlavor OTH
✓  │   │       │   ├── Art der Anwendung → {Medikation.routeCode}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.531 · masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung · code · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:routeCode · CE 0..1 · ValueSet 2.16.840.1.113883.1.11.14581 @ 2014-03-26T00:00:00
   │   │       │   │   R: coalesce (coalesce-medication-route); policy prefer_first_warn_if_different; transform coded_or_original_text; nullFlavor OTH; Use Art der Anwendung when present, otherwise Methode der Anwendung; warn when both present wordings differ. Preserve uncoded wording as originalText.
✓  │   │       │   ├── Methode der Anwendung → {Medikation.routeCode}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.532 · masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung · text · 0..1
   │   │       │   │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:routeCode · CE 0..1 · ValueSet 2.16.840.1.113883.1.11.14581 @ 2014-03-26T00:00:00
   │   │       │   │   R: coalesce (coalesce-medication-route); policy prefer_first_warn_if_different; transform coded_or_original_text; nullFlavor OTH; Use Art der Anwendung when present, otherwise Methode der Anwendung; warn when both present wordings differ. Preserve uncoded wording as originalText.
✓  │   │       │   ├── Dosismenge und -einheit → {UVSubordinateadministration.doseQuantity}
   │   │       │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.494 · masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit · quantity · 0..1
   │   │       │   │   T: UV Subordinate Substance Administration (UVSubordinateadministration) · 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 · template-relative hl7:substanceAdministration/hl7:doseQuantity · IVL_PQ 0..1 R
✓  │   │       │   └── Kontinuierliche Gabe (Rate) → {UVSubordinateadministration.rateQuantity}
   │   │       │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.495 · masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate · quantity · 0..1
   │   │       │       T: UV Subordinate Substance Administration (UVSubordinateadministration) · 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 · template-relative hl7:substanceAdministration/hl7:rateQuantity · IVL_PQ 0..1
   │   │       └── Grund der Medikation
✓  │   │           ├── Begründungstext → {Medikation.text}
   │   │           │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.501 · masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext · text · 0..1
   │   │           │   T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │           │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
✓  │   │           └── Kodierte Begründung → {Medikation.text}
   │   │               S: concept 2.16.840.1.113883.3.1937.777.75.2.1.521 · masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung · code · 0..1
   │   │               T: Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 · template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │               R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
   │   ├── Isolation
✓  │   │   ├── Isolation → {isolation.negationInd}
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.7 · masnahmen.isolation.isolation · code · 1..1
   │   │   │   T: Isolation (isolation) · 1.2.276.0.76.3.1.195.10.65 @ 2024-08-14T18:08:14 · template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │   │   R: transform enum
✓  │   │   └── Isolation Begründung → {Isolationindication.value}, {ProblemobservationMDRO.observation.value}
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.8 · masnahmen.isolation.isolation_begrundung · code · 1..1
   │   │       T1: Isolation Indication (Isolationindication) · 1.2.276.0.76.3.1.195.10.66 @ 2024-08-14T18:14:44 · template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.25 @ 2024-02-19T12:55:34
   │   │       T2: Problem Observation (Multidrug-resistant organism) (ProblemobservationMDRO) · 1.2.276.0.76.10.4073 @ 2017-03-01T00:00:00 · template-relative hl7:observation/hl7:value · CD 1..1 R · ValueSet 1.2.276.0.76.11.60 @ 2015-09-18T00:00:00
   │   │       R: transform enum, select raw; AKTIN approved deriving the generic AMRO assertion only from the exact isolation reason 'multiresistenter Keim'; other isolation reasons do not create an MDRO observation.
   │   └── Wildcard: Therapie [repeatable dataset group]
   │       ├── Klinisch relevante Zeitangaben
✓  │       │   ├── Zeitpunkt → {WildcardTherapie.effectiveTime_not_xsi_type}
   │       │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29614 · masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitpunkt · datetime · 1..1
   │       │   │   T: Wildcard Therapie (WildcardTherapie) · 1.2.276.0.76.3.1.195.10.90 @ 2024-08-18T21:50:30 · template-relative hl7:procedure/hl7:effectiveTime[not(@xsi:type)] · TS 0..1 R
✓  │       │   └── Zeitraum → {WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width}
   │       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.29615 · masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitraum · duration · 1..1
   │       │       T: Wildcard Therapie (WildcardTherapie) · 1.2.276.0.76.3.1.195.10.90 @ 2024-08-18T21:50:30 · template-relative hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:width · PQ 0..1
✓  │       ├── Code → {WildcardTherapie.code}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29612 · masnahmen.wildcard_therapie.code · code · 1..1
   │       │   T: Wildcard Therapie (WildcardTherapie) · 1.2.276.0.76.3.1.195.10.90 @ 2024-08-18T21:50:30 · template-relative hl7:procedure/hl7:code · CD 1..1
✓  │       └── Definitorischer Link → {WildcardTherapie.procedure.reference.externalDocument.text.reference}
   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.29611 · masnahmen.wildcard_therapie.definitorischer_link · text · 1..1
   │           T: Wildcard Therapie (WildcardTherapie) · 1.2.276.0.76.3.1.195.10.90 @ 2024-08-18T21:50:30 · template-relative hl7:procedure/hl7:reference/hl7:externalDocument/hl7:text/hl7:reference · URL 1..1 R
   ├── Abschlussdiagnosen
   │   └── Abschlussdiagnose [repeatable dataset group]
✓  │       ├── Freitext Abschlussdiagnose → {Problemobservationeddiagnosis.originalText}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.42 · abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose · text · 0..1
   │       │   T: Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis) · 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00 · template-relative hl7:observation/hl7:value/hl7:originalText · ST 0..1 R
✓  │       ├── ICD-10 → {Problemobservationeddiagnosis.observation.value}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.44 · abschlussdiagnosen.abschlussdiagnose.icd10 · code · 1..1
   │       │   T: Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis) · 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00 · template-relative hl7:observation/hl7:value · CD 1..1 R
=  │       ├── ICD-10 Sekundärdiagnose → — intentionally unmapped [DEC-043]
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29508 · abschlussdiagnosen.abschlussdiagnose.icd10_sekundardiagnose · code · 0..1
   │       │   G: DEC-043 · AKTIN explicitly states that secondary ICD-10 is not transmitted in the current transaction.
✓  │       ├── Zusatzkennzeichen → {Certainty.value}, {Problemobservationeddiagnosis.negationInd}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20024 · abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen · code · 0..1
   │       │   T1: Diagnosesicherheit (Certainty) · 1.2.276.0.76.10.90027 @ 2017-03-02T00:00:00 · template-relative hl7:qualifier[hl7:name/@code='8']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.121 @ 2005-08-01T00:00:00
   │       │   R: transform enum, select raw
   │       │   T2: Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis) · 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00 · template-relative hl7:observation/@negationInd · bl 0..1
   │       │   R: transform enum, select raw
✓  │       ├── Führende Abschlussdiagnose? / Sequenznummer → {Problemconcernacteddiagnoses.sequenceNumber}
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.2.20023 · abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer · integer · 0..1
   │       │   T: Problem Concern Act (Abschlussdiagnosen) (Problemconcernacteddiagnoses) · 1.2.276.0.76.10.4048 @ 2016-06-22T00:00:00 · template-relative hl7:act/hl7:entryRelationship/hl7:sequenceNumber · INT.POS 0..1
✓  │       └── Lateralität → {Laterality.value}
   │           S: reviewed model extension · abschlussdiagnosen.abschlussdiagnose.lateralitat · code · 0..1 · AKTIN approved adding the missing diagnosis-scoped laterality value expected by the CDA qualifier.
   │           T: Lateralität (Laterality) · 1.2.276.0.76.10.90026 @ 2017-02-13T00:00:00 · template-relative hl7:qualifier[hl7:name/@code='20228-3']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.412 @ 2017-02-08T00:00:00
   ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler
✓  │   └── Procedere → {Eddisposition.text}
   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.46 · weiteres_procedere_therapieempfehlung_weiterbehandler.procedere · text · 0..1
   │       T: Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition) · 1.2.276.0.76.10.3056 @ 2015-01-10T00:00:00 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
   ├── Administrative Verlegungs-/Entlassungsinformationen
✓  │   ├── Typ Verlegung → {Referralto.act.code}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20021 · administrative_verlegungsentlassungsinformationen.typ_verlegung · code · 0..1
   │   │   T: Weiterbehandlung Verlegung (Referralto) · 1.2.276.0.76.10.4067 @ 2025-12-01T00:00:00 · template-relative hl7:act/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.11.53 @ 2015-11-17T00:00:00
   │   │   R: transform reviewed_coded_map
✓  │   ├── Typ Entlassung → {CDAEncompassingEncounter.dischargeDispositionCode}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20022 · administrative_verlegungsentlassungsinformationen.typ_entlassung · code · 0..1
   │   │   T: CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter) · 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00 · template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode · CV 0..1 R · ValueSet 1.2.276.0.76.11.56 @ 2015-11-17T00:00:00
✓  │   ├── Zeitpunkt Entscheidung zur Verlegung / Entlassung → {zeitpunkt_entscheidung_zur_verlegung__entlassung.value}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20237 · administrative_verlegungsentlassungsinformationen.zeitpunkt_entscheidung_zur_verlegung_entlassung · datetime · 0..1
   │   │   T: Zeitpunkt Entscheidung zur Verlegung / Entlassung (zeitpunkt_entscheidung_zur_verlegung__entlassung) · 1.2.276.0.76.3.1.195.10.75 @ 2024-05-24T00:00:00 · template-relative hl7:observation/hl7:value · TS 1..1 R
✓  │   ├── Zeitpunkt Patient verlegungs- / entlassungsfähig → {zeitpunkt_patient_verlegungs__entlassungsfahig.value}, {CDADocumentationOf.documentationOf.serviceEvent.performer.time.high}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20814 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig · datetime · 0..1
   │   │   T1: Zeitpunkt Patient verlegungs- / entlassungsfähig (zeitpunkt_patient_verlegungs__entlassungsfahig) · 1.2.276.0.76.3.1.195.10.76 @ 2024-05-24T00:00:00 · template-relative hl7:observation/hl7:value · TS 1..1 R
   │   │   T2: Dienstleistung/Behandlung (Basis) (CDADocumentationOf) · 1.2.276.0.76.10.2035 @ 2014-09-17T00:00:00 · template-relative hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high · TS 0..1 R
✓  │   ├── Zeitpunkt Patient verlegt / entlassen nach → {zeitpunkt_patient_verlegt__entlassen_nach.value}, {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.high}, {CDAEncompassingEncounter.high}
   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.882 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach · datetime · 0..1
   │   │   T1: Zeitpunkt Patient verlegt / entlassen nach (zeitpunkt_patient_verlegt__entlassen_nach) · 1.2.276.0.76.3.1.195.10.77 @ 2024-05-24T00:00:00 · template-relative hl7:observation/hl7:value · TS 1..1 R
   │   │   T2: Dienstleistung/Behandlung (Basis) (CDADocumentationOf) · 1.2.276.0.76.10.2035 @ 2014-09-17T00:00:00 · template-relative hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high · TS.DATETIME.MIN 0..1 R
   │   │   T3: CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter) · 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00 · template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high · TS.DATE.MIN 0..1
✓  │   └── Aufnehmende Fachabteilung → {Referralto.act.participant.participantRole.code}
   │       S: reviewed model extension · administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung · code · 0..1 · AKTIN approved adding the missing receiving-department key expected by the CDA Weiterbehandlung Verlegung template.
   │       T: Weiterbehandlung Verlegung (Referralto) · 1.2.276.0.76.10.4067 @ 2025-12-01T00:00:00 · template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.17 @ 2024-08-08T13:35:43
   └── Dokumentationsinformationen
       ├── Beginn patientenbezogene Dokumentation
=      │   └── Zeitpunkt Beginn patientenbezogene Dokumentation → — intentionally unmapped [DEC-043]
       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21744 · dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation · datetime · 0..1
       │       G: DEC-043 · AKTIN states that this retained dataset concept is not used by any current template and is not transmitted separately.
       ├── Berechnete Zeitintervalle
✓      │   └── Zeit bis zum Export → {addendum-dokumentationsinformationen.text}
       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21742 · dokumentationsinformationen.berechnete_zeitintervalle.zeit_bis_zum_export · quantity · 0..1
       │       T: narrative Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen) · 1.2.276.0.76.3.1.195.10.73 @ 2024-08-15T11:08:15 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
       │       R: narrative-only fact [DEC-048]; Preserve this EDIS datum in the Addendum narrative while its rejected structured mapping is suspended pending AKTIN clarification; see the identity-pinned suspended CDA mappings list.
       └── Datenbereitstellung
✓          ├── Name des EDIS → {addendum-dokumentationsinformationen.text}
           │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21738 · dokumentationsinformationen.datenbereitstellung.name_des_edis · text · 0..1
           │   T: narrative Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen) · 1.2.276.0.76.3.1.195.10.73 @ 2024-08-15T11:08:15 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
           │   R: narrative-only fact [DEC-048]; Preserve this EDIS datum in the Addendum narrative while its rejected structured mapping is suspended pending AKTIN clarification; see the identity-pinned suspended CDA mappings list.
✓          └── Version des EDIS → {addendum-dokumentationsinformationen.text}
               S: concept 2.16.840.1.113883.2.6.60.3.2.9.21740 · dokumentationsinformationen.datenbereitstellung.version_des_edis · text · 0..1
               T: narrative Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen) · 1.2.276.0.76.3.1.195.10.73 @ 2024-08-15T11:08:15 · template-relative hl7:section/hl7:text · SD.TEXT 1..1
               R: narrative-only fact [DEC-048]; Preserve this EDIS datum in the Addendum narrative while its rejected structured mapping is suspended pending AKTIN clarification; see the identity-pinned suspended CDA mappings list.
```

## Complete physical CDA coverage tree

`{physical CDA target}` ← `dataset datapoint` (with logical occurrence where distinct)

```text
   Notaufnahmeregister Transitionsversion (ClinicalDocument)
   Template: 1.2.276.0.76.3.1.195.10.93 @ 2026-03-25T11:04:07
   ├── Document header
   │   ├── CDA realmCode (CDArealmCode)
   │   │   Template: 1.2.276.0.76.10.90002 @ 2013-07-15T00:00:00
○  │   │   └── realmCode {CDArealmCode.realmCode} ← no dataset counterpart
   │   │       T: template-relative hl7:realmCode · CS 1..1
   │   ├── CDA title (CDAtitle)
   │   │   Template: 1.2.276.0.76.10.90005 @ 2012-12-12T00:00:00
○  │   │   └── title {CDAtitle.title} ← no dataset counterpart
   │   │       T: template-relative hl7:title · ST 0..1
   │   ├── CDA confidentialityCode (CDAconfidentialityCode)
   │   │   Template: 1.2.276.0.76.10.90007 @ 2012-12-12T00:00:00
○◆ │   │   └── confidentialityCode {CDAconfidentialityCode.confidentialityCode} ← site configuration via cda.values; no dataset counterpart
   │   │       T: template-relative hl7:confidentialityCode · CE 1..1 · ValueSet 2.16.840.1.113883.1.11.16926 @ 2016-06-23T00:00:00
   │   │       R: site-owned {CDAconfidentialityCode.confidentialityCode} via cda.values; Document confidentiality is deployment policy and must be supplied by the site.
   │   ├── CDA languageCode (CDAlanguageCode)
   │   │   Template: 1.2.276.0.76.10.90008 @ 2012-03-11T00:00:00
○◆ │   │   └── languageCode {CDAlanguageCode.languageCode} ← site configuration via cda.values; no dataset counterpart
   │   │       T: template-relative hl7:languageCode · CS.LANG 1..1
   │   │       R: site-owned {CDAlanguageCode.languageCode} via cda.values; Document language is deployment configuration and must be supplied by the site.
   │   ├── Patientenidentifikation (PatientIdentifier)
   │   │   Template: 1.2.276.0.76.10.90024 @ 2014-12-17T00:00:00
✓  │   │   └── id {PatientIdentifier.id} ← Patienten ID
   │   │       T: template-relative hl7:id · II 1..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.3 · patient.identifikatoren.patienten_id · identifier · 0..1
   │   ├── CDA recordTarget (nnar) (CDArecordTargetnnar)
   │   │   Template: 1.2.276.0.76.10.2032 @ 2014-09-17T00:00:00
○  │   │   ├── addr {CDArecordTargetnnar.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:recordTarget/hl7:patientRole/hl7:addr · AD 0..1
✓  │   │   ├── postalCode {CDArecordTargetnnar.recordTarget.patientRole.addr.postalCode} ← Postleitzahl
   │   │   │   T: template-relative hl7:recordTarget/hl7:patientRole/hl7:addr/hl7:postalCode · adxp.postalCode 0..*
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20123 · patient.anschrift.postleitzahl · text · 1..1
○  │   │   ├── telecom {CDArecordTargetnnar.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:recordTarget/hl7:patientRole/hl7:telecom · TEL 0..*
○  │   │   ├── name {CDArecordTargetnnar.name} ← no dataset counterpart
   │   │   │   T: template-relative hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name · PN 1..* R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   ├── administrativeGenderCode {CDArecordTargetnnar.administrativeGenderCode} ← Geschlecht
   │   │   │   T: template-relative hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:administrativeGenderCode · CE 1..1 R · ValueSet 2.16.840.1.113883.1.11.1 @ 2016-06-23T00:00:00
   │   │   │   S: reviewed model extension · patient.geschlecht · code · 0..1 · AKTIN approved supplying the administrative gender required by the CDA recordTarget from site source data although the selected dataset omits the field.
○  │   │   └── birthTime {CDArecordTargetnnar.birthTime} ← no dataset counterpart
   │   │       T: template-relative hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime · TS 1..1 R
   │   │       R: defaults.required_unmapped → nullFlavor="NI"
   │   ├── CDA Person Elements (PersonElements)
   │   │   Template: 1.2.276.0.76.10.90010 @ 2011-12-19T00:00:00
○◆ │   │   ├── name {CDAauthor.assignedPerson::PersonElements.name} ← site configuration via cda.fallback_if_active; no dataset counterpart
   │   │   │   T: template-relative hl7:name · PN 1..1
   │   │   │   R: site-owned {CDAauthor.assignedPerson::PersonElements.name} via cda.fallback_if_active; The document author identity is deployment configuration and completes the active author participation.
○  │   │   ├── name {HeaderInformationRecipient.informationRecipient.intendedRecipient.informationRecipient::PersonElements.name} ← no dataset counterpart
   │   │   │   T: template-relative hl7:name · PN 1..1
○  │   │   └── name {HeaderParticipantKostentraeger.associatedPerson::PersonElements.name} ← no dataset counterpart
   │   │       T: template-relative hl7:name · PN 1..1
   │   ├── CDA Organization Elements (OrganizationElements)
   │   │   Template: 1.2.276.0.76.10.90011 @ 2011-12-19T00:00:00
○  │   │   ├── id {CDAauthor.representedOrganization::OrganizationElements.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:id · II 0..*
○  │   │   ├── name {CDAauthor.representedOrganization::OrganizationElements.name} ← no dataset counterpart
   │   │   │   T: template-relative hl7:name · ON 1..1
○  │   │   ├── telecom {CDAauthor.representedOrganization::OrganizationElements.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:telecom · TEL 0..*
○  │   │   ├── addr {CDAauthor.representedOrganization::OrganizationElements.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:addr · AD 0..1
○  │   │   ├── telecom {CDAcustodian.representedCustodianOrganization::OrganizationElements.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:telecom · TEL 0..1
○  │   │   ├── addr {CDAcustodian.representedCustodianOrganization::OrganizationElements.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:addr · AD 0..1
○  │   │   ├── id {HeaderInformationRecipient.receivedOrganization::OrganizationElements.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:id · II 0..*
○  │   │   ├── name {HeaderInformationRecipient.receivedOrganization::OrganizationElements.name} ← no dataset counterpart
   │   │   │   T: template-relative hl7:name · ON 1..1
○  │   │   ├── telecom {HeaderInformationRecipient.receivedOrganization::OrganizationElements.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:telecom · TEL 0..*
○  │   │   ├── addr {HeaderInformationRecipient.receivedOrganization::OrganizationElements.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:addr · AD 0..1
○  │   │   ├── id {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:id · II 0..*
✓  │   │   ├── name {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.name} ← Name
   │   │   │   T: template-relative hl7:name · ON 1..1
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21579 · hauptkostentrager.kostentrager.name · text · 0..1
○  │   │   ├── telecom {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:telecom · TEL 0..*
○  │   │   └── addr {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.addr} ← no dataset counterpart
   │   │       T: template-relative hl7:addr · AD 0..1
   │   ├── CDA participant Kostentraeger (HeaderParticipantKostentraeger)
   │   │   Template: 1.2.276.0.76.10.2022 @ 2014-08-25T00:00:00
○  │   │   ├── time {HeaderParticipantKostentraeger.time} ← no dataset counterpart
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time · IVL_TS 0..1
   │   │   │   A: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time — Hier muss immer ein Quartalsende angegeben sein (MM/YY) => YYYYMMDD, z. B. Quartal I/2016, Quartalsende ist demnach März 2016 und wird zu 20160331
✓  │   │   ├── high {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.time.high} ← Aufnahmezeitpunkt
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time/hl7:high · IVXB_TS 0..1
   │   │   │   A: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:time — Hier muss immer ein Quartalsende angegeben sein (MM/YY) => YYYYMMDD, z. B. Quartal I/2016, Quartalsende ist demnach März 2016 und wird zu 20160331
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.58 · administrative_aufnahmeinformationen.aufnahmezeitpunkt · datetime · 0..1
   │   │   │   R: if_active; writes only when target HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id has a mapped value; transform quarter_end; AKTIN approved deriving the insurance-period quarter end from Aufnahmezeitpunkt; the value is emitted only when another mapping activates the generic Kostenträger participant.
✓  │   │   ├── id {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id} ← Identifikation
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id · II 0..*
   │   │   │   A: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:id — Versichertennummern
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21582 · hauptkostentrager.versicherungsverhaltnis.identifikation · identifier · 0..1
✓  │   │   ├── code {HeaderParticipantKostentraeger.code} ← Versichertenstatus
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code · CE 0..1 · ValueSet 1.2.276.0.76.11.68 @ 2011-12-19T00:00:00
   │   │   │   A: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code — Versichertenstatus
   │   │   │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.versichertenstatus · code · 0..1 · AKTIN approved adding the missing dataset value needed for the CDA Kostenträger participant.
✓  │   │   ├── translation {HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1} ← Versichertenstatus GKV
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1'] · CV 0..1 · ValueSet 1.2.276.0.76.11.162 @ 2014-01-01T00:00:00
   │   │   │   A1: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation[@codeSystem='2.16.840.1.113883.3.7.1.1'] — Codierungen des Versichertenstatus im Rahmen der GKV
   │   │   │   A2: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code — Versichertenstatus
   │   │   │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv · code · 0..1 · AKTIN approved adding the missing GKV status coding expected by the CDA Kostenträger translation.
✓  │   │   ├── translation {HeaderParticipantKostentraeger.translation} ← Weitere Versichertenstatuskodierung
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation · CV 0..*
   │   │   │   A1: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code/hl7:translation — Weitere Codierungen des Versichertenstatus
   │   │   │   A2: hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:code — Versichertenstatus
   │   │   │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.weitere_versichertenstatuskodierung · code · 0..1 · AKTIN approved a configurable additional coding for the repeating CDA Versichertenstatus translation.
○  │   │   ├── addr {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:addr · AD 0..1
○  │   │   └── telecom {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.telecom} ← no dataset counterpart
   │   │       T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.10.2022']]/hl7:associatedEntity/hl7:telecom · TEL 0..*
   │   ├── Hauptkostenträger (hauptkostentrager)
   │   │   Template: 1.2.276.0.76.3.1.195.10.4 @ 2024-08-09T10:35:24
✓  │   │   ├── code {hauptkostentrager.code} ← Als KV-Fall abgerechnet
   │   │   │   T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:code · CE 0..1 · ValueSet 1.2.276.0.76.3.1.195.11.19 @ 2024-08-08T20:33:01
   │   │   │   A: hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:code — Versichertenstatus: als KV Fall abgerechnet?
   │   │   │   S: reviewed model extension · hauptkostentrager.versicherungsverhaltnis.kv_fall · code · 0..1 · AKTIN approved adding the missing dataset value expected by the CDA Hauptkostenträger template.
✓  │   │   └── name {hauptkostentrager.name} ← Name
   │   │       T: template-relative hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name · ON 1..1 R
   │   │       A1: hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:name — Name der Versicherungsgesellschaft
   │   │       A2: hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:scopingOrganization — In scopingOrganization wird im id Element das Institutionskennzeichen (IKNR) des Kostenträgers mit @extension = die eigentliche IKNR und @root = "1.2.276.0.76.4.5" (Dies ist die OID für IK-Nummern in Deutschland) angegeben. Möglich ist auch Nummer + Typ Nummer der Europäische Krankenversicherungskarte EHIC Feld 7 'Identification number of the institution'
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21579 · hauptkostentrager.kostentrager.name · text · 0..1
   │   ├── Dienstleistung/Behandlung (Basis) (CDADocumentationOf)
   │   │   Template: 1.2.276.0.76.10.2035 @ 2014-09-17T00:00:00
○  │   │   ├── effectiveTime {CDADocumentationOf.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime · IVL_TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   ├── low {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.low} ← Aufnahmezeitpunkt
   │   │   │   T: template-relative hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low · TS.DATETIME.MIN 1..1 R
   │   │   │   A: hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:low — Zeitpunkt Therapiebeginn (Datum und Zeit), Zeitangabe genau bis auf die Minute
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.58 · administrative_aufnahmeinformationen.aufnahmezeitpunkt · datetime · 0..1
✓  │   │   ├── high {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.high} ← Zeitpunkt Patient verlegt / entlassen nach
   │   │   │   T: template-relative hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high · TS.DATETIME.MIN 0..1 R
   │   │   │   A: hl7:documentationOf/hl7:serviceEvent/hl7:effectiveTime/cda:high — Zeitpunkt Therapieende, Verlegungs-/Entlassungszeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute; muss, wenn angegeben, hier identisch sein mit encompassingEncounter.effectiveTime.high
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.882 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach · datetime · 0..1
○  │   │   ├── time {CDADocumentationOf.time} ← no dataset counterpart
   │   │   │   T: template-relative hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time · IVL_TS 1..1 R
   │   │   │   A: hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time — Erster Arzt, Arztkontakt Beginn (in low) bis Ende (in high)
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   ├── low {CDADocumentationOf.documentationOf.serviceEvent.performer.time.low} ← Zeitpunkt erster Arztkontakt
   │   │   │   T: template-relative hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low · TS 1..1 R
   │   │   │   A1: hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:low — Begin des Arztkontaktes
   │   │   │   A2: hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time — Erster Arzt, Arztkontakt Beginn (in low) bis Ende (in high)
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.37 · notfallanamnese.zeitpunkt_erster_arztkontakt · datetime · 1..1
✓  │   │   └── high {CDADocumentationOf.documentationOf.serviceEvent.performer.time.high} ← Zeitpunkt Patient verlegungs- / entlassungsfähig
   │   │       T: template-relative hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high · TS 0..1 R
   │   │       A1: hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time/hl7:high — Ende des Arztkontaktes
   │   │       A2: hl7:documentationOf/hl7:serviceEvent/hl7:performer/hl7:time — Erster Arzt, Arztkontakt Beginn (in low) bis Ende (in high)
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20814 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig · datetime · 0..1
   │   └── CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter)
   │       Template: 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00
✓  │       ├── id {CDAEncompassingEncounter.id_1} ← Fallnummer
   │       │   T: template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:id[1] · II 1..* R
   │       │   A: hl7:componentOf/hl7:encompassingEncounter/hl7:id[1] — Identifikationselement (verpflichtend) zur Aufnahme der Aufenthalts-Identifikation als erste Id
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20094 · administrative_aufnahmeinformationen.fallnummer · identifier · 0..1
✓  │       ├── id {CDAEncompassingEncounter.id_2} ← Episodennummer
   │       │   T: template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:id[2] · II 0..1 R
   │       │   A: hl7:componentOf/hl7:encompassingEncounter/hl7:id[2] — Abrechnungs-Fallnummer für das Zuordnen von §21-Daten (optional) als zweite Id
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20093 · administrative_aufnahmeinformationen.episodennummer · identifier · 1..1
○  │       ├── effectiveTime {CDAEncompassingEncounter.effectiveTime} ← no dataset counterpart
   │       │   T: template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime · IVL_TS 1..1 R
✓  │       ├── low {CDAEncompassingEncounter.low} ← Aufnahmezeitpunkt
   │       │   T: template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low · TS.DATE.MIN 1..1 R
   │       │   A: hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:low — Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.58 · administrative_aufnahmeinformationen.aufnahmezeitpunkt · datetime · 0..1
✓  │       ├── high {CDAEncompassingEncounter.high} ← Zeitpunkt Patient verlegt / entlassen nach
   │       │   T: template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high · TS.DATE.MIN 0..1
   │       │   A: hl7:componentOf/hl7:encompassingEncounter/hl7:effectiveTime/hl7:high — Ende Patientenkontakt = Zeitpunkt der Verlegung/Entlassung
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.882 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach · datetime · 0..1
✓  │       └── dischargeDispositionCode {CDAEncompassingEncounter.dischargeDispositionCode} ← Typ Entlassung
   │           T: template-relative hl7:componentOf/hl7:encompassingEncounter/hl7:dischargeDispositionCode · CV 0..1 R · ValueSet 1.2.276.0.76.11.56 @ 2015-11-17T00:00:00
   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.20022 · administrative_verlegungsentlassungsinformationen.typ_entlassung · code · 0..1
   ├── Transportmittel (Transportmethod)
   │   ├── Transportmittel (Transportmethod)
   │   │   Template: 1.2.276.0.76.10.3045 @ 2025-12-01T00:00:00
○  │   │   └── text {Transportmethod.section.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Transportmethode (Transportmethod)
   │   │   Template: 1.2.276.0.76.10.4037 @ 2015-03-03T00:00:00
○  │   │   ├── id {Transportmethod.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..1
○  │   │   ├── text {Transportmethod.observation.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Transportmethod.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Transportmethod.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · IVL_TS 0..1
   │   │   │   A: hl7:observation/hl7:effectiveTime — Optional: Ankunftszeit (high-Element)
✓  │   │   ├── high {Transportmethod.high} ← Ankunftszeit
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:high · TS 1..1
   │   │   │   A: hl7:observation/hl7:effectiveTime — Optional: Ankunftszeit (high-Element)
   │   │   │   S: reviewed model extension · administrative_aufnahmeinformationen.transport.ankunftszeit · datetime · 0..1 · AKTIN approved adding the missing arrival timestamp expected by the CDA Transportmethode template.
✓  │   │   └── value {Transportmethod.value} ← Transportmittel
   │   │       T: template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.41 @ 2015-11-17T00:00:00
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20139 · administrative_aufnahmeinformationen.transport.transportmittel · code · 0..1
   │   └── Medizinische Begleitung (medizinische-begleitung)
   │       Template: 1.2.276.0.76.3.1.195.10.12 @ 2024-08-13T12:56:59
✓  │       ├── code {medizinische-begleitung.code} ← Medizinische Begleitung
   │       │   T: template-relative hl7:procedure/hl7:code · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.2 @ 2024-02-14T11:23:51
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20140 · administrative_aufnahmeinformationen.transport.medizinische_begleitung · code · 0..1
○  │       ├── text {medizinische-begleitung.text} ← no dataset counterpart
   │       │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │       │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │       └── reference {medizinische-begleitung.reference} ← no dataset counterpart
   │           T: template-relative hl7:procedure/hl7:text/hl7:reference · URL 1..1
   │           A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │           R: defaults.required_unmapped → nullFlavor="NI"
   ├── Zuweisung (Typeofreferralsource)
   │   ├── Zuweisung (Typeofreferralsource)
   │   │   Template: 1.2.276.0.76.10.3046 @ 2015-01-10T00:00:00
○  │   │   └── text {Typeofreferralsource.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   └── Zuweisung mit Zuweiser (Referralfrom)
   │       Template: 1.2.276.0.76.10.4038 @ 2015-09-18T00:00:00
○  │       ├── text {Referralfrom.text} ← no dataset counterpart
   │       │   T: template-relative hl7:act/hl7:text · ED 0..1
   │       │   A: hl7:act/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │       ├── reference {Referralfrom.reference} ← no dataset counterpart
   │       │   T: template-relative hl7:act/hl7:text/hl7:reference · URL 1..1
   │       │   A: hl7:act/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │       ├── code {Referralfrom.act.participant.participantRole.code} ← Zuweisung
   │       │   T: template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.11.42 @ 2015-09-18T00:00:00
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.22 · administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung · code · 1..1
○  │       └── originalText {Referralfrom.originalText} ← no dataset counterpart
   │           T: template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code/hl7:originalText · ST 0..1 R
   ├── Ersteinschätzung (ersteinschatzung-section)
   │   ├── Ersteinschätzung (ersteinschatzung-section)
   │   │   Template: 1.2.276.0.76.3.1.195.10.16 @ 2024-08-13T13:25:58
○  │   │   └── text {ersteinschatzung-section.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Direkter Arztkontakt (direkter_arztkontakt)
   │   │   Template: 1.2.276.0.76.3.1.195.10.17 @ 2024-05-24T00:00:00
○  │   │   ├── text {direkter_arztkontakt.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {direkter_arztkontakt.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {direkter_arztkontakt.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {direkter_arztkontakt.observation.negationInd} ← Direkter Arztkontakt
   │   │       T: template-relative hl7:observation/@negationInd · BL 0..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21559 · ersteinschatzung.direkter_arztkontakt · boolean · 0..1
   │   │       R: transform not
   │   ├── Ersteinschätzung (ersteinschatzung)
   │   │   Template: 1.2.276.0.76.3.1.195.10.18 @ 2024-08-13T14:17:50
○  │   │   ├── id {ersteinschatzung.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..* R
○  │   │   ├── text {ersteinschatzung.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ersteinschatzung.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   ├── effectiveTime {ersteinschatzung.effectiveTime} ← Zeitpunkt der Ersteinschätzung
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Ersteinschätzung
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.770 · ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung · datetime · 1..1
✓  │   │   ├── value {ersteinschatzung.value} ← Ergebnis der Ersteinschätzung
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.11 @ 2024-07-22T14:52:50
   │   │   │   A: hl7:observation/hl7:value — Ersteinschätzung, kodiert
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21746 · ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung · code · 1..1
   │   │   │   R: transform enum, select raw
✓  │   │   ├── methodCode {ersteinschatzung.methodCode} ← verwendetes Ersteinschätzungssystem
   │   │   │   T: template-relative hl7:observation/hl7:methodCode · CD 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.12 @ 2024-07-22T15:20:32
   │   │   │   A: hl7:observation/hl7:methodCode — verwendetes Ersteinschätzungssystem
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.804 · ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem · code · 1..1
○  │   │   └── @codeSystemVersion {ersteinschatzung.codeSystemVersion} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:methodCode/@codeSystemVersion · st 0..1 R
   │   │       A: hl7:observation/hl7:methodCode — verwendetes Ersteinschätzungssystem
   │   ├── Manchester Triage System (manchester-triage-system)
   │   │   Template: 1.2.276.0.76.3.1.195.10.19 @ 2024-08-13T14:38:45
○  │   │   ├── id {manchester-triage-system.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..*
○  │   │   ├── text {manchester-triage-system.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {manchester-triage-system.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {manchester-triage-system.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt
○  │   │   ├── value {manchester-triage-system.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 0..1 · ValueSet 1.2.276.0.76.11.44 @ 2024-08-16T17:46:42
   │   │   │   A: hl7:observation/hl7:value — MTS Score, hier optional da übergeordnet schon angegeben
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship/@contextConductionInd · bl 0..1
   │   │   │   A: hl7:observation/hl7:entryRelationship — MTS-Präsentationsdiagramm
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632170} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship/@contextConductionInd · bl 0..1 R
   │   │   │   A: hl7:observation/hl7:entryRelationship — MTS-Indikatoren ROT
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632173} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship/@contextConductionInd · bl 0..1 R
   │   │   │   A: hl7:observation/hl7:entryRelationship — MTS-Indikatoren ORANGE
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632176} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship/@contextConductionInd · bl 0..1 R
   │   │   │   A: hl7:observation/hl7:entryRelationship — MTS-Indikatoren GELB
○  │   │   └── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632179} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:entryRelationship/@contextConductionInd · bl 0..1 R
   │   │       A: hl7:observation/hl7:entryRelationship — MTS-Indikatoren GRÜN
   │   ├── MTS-Präsentationsdiagramm (mts-prasentationsdiagramm)
   │   │   Template: 1.2.276.0.76.3.1.195.10.21 @ 2024-08-13T10:50:15
○  │   │   ├── text {mts-prasentationsdiagramm.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {mts-prasentationsdiagramm.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {mts-prasentationsdiagramm.value} ← MTS-Präsentationsdiagramm
   │   │       T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.10 @ 2024-02-11T21:23:38
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21074 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm · code · 0..1
   │   ├── MTS-Indikatoren ROT (mts-indikatoren-rot)
   │   │   Template: 1.2.276.0.76.3.1.195.10.22 @ 2024-08-13T10:50:15
○  │   │   ├── text {mts-indikatoren-rot.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {mts-indikatoren-rot.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {mts-indikatoren-rot.value} ← MTS-Indikatoren ROT
   │   │       T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.13 @ 2024-07-22T16:51:10
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21047 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot · code · 0..1
   │   ├── MTS-Indikatoren ORANGE (mts-indikatoren-orange)
   │   │   Template: 1.2.276.0.76.3.1.195.10.23 @ 2024-08-13T10:50:15
○  │   │   ├── text {mts-indikatoren-orange.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {mts-indikatoren-orange.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {mts-indikatoren-orange.value} ← MTS-Indikatoren ORANGE
   │   │       T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.14 @ 2024-07-22T16:51:10
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21048 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange · code · 0..1
   │   ├── MTS-Indikatoren GELB (mts-indikatoren-gelb)
   │   │   Template: 1.2.276.0.76.3.1.195.10.24 @ 2024-08-13T10:50:15
○  │   │   ├── text {mts-indikatoren-gelb.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {mts-indikatoren-gelb.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {mts-indikatoren-gelb.value} ← MTS-Indikatoren GELB
   │   │       T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.15 @ 2024-07-22T16:51:10
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21049 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb · code · 0..1
   │   ├── MTS-Indikatoren GRÜN (mts-indikatoren-grun)
   │   │   Template: 1.2.276.0.76.3.1.195.10.25 @ 2024-08-13T10:50:15
○  │   │   ├── text {mts-indikatoren-grun.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {mts-indikatoren-grun.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {mts-indikatoren-grun.value} ← MTS-Indikatoren GRÜN
   │   │       T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.16 @ 2024-07-22T16:51:10
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21050 · ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun · code · 0..1
   │   ├── Emergency Severity Index (emergency-severity-index)
   │   │   Template: 1.2.276.0.76.3.1.195.10.20 @ 2024-08-13T14:38:45
○  │   │   ├── id {emergency-severity-index.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..*
○  │   │   ├── text {emergency-severity-index.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {emergency-severity-index.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {emergency-severity-index.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt
○  │   │   ├── value {emergency-severity-index.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 0..1 · ValueSet 1.2.276.0.76.11.45 @ 2024-08-16T17:47:00
   │   │   │   A: hl7:observation/hl7:value — ESI Score, hier optional da übergeordnet schon angegeben
○  │   │   └── @contextConductionInd {emergency-severity-index.contextConductionInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:entryRelationship/@contextConductionInd · bl 0..1
   │   │       A: hl7:observation/hl7:entryRelationship — ESI-Triagefaktoren
   │   └── ESI-Triagefaktoren (esi-triage-faktoren)
   │       Template: 1.2.276.0.76.3.1.195.10.26 @ 2024-08-13T10:50:15
○  │       ├── text {esi-triage-faktoren.text} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │       │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │       ├── reference {esi-triage-faktoren.reference} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │       │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │       └── value {esi-triage-faktoren.value} ← ESI-Triage
   │           T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.20 @ 2024-07-22T16:51:10
   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.21073 · ersteinschatzung.parameter_der_ersteinschatzung.esitriage · code · 0..1
   │           R: transform enum, select raw
   ├── Notfallanamnese (HistoryofPresentIllnessSection)
   │   ├── Notfallanamnese (HistoryofPresentIllnessSection)
   │   │   Template: 1.2.276.0.76.10.3053 @ 2025-12-01T00:00:00
○  │   │   └── text {HistoryofPresentIllnessSection.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Unfall-Anamnese (unfall-anamnese)
   │   │   Template: 1.2.276.0.76.3.1.195.10.28 @ 2024-08-13T18:34:56
○  │   │   ├── text {unfall-anamnese.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:text · ED 0..1
   │   │   │   A: hl7:act/hl7:text — Beschreibung, falls Verkehrsunfall, lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {unfall-anamnese.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:act/hl7:text — Beschreibung, falls Verkehrsunfall, lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {unfall-anamnese.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime · IVL_TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── low {unfall-anamnese.low} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime/hl7:low · TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── code {unfall-anamnese.act.participant.participantRole.code} ← Fahrzeug des Verunfallten
   │   │       T: template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.8 @ 2024-06-26T13:29:30
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20278 · notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten · code · 0..1
   │   ├── Unfallursache/-kinetik (unfallursache-kinetik)
   │   │   Template: 1.2.276.0.76.3.1.195.10.29 @ 2024-08-13T18:37:55
✓  │   │   ├── value {unfallursache-kinetik.observation.value} ← Unfallursache
   │   │   │   T: template-relative hl7:observation/hl7:value · CD 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.6 @ 2024-02-14T13:19:28
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20156 · notfallanamnese.unfallanamnese.unfallursache · code · 0..1
✓  │   │   └── value {unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value} ← Unfallkinetik
   │   │       T: template-relative hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='67496-0']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.5 @ 2024-02-14T12:41:43
   │   │       A: hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='67496-0'] — Unfallkinetik
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20280 · notfallanamnese.unfallanamnese.unfallkinetik · code · 0..1
   │   ├── Unfallart Traumaregister (unfallart-traumaregister)
   │   │   Template: 1.2.276.0.76.3.1.195.10.30 @ 2024-08-13T18:37:55
✓  │   │   └── value {unfallart-traumaregister.value} ← Unfallart TraumaRegister
   │   │       T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.18 @ 2024-08-08T20:33:01
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21748 · notfallanamnese.unfallanamnese.unfallart_trauma_register · code · 0..1
   │   └── Substanz-Einfluss (substanz-einfluss)
   │       Template: 1.2.276.0.76.3.1.195.10.32 @ 2024-08-13T18:37:55
✓  │       └── value {substanz-einfluss.value} ← Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?
   │           T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.23 @ 2024-07-22T16:51:10
   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.20365 · notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq · code · 0..1
   ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)
   │   ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)
   │   │   Template: 1.2.276.0.76.10.3048 @ 2015-01-10T00:00:00
○  │   │   └── text {Chiefcomplaintreasonforvisit.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Problem Concern Act (Text/CEDIS) (Problemconcernactcedis)
   │   │   Template: 1.2.276.0.76.10.4039 @ 2015-03-03T00:00:00
○D │   │   ├── statusCode {Problemconcernactcedis.statusCode} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:statusCode · CS 1..1 · ValueSet 2.16.840.1.113883.1.11.15933 @ 2014-03-26T00:00:00
   │   │   │   R: exact target default for {Problemconcernactcedis.statusCode}: value=active; The presenting complaint is represented as an actively tracked concern; completed requires explicit closure evidence and a corresponding concern effectiveTime.high.
○  │   │   ├── effectiveTime {Problemconcernactcedis.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime · IVL_TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   ├── low {Problemconcernactcedis.low} ← Ereigniseintritt
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime/hl7:low · IVXB_TS 1..1 R
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20101 · notfallanamnese.beschwerden_bei_vorstellung.ereigniseintritt · datetime · 0..1
○  │   │   └── high {Problemconcernactcedis.high} ← no dataset counterpart
   │   │       T: template-relative hl7:act/hl7:effectiveTime/hl7:high · IVXB_TS 0..1 R
   │   └── Problem Observation (Text/CEDIS) (Problemobservationcedis)
   │       Template: 1.2.276.0.76.10.4040 @ 2015-09-18T00:00:00
○  │       ├── text {Problemobservationcedis.text} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │       │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │       ├── reference {Problemobservationcedis.reference} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │       │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
○  │       ├── effectiveTime {Problemobservationcedis.effectiveTime} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime · IVL_TS 1..1 R
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
○  │       ├── width {Problemobservationcedis.width} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:width · PQ 1..1 R
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │       ├── value {Problemobservationcedis.value} ← Beschwerden bei Vorstellung (CEDIS)
   │       │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.61 @ 2016-02-21T00:00:00
   │       │   A: hl7:observation/hl7:value — CEDIS Kode
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.805 · notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis · code · 0..1
✓  │       └── originalText {Problemobservationcedis.originalText} ← Beschwerden bei Vorstellung (Freitext)
   │           T: template-relative hl7:observation/hl7:value/hl7:originalText · ST 0..1 C
   │           A1: hl7:observation/hl7:value/hl7:originalText — Beschwerden bei Vorstellung (Freitext)
   │           A2: hl7:observation/hl7:value — CEDIS Kode
   │           S: concept 2.16.840.1.113883.2.6.60.3.2.9.36 · notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext · text · 1..1
   ├── Klinische Basisinformationen (ClinicalInformation)
   │   ├── Klinische Basisinformationen (ClinicalInformation)
   │   │   Template: 1.2.276.0.76.10.3047 @ 2016-08-02T00:00:00
○  │   │   └── text {ClinicalInformation.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Status Schwangerschaft (Pregnancystatus)
   │   │   Template: 1.2.276.0.76.10.4043 @ 2015-03-03T00:00:00
○  │   │   ├── id {Pregnancystatus.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..1
○  │   │   ├── text {Pregnancystatus.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Pregnancystatus.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Pregnancystatus.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   └── value {Pregnancystatus.value} ← Schwangerschaft
   │   │       T: template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.46 @ 2015-11-17T00:00:00
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.5 · klinische_basisdaten_patient.schwangerschaft · code · 0..1
   │   │       R: transform enum, select raw
   │   ├── Immunisierung Clostridium tetani (Clostridiumtetaniimmunization)
   │   │   Template: 1.2.276.0.76.10.4044 @ 2015-09-18T00:00:00
○  │   │   ├── id {Clostridiumtetaniimmunization.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:id · II 0..1
○  │   │   ├── text {Clostridiumtetaniimmunization.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:text · ED 0..1
   │   │   │   A: hl7:substanceAdministration/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Clostridiumtetaniimmunization.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:substanceAdministration/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Clostridiumtetaniimmunization.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime · TS 0..1
✓  │   │   ├── @negationInd {Clostridiumtetaniimmunization.negationInd} ← Tetanusschutz
   │   │   │   T: template-relative hl7:substanceAdministration/@negationInd · bl 1..1
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.6 · klinische_basisdaten_patient.tetanusschutz · code · 0..1
   │   │   │   R: transform enum
✓  │   │   └── @nullFlavor {Clostridiumtetaniimmunization.nullFlavor} ← Tetanusschutz
   │   │       T: template-relative hl7:substanceAdministration/@nullFlavor · cs 0..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.6 · klinische_basisdaten_patient.tetanusschutz · code · 0..1
   │   │       R: transform enum
   │   ├── Modified Rankin Scale (Modifiedrankinscale)
   │   │   Template: 1.2.276.0.76.10.4045 @ 2015-03-03T00:00:00
○  │   │   ├── text {Modifiedrankinscale.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Modifiedrankinscale.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Modifiedrankinscale.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   ├── value {Modifiedrankinscale.observation.value} ← modified Rankin Skala Score
   │   │   │   T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.114 · scores.modified_rankin_skala_score · code · 0..1
   │   │   │   R: transform ordinal
○  │   │   └── @value {Modifiedrankinscale.observation.value.value} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:value/@value · 1..1 R
   │   ├── Problem Concern Act (Multidrug-resistant organism) (ProblemconcernactMDRO)
   │   │   Template: 1.2.276.0.76.10.4072 @ 2017-03-01T00:00:00
○  │   │   ├── effectiveTime {ProblemconcernactMDRO.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime · IVL_TS 0..1 R
○  │   │   ├── low {ProblemconcernactMDRO.low} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime/hl7:low · IVXB_TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   └── high {ProblemconcernactMDRO.high} ← no dataset counterpart
   │   │       T: template-relative hl7:act/hl7:effectiveTime/hl7:high · IVXB_TS 0..1 R
   │   └── Problem Observation (Multidrug-resistant organism) (ProblemobservationMDRO)
   │       Template: 1.2.276.0.76.10.4073 @ 2017-03-01T00:00:00
○  │       ├── text {ProblemobservationMDRO.text} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │       │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │       ├── reference {ProblemobservationMDRO.reference} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │       │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
○  │       ├── effectiveTime {ProblemobservationMDRO.effectiveTime} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime · IVL_TS 0..1 R
   │       │   A: hl7:observation/hl7:effectiveTime — effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt.
○  │       ├── low {ProblemobservationMDRO.low} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:low · TS 1..1 R
   │       │   A: hl7:observation/hl7:effectiveTime — effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt.
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
○  │       ├── high {ProblemobservationMDRO.high} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:high · TS 0..1 R
   │       │   A: hl7:observation/hl7:effectiveTime — effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt.
✓  │       ├── value {ProblemobservationMDRO.observation.value} ← Isolation Begründung
   │       │   T: template-relative hl7:observation/hl7:value · CD 1..1 R · ValueSet 1.2.276.0.76.11.60 @ 2015-09-18T00:00:00
   │       │   A: hl7:observation/hl7:value — Multiresistenter Keim Ja/Nein/Verdacht; wenn angegeben soll, dass der in observation.value angegebene Keim NICHT vorliegt, wird observation.@negationInd="true" gesetzt. Bei "Verdacht" ist der Befundstatus in observation.value.qualifier entsprechend zu setzen.
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.8 · masnahmen.isolation.isolation_begrundung · code · 1..1
   │       │   R: transform enum, select raw; AKTIN approved deriving the generic AMRO assertion only from the exact isolation reason 'multiresistenter Keim'; other isolation reasons do not create an MDRO observation.
○  │       ├── value {ProblemobservationMDRO.observation.value.qualifier_name.code_FSTAT.value} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.73 @ 2016-08-02T00:00:00
   │       │   A1: hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT'] — Optionale Angabe des Befundstatus (finding status) des Problems.
   │       │   A2: hl7:observation/hl7:value — Multiresistenter Keim Ja/Nein/Verdacht; wenn angegeben soll, dass der in observation.value angegebene Keim NICHT vorliegt, wird observation.@negationInd="true" gesetzt. Bei "Verdacht" ist der Befundstatus in observation.value.qualifier entsprechend zu setzen.
○  │       └── @negationInd {ProblemobservationMDRO.negationInd} ← no dataset counterpart
   │           T: template-relative hl7:observation/@negationInd · cs 0..1
   ├── Vitalparameter (VitalSignsSection)
   │   ├── Vitalparameter (VitalSignsSection)
   │   │   Template: 1.2.276.0.76.3.1.195.10.96 @ 2025-12-01T00:00:00
○  │   │   ├── title {VitalSignsSection.title} ← no dataset counterpart
   │   │   │   T: template-relative hl7:section/hl7:title · ST 1..1
○  │   │   └── text {VitalSignsSection.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Vitalparameter-Container (vitalparametercontainer)
   │   │   Template: 1.2.276.0.76.3.1.195.10.95 @ 2026-04-27T15:39:06
✓  │   │   └── effectiveTime {vitalparametercontainer.effectiveTime} ← Zeitpunkt
   │   │       T: template-relative hl7:organizer/hl7:effectiveTime · TS 1..1 R
   │   │       A: hl7:organizer/hl7:effectiveTime — Zeitpunkt der Messung aller Vital Sign Beobachtungen in diesem Container.
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20366 · vitalparameter.zeitpunkt · datetime · 1..1
   │   ├── Atemfrequenz (RespiratoryRate)
   │   │   Template: 1.2.276.0.76.10.4030 @ 2014-09-16T00:00:00
○  │   │   ├── originalText {RespiratoryRate.originalText} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:code/hl7:originalText · ED 0..1
○  │   │   ├── text {RespiratoryRate.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {RespiratoryRate.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {RespiratoryRate.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   └── value {RespiratoryRate.value} ← Atemfrequenz
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.9 · vitalparameter.atemfrequenz · quantity · 0..1
   │   ├── Pulsoximetrische Sauerstoffsättigung (pulsoximetrische_sauerstoffsattigung)
   │   │   Template: 1.2.276.0.76.3.1.195.10.35 @ 2024-08-14T10:13:56
○  │   │   ├── id {pulsoximetrische_sauerstoffsattigung.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..1
○  │   │   ├── text {pulsoximetrische_sauerstoffsattigung.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {pulsoximetrische_sauerstoffsattigung.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {pulsoximetrische_sauerstoffsattigung.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {pulsoximetrische_sauerstoffsattigung.value} ← Pulsoximetrische Sauerstoffsättigung
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.10 · vitalparameter.pulsoximetrische_sauerstoffsattigung · quantity · 0..1
   │   ├── Blutdruck systolisch (Systolicbloodpressure)
   │   │   Template: 1.2.276.0.76.10.4032 @ 2014-09-16T00:00:00
○  │   │   ├── text {Systolicbloodpressure.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Systolicbloodpressure.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Systolicbloodpressure.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   └── value {Systolicbloodpressure.value} ← Systolischer Blutdruck
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.11 · vitalparameter.blutdruck.systolischer_blutdruck · quantity · 0..1
   │   ├── Blutdruck diastolisch (blutdruck-diastolisch)
   │   │   Template: 1.2.276.0.76.3.1.195.10.38 @ 2024-08-14T10:13:56
○  │   │   ├── id {blutdruck-diastolisch.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..1
○  │   │   ├── text {blutdruck-diastolisch.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {blutdruck-diastolisch.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {blutdruck-diastolisch.value} ← Diastolischer Blutdruck
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20143 · vitalparameter.blutdruck.diastolischer_blutdruck · quantity · 0..1
   │   ├── Herzfrequenz (HeartRate)
   │   │   Template: 1.2.276.0.76.10.4033 @ 2014-09-16T00:00:00
○  │   │   ├── text {HeartRate.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {HeartRate.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {HeartRate.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   └── value {HeartRate.value} ← Herzfrequenz
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.12 · vitalparameter.herzfrequenz · quantity · 0..1
   │   ├── Pulsfrequenz (pulsfrequenz)
   │   │   Template: 1.2.276.0.76.3.1.195.10.40 @ 2024-08-14T10:13:56
○  │   │   ├── id {pulsfrequenz.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..1
○  │   │   ├── text {pulsfrequenz.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {pulsfrequenz.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {pulsfrequenz.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── value {pulsfrequenz.value} ← Pulsfrequenz
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20282 · vitalparameter.puls.pulsfrequenz · quantity · 0..1
   │   ├── Glasgow Coma Scale (GlasgowComaScale)
   │   │   Template: 1.2.276.0.76.10.4034 @ 2014-09-16T00:00:00
○  │   │   ├── id {GlasgowComaScale.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:id · II 0..1 R
○  │   │   ├── text {GlasgowComaScale.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {GlasgowComaScale.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {GlasgowComaScale.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
✓  │   │   ├── value {GlasgowComaScale.observation.value} ← GCS Summe
   │   │   │   T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.17 · scores.glasgow_coma_scale_gcs.gcs_summe · ordinal · 1..1
○  │   │   ├── @value {GlasgowComaScale.observation.value.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value/@value · 1..1 R
✓  │   │   ├── value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value} ← GCS Augenöffnen
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation/hl7:value · PQ 1..1 R
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.13 · scores.glasgow_coma_scale_gcs.gcs_augenoffnen · ordinal · 1..1
○  │   │   ├── @value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']/hl7:observation/hl7:value/@value · 1..1 R
✓  │   │   ├── value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value} ← GCS verbale Antwort
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation/hl7:value · PQ 1..1 R
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.14 · scores.glasgow_coma_scale_gcs.gcs_verbale_antwort · ordinal · 1..1
○  │   │   ├── @value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']/hl7:observation/hl7:value/@value · 1..1 R
✓  │   │   ├── value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value} ← GCS motorische Antwort
   │   │   │   T: template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation/hl7:value · PQ 1..1 R
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.16 · scores.glasgow_coma_scale_gcs.gcs_motorische_antwort · ordinal · 1..1
○  │   │   └── @value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value.value} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']/hl7:observation/hl7:value/@value · 1..1 R
   │   ├── Pupillenweite (Pupilsize)
   │   │   Template: 1.2.276.0.76.10.4046 @ 2015-09-18T00:00:00
○  │   │   ├── text {Pupilsize.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Pupilsize.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Pupilsize.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   ├── value {Pupilsize.value} ← Pupillenweite (rechts), Pupillenweite (links)
   │   │   │   T: template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.49 @ 2015-11-17T00:00:00
   │   │   │   S1: concept 2.16.840.1.113883.2.6.60.3.2.9.18 · vitalparameter.pupillenweite.pupillenweite_rechts · code · 1..1 · logical {Pupilsize_right.value}
   │   │   │   S2: concept 2.16.840.1.113883.2.6.60.3.2.9.20018 · vitalparameter.pupillenweite.pupillenweite_links · code · 1..1 · logical {Pupilsize_left.value}
   │   │   │   R: repeat_by_discriminator (repeat-by-discriminator-pupilsize-value); physical {Pupilsize.value}; branch right; Pupilsize.targetSiteCode=code=R, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge rechts
   │   │   │   R: repeat_by_discriminator (repeat-by-discriminator-pupilsize-value); physical {Pupilsize.value}; branch left; Pupilsize.targetSiteCode=code=L, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge links
○  │   │   └── targetSiteCode {Pupilsize.targetSiteCode} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:targetSiteCode · CV 1..1 R · ValueSet 1.2.276.0.76.11.48 @ 2015-11-17T00:00:00
   │   │       A: hl7:observation/hl7:targetSiteCode — Linkes/rechtes Auge
   │   ├── Pupillenreaktion (Pupilreaction)
   │   │   Template: 1.2.276.0.76.10.4047 @ 2015-09-18T00:00:00
○  │   │   ├── text {Pupilreaction.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {Pupilreaction.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Pupilreaction.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   ├── value {Pupilreaction.value} ← Pupillenreaktion (rechts), Pupillenreaktion (links)
   │   │   │   T: template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.50 @ 2015-11-17T00:00:00
   │   │   │   S1: concept 2.16.840.1.113883.2.6.60.3.2.9.19 · vitalparameter.pupillenreaktion.pupillenreaktion_rechts · code · 1..1 · logical {Pupilreaction_right.value}
   │   │   │   S2: concept 2.16.840.1.113883.2.6.60.3.2.9.20019 · vitalparameter.pupillenreaktion.pupillenreaktion_links · code · 1..1 · logical {Pupilreaction_left.value}
   │   │   │   R: repeat_by_discriminator (repeat-by-discriminator-pupilreaction-value); physical {Pupilreaction.value}; branch right; Pupilreaction.targetSiteCode=code=R, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge rechts
   │   │   │   R: repeat_by_discriminator (repeat-by-discriminator-pupilreaction-value); physical {Pupilreaction.value}; branch left; Pupilreaction.targetSiteCode=code=L, codeSystem=1.2.276.0.76.3.1.195.5.48, displayName=Auge links
○  │   │   └── targetSiteCode {Pupilreaction.targetSiteCode} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/hl7:targetSiteCode · CV 1..1 R · ValueSet 1.2.276.0.76.11.48 @ 2015-11-17T00:00:00
   │   │       A: hl7:observation/hl7:targetSiteCode — Linkes/rechtes Auge
   │   ├── Körperkerntemperatur (BodyTemperatureCore)
   │   │   Template: 1.2.276.0.76.10.4035 @ 2014-09-16T00:00:00
○  │   │   ├── text {BodyTemperatureCore.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {BodyTemperatureCore.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {BodyTemperatureCore.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │   │   └── value {BodyTemperatureCore.value} ← Körperkerntemperatur
   │   │       T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20050 · vitalparameter.korperkerntemperatur.korperkerntemperatur · quantity · 0..1
   │   └── Schmerz (Painseverity)
   │       Template: 1.2.276.0.76.10.4036 @ 2014-09-16T00:00:00
○  │       ├── text {Painseverity.text} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │       │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │       ├── reference {Painseverity.reference} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │       │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
○  │       ├── effectiveTime {Painseverity.effectiveTime} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1
✓  │       ├── value {Painseverity.observation.value} ← Numerischen Rating Skala
   │       │   T: template-relative hl7:observation/hl7:value · PQ 1..1 R
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21 · scores.schmerzmessung.numerischen_rating_skala · quantity · 0..1
○  │       └── @value {Painseverity.observation.value.value} ← no dataset counterpart
   │           T: template-relative hl7:observation/hl7:value/@value · 1..1 R
   ├── Diagnostik (Relevantdiagnostictestsorlaboratorydata)
   │   ├── Diagnostik (Relevantdiagnostictestsorlaboratorydata)
   │   │   Template: 1.2.276.0.76.10.3050 @ 2025-12-01T00:00:00
✓  │   │   └── text {Relevantdiagnostictestsorlaboratorydata.text} ← Untersuchungsregion
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   │       A: hl7:section/hl7:text — Durchgeführte Diganostik als Schnellübersicht
   │   │       S1: concept 2.16.840.1.113883.2.6.60.3.2.9.20726 · diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion · code · 0..1
   │   │       S2: concept 2.16.840.1.113883.2.6.60.3.2.9.20729 · diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion · code · 0..1
   │   │       R: reviewed narrative-only fact [DEC-044]; Preserve the reviewed MRI examination-region wording in the Diagnostics section narrative; no structured imaging-region code target or crosswalk is asserted.
   │   │       R: reviewed narrative-only for_each [DEC-044]; Preserve each reviewed X-ray examination-region occurrence in the Diagnostics section narrative without joining occurrences or coalescing them with structured diagnostic entries.
   │   ├── Röntgen-Thorax angefordert (rontgenthorax_angefordert)
   │   │   Template: 1.2.276.0.76.3.1.195.10.51 @ 2024-05-24T00:00:00
○  │   │   ├── text {rontgenthorax_angefordert.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {rontgenthorax_angefordert.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {rontgenthorax_angefordert.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {rontgenthorax_angefordert.negationInd} ← Röntgenthorax angefordert
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.29267 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert · boolean · 0..1
   │   │       R: transform not
   │   ├── Röntgen-Thorax durchgeführt (Plainchestxray)
   │   │   Template: 1.2.276.0.76.10.4050 @ 2015-09-18T00:00:00
○  │   │   ├── text {Plainchestxray.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Plainchestxray.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Plainchestxray.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Plainchestxray.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
✓  │   │   └── @negationInd {Plainchestxray.negationInd} ← Röntgen-Thorax durchgeführt
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21964 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt (Radiographyofspine)
   │   │   Template: 1.2.276.0.76.10.4051 @ 2015-09-18T00:00:00
○  │   │   ├── text {Radiographyofspine.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Radiographyofspine.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Radiographyofspine.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Radiographyofspine.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
✓  │   │   └── @negationInd {Radiographyofspine.negationInd} ← Röntgen-Wirbelsäule durchgeführt
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21968 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── Röntgen-Becken durchgeführt (Pelvisxray)
   │   │   Template: 1.2.276.0.76.10.4052 @ 2015-09-18T00:00:00
○  │   │   ├── text {Pelvisxray.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Pelvisxray.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Pelvisxray.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Pelvisxray.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
✓  │   │   └── @negationInd {Pelvisxray.negationInd} ← Röntgen-Becken durchgeführt
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21966 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── Röntgen-Extremitäten durchgeführt (Plainradiographylimbstructure)
   │   │   Template: 1.2.276.0.76.10.4053 @ 2015-09-18T00:00:00
○  │   │   ├── text {Plainradiographylimbstructure.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Plainradiographylimbstructure.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Plainradiographylimbstructure.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Plainradiographylimbstructure.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Plainradiographylimbstructure.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── Röntgen o.n.A. durchgeführt (Plainradiography)
   │   │   Template: 1.2.276.0.76.10.4054 @ 2015-09-18T00:00:00
○  │   │   ├── text {Plainradiography.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Plainradiography.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Plainradiography.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Plainradiography.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Plainradiography.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── CT Kopf durchgeführt (Computedtomographyofentirehead)
   │   │   Template: 1.2.276.0.76.10.4055 @ 2015-09-18T00:00:00
○  │   │   ├── text {Computedtomographyofentirehead.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Computedtomographyofentirehead.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Computedtomographyofentirehead.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Computedtomographyofentirehead.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
✓  │   │   └── @negationInd {Computedtomographyofentirehead.negationInd} ← CT Kopf durchgeführt
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21972 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── CT Ganzkörper durchgeführt (Computedtomographyscanwholebody)
   │   │   Template: 1.2.276.0.76.10.4056 @ 2015-09-18T00:00:00
○  │   │   ├── text {Computedtomographyscanwholebody.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Computedtomographyscanwholebody.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Computedtomographyscanwholebody.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Computedtomographyscanwholebody.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Computedtomographyscanwholebody.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── CT Abdomen durchgeführt (ct_abdomen_durchgefuhrt)
   │   │   Template: 1.2.276.0.76.3.1.195.10.59 @ 2024-05-24T00:00:00
○  │   │   ├── text {ct_abdomen_durchgefuhrt.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ct_abdomen_durchgefuhrt.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {ct_abdomen_durchgefuhrt.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {ct_abdomen_durchgefuhrt.negationInd} ← CT Abdomen durchgeführt
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21978 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── CT Extremitäten durchgeführt (ct_extremitaten_durchgefuhrt)
   │   │   Template: 1.2.276.0.76.3.1.195.10.60 @ 2024-05-24T00:00:00
○  │   │   ├── text {ct_extremitaten_durchgefuhrt.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ct_extremitaten_durchgefuhrt.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {ct_extremitaten_durchgefuhrt.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
○  │   │   └── @negationInd {ct_extremitaten_durchgefuhrt.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   ├── CT HWS durchgeführt (ct_hws_durchgefuhrt)
   │   │   Template: 1.2.276.0.76.3.1.195.10.57 @ 2024-05-24T00:00:00
○  │   │   ├── text {ct_hws_durchgefuhrt.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ct_hws_durchgefuhrt.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {ct_hws_durchgefuhrt.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {ct_hws_durchgefuhrt.negationInd} ← CT HWS durchgeführt
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21974 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── CT Thorax durchgeführt (ct_thorax_durchgefuhrt)
   │   │   Template: 1.2.276.0.76.3.1.195.10.58 @ 2024-05-24T00:00:00
○  │   │   ├── text {ct_thorax_durchgefuhrt.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ct_thorax_durchgefuhrt.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {ct_thorax_durchgefuhrt.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {ct_thorax_durchgefuhrt.negationInd} ← CT Thorax durchgeführt
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21976 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt · boolean · 0..1
   │   │       R: transform not
   │   ├── CT o.n.A. durchgeführt (Computerizedaxialtomography)
   │   │   Template: 1.2.276.0.76.10.4063 @ 2015-09-18T00:00:00
○  │   │   ├── text {Computerizedaxialtomography.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Computerizedaxialtomography.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Computerizedaxialtomography.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Computerizedaxialtomography.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Computerizedaxialtomography.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── MRT durchgeführt (Magneticresonanceimaging)
   │   │   Template: 1.2.276.0.76.10.4058 @ 2015-09-18T00:00:00
○  │   │   ├── text {Magneticresonanceimaging.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Magneticresonanceimaging.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Magneticresonanceimaging.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Magneticresonanceimaging.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Magneticresonanceimaging.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── CT-/MR-/DS-Angiographie (ct-mr-ds-angiographie)
   │   │   Template: 1.2.276.0.76.3.1.195.10.91 @ 2024-05-24T00:00:00
○  │   │   ├── text {ct-mr-ds-angiographie.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ct-mr-ds-angiographie.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {ct-mr-ds-angiographie.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── value {ct-mr-ds-angiographie.value} ← CT- bzw. MR- bzw. DS-Angiographie
   │   │       T: template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.24 @ 2024-07-22T16:51:10
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.22056 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie · code · 0..1
   │   │       R: transform enum, select raw
   │   ├── Laboruntersuchung durchgeführt (Laboratorytest)
   │   │   Template: 1.2.276.0.76.10.4057 @ 2015-09-18T00:00:00
○  │   │   ├── text {Laboratorytest.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Laboratorytest.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Laboratorytest.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Laboratorytest.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Laboratorytest.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── Mikrobiologie angefordert (mikrobiologie_angefordert)
   │   │   Template: 1.2.276.0.76.3.1.195.10.47 @ 2024-05-24T00:00:00
○  │   │   ├── text {mikrobiologie_angefordert.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {mikrobiologie_angefordert.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {mikrobiologie_angefordert.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {mikrobiologie_angefordert.negationInd} ← Mikrobiologie angefordert
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.21764 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert · boolean · 0..1
   │   │       R: transform not
   │   ├── BGA angefordert (bga_angefordert)
   │   │   Template: 1.2.276.0.76.3.1.195.10.48 @ 2024-05-24T00:00:00
○  │   │   ├── text {bga_angefordert.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {bga_angefordert.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {bga_angefordert.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {bga_angefordert.negationInd} ← BGA angefordert
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.29264 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert · boolean · 0..1
   │   │       R: transform not
   │   ├── BGA durchgeführt (Bloodgasanalysis)
   │   │   Template: 1.2.276.0.76.10.4059 @ 2015-09-18T00:00:00
○  │   │   ├── text {Bloodgasanalysis.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Bloodgasanalysis.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Bloodgasanalysis.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Bloodgasanalysis.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Bloodgasanalysis.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt (Urinalysisreagentstripwithoutmicroscopy)
   │   │   Template: 1.2.276.0.76.10.4060 @ 2015-09-18T00:00:00
○  │   │   ├── text {Urinalysisreagentstripwithoutmicroscopy.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Urinalysisreagentstripwithoutmicroscopy.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Urinalysisreagentstripwithoutmicroscopy.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Urinalysisreagentstripwithoutmicroscopy.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Urinalysisreagentstripwithoutmicroscopy.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── EKG angefordert (ekg_angefordert)
   │   │   Template: 1.2.276.0.76.3.1.195.10.49 @ 2024-05-24T00:00:00
○  │   │   ├── text {ekg_angefordert.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {ekg_angefordert.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {ekg_angefordert.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {ekg_angefordert.negationInd} ← EKG angefordert
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.29265 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert · boolean · 0..1
   │   │       R: transform not
   │   ├── Zwölfkanal-EKG durchgeführt (Twelveleadelectrocardiogram)
   │   │   Template: 1.2.276.0.76.10.4061 @ 2015-09-18T00:00:00
○  │   │   ├── text {Twelveleadelectrocardiogram.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Twelveleadelectrocardiogram.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Twelveleadelectrocardiogram.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Twelveleadelectrocardiogram.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Twelveleadelectrocardiogram.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── Echokardiographie durchgeführt (Echocardiography)
   │   │   Template: 1.2.276.0.76.10.4064 @ 2015-09-18T00:00:00
○  │   │   ├── text {Echocardiography.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Echocardiography.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Echocardiography.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Echocardiography.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Echocardiography.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   ├── Sonographie angefordert (sonographie_angefordert)
   │   │   Template: 1.2.276.0.76.3.1.195.10.50 @ 2024-05-24T00:00:00
○  │   │   ├── text {sonographie_angefordert.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {sonographie_angefordert.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · TEL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {sonographie_angefordert.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:effectiveTime · TS 0..1 R
✓  │   │   └── @negationInd {sonographie_angefordert.negationInd} ← Sonographie angefordert
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.29266 · diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert · boolean · 0..1
   │   │       R: transform not
   │   ├── Sonographie durchgeführt (Diagnosticultrasonography)
   │   │   Template: 1.2.276.0.76.10.4062 @ 2015-09-18T00:00:00
○  │   │   ├── text {Diagnosticultrasonography.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── reference {Diagnosticultrasonography.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Diagnosticultrasonography.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — Zeitpunkt der Untersuchung
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── value {Diagnosticultrasonography.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value · CE 1..1 R · ValueSet 1.2.276.0.76.11.51 @ 2015-11-17T00:00:00
   │   │   │   A: hl7:observation/hl7:value — Befund
   │   │   │   R: defaults.required_unmapped → nullFlavor="UNK"
○  │   │   └── @negationInd {Diagnosticultrasonography.negationInd} ← no dataset counterpart
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   └── Wildcard Diagnostik (WildcardDiagnostik)
   │       Template: 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30
✓  │       ├── code {WildcardDiagnostik.code} ← Code
   │       │   T: template-relative hl7:observation/hl7:code · CD 1..1
   │       │   A: hl7:observation/hl7:code — Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.)
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29604 · diagnostik.wildcard_diagnostik.code · code · 1..1
○  │       ├── effectiveTime {WildcardDiagnostik.effectiveTime_xsi_type_IVL_TS} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS'] · IVL_TS 0..1 R
   │       │   A: hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Beobachtung
○  │       ├── low {WildcardDiagnostik.low} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:low · TS 0..1 R
   │       │   A: hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Beobachtung
○  │       ├── high {WildcardDiagnostik.high} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:high · TS 0..1 R
   │       │   A: hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Beobachtung
✓  │       ├── width {WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width} ← Zeitraum
   │       │   T: template-relative hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:width · PQ 0..1
   │       │   A: hl7:observation/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Beobachtung
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29609 · diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum · duration · 0..1
✓  │       ├── effectiveTime {WildcardDiagnostik.effectiveTime_not_xsi_type} ← Zeitpunkt
   │       │   T: template-relative hl7:observation/hl7:effectiveTime[not(@xsi:type)] · TS 0..1 R
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29603 · diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt · datetime · 0..1
○  │       ├── value {WildcardDiagnostik.value_as_BL} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value · BL 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
○  │       ├── value {WildcardDiagnostik.value_as_CD} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value · CD 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
○  │       ├── value {WildcardDiagnostik.value_as_II} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value · II 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
○  │       ├── value {WildcardDiagnostik.value_as_INT} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value · INT 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
○  │       ├── value {WildcardDiagnostik.value_as_PQ} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value · PQ 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
✓  │       ├── value {WildcardDiagnostik.value_as_ST} ← Wert
   │       │   T: template-relative hl7:observation/hl7:value · ST 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29605 · diagnostik.wildcard_diagnostik.wert · text · 1..1
○  │       ├── value {WildcardDiagnostik.value_as_TS} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:value · TS 1..1
   │       │   A: hl7:observation/hl7:value — mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik
○  │       ├── text {WildcardDiagnostik.text} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:reference/hl7:externalDocument/hl7:text · ED 1..1 R
   │       │   A: hl7:observation/hl7:reference/hl7:externalDocument — Link zur Definition im Verzeichnis der Wildcard-Diagnostilk / Wildcard-Therapie
✓  │       ├── reference {WildcardDiagnostik.observation.reference.externalDocument.text.reference} ← Definitorischer Link
   │       │   T: template-relative hl7:observation/hl7:reference/hl7:externalDocument/hl7:text/hl7:reference · URL 1..1 R
   │       │   A: hl7:observation/hl7:reference/hl7:externalDocument — Link zur Definition im Verzeichnis der Wildcard-Diagnostilk / Wildcard-Therapie
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29606 · diagnostik.wildcard_diagnostik.definitorischer_link · text · 1..1
○  │       └── @negationInd {WildcardDiagnostik.negationInd} ← no dataset counterpart
   │           T: template-relative hl7:observation/@negationInd · bl 0..1
   ├── Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)
   │   ├── Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)
   │   │   Template: 1.2.276.0.76.10.3051 @ 2015-03-26T00:00:00
✓  │   │   └── text {AllergienUnvertraeglichkeiten.text} ← Allergie Beschreibung
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.35 · klinische_basisdaten_patient.allergien.allergie_beschreibung · text · 1..1
   │   ├── Allergy Concern Act (Allergyconcernact)
   │   │   Template: 1.2.276.0.76.10.4065 @ 2015-03-27T00:00:00
○  │   │   ├── statusCode {Allergyconcernact.statusCode} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:statusCode · CS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○  │   │   ├── effectiveTime {Allergyconcernact.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime · IVL_TS 1..1
✓  │   │   ├── low {Allergyconcernact.low} ← Aufnahmezeitpunkt
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime/hl7:low · TS 1..1
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.58 · administrative_aufnahmeinformationen.aufnahmezeitpunkt · datetime · 0..1
   │   │   │   R: fallback_if_active; fills only an already-active CDA branch; AKTIN confirmed that the emergency-department collection time may populate the Allergy Concern Act start; this reviewed mapping uses Aufnahmezeitpunkt and must not activate an otherwise absent allergy branch.
○  │   │   └── high {Allergyconcernact.high} ← no dataset counterpart
   │   │       T: template-relative hl7:act/hl7:effectiveTime/hl7:high · TS 0..1
   │   └── Allergy / Intolerance Observation (Allergyintoleranceobservation)
   │       Template: 1.2.276.0.76.10.4066 @ 2015-09-18T00:00:00
○D │       ├── statusCode {Allergyintoleranceobservation.statusCode} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:statusCode · CS 1..1
   │       │   R: exact target default for {Allergyintoleranceobservation.statusCode}: value=completed; This is the status of the Allergy Intolerance Observation assertion, not whether the allergy or concern has ended. The active template examples consistently represent the completed assertion with ActStatus completed.
○D │       ├── effectiveTime {Allergyintoleranceobservation.effectiveTime} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime · IVL_TS 1..1 R
   │       │   R: exact target default for {Allergyintoleranceobservation.effectiveTime}: nullFlavor=UNK; The host transaction does not provide the allergy onset; AKTIN confirmed that the required Allergy Intolerance Observation effectiveTime may therefore carry nullFlavor UNK.
○  │       ├── low {Allergyintoleranceobservation.low} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:low · TS 0..1 R
○  │       ├── high {Allergyintoleranceobservation.high} ← no dataset counterpart
   │       │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:high · TS 0..1 R
✓  │       ├── code {Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code} ← Agens
   │       │   T: template-relative hl7:observation/hl7:participant/hl7:participantRole/hl7:playingEntity/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.11.52 @ 2015-11-17T00:00:00
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.21593 · klinische_basisdaten_patient.allergien.agens · code · 0..1
   │       │   R: transform coded_fallback, nullFlavor OTH
✓  │       └── @negationInd {Allergyintoleranceobservation.negationInd} ← Antibiotikaallergie, Kontrastmittelallergie
   │           T: template-relative hl7:observation/@negationInd · bl 0..1
   │           S1: concept 2.16.840.1.113883.2.6.60.3.2.9.21598 · klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie · boolean · 0..1 · logical {Allergyintoleranceobservation_antibiotikaallergie.negationInd}
   │           S2: concept 2.16.840.1.113883.2.6.60.3.2.9.21599 · klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie · boolean · 0..1 · logical {Allergyintoleranceobservation_kontrastmittelallergie.negationInd}
   │           R: repeat_by_discriminator (repeat-by-example-discriminator-allergyintoleranceobservation-negationind); physical {Allergyintoleranceobservation.negationInd}; branch antibiotikaallergie; Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code=code=A07AA, codeSystem=2.16.840.1.113883.6.73, displayName=Antibiotika
   │           R: repeat_by_discriminator (repeat-by-example-discriminator-allergyintoleranceobservation-negationind); physical {Allergyintoleranceobservation.negationInd}; branch kontrastmittelallergie; Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code=code=V08, codeSystem=2.16.840.1.113883.6.73, displayName=Kontrastmittel
   ├── Prozeduren und Maßnahmen (Patientcarenarrative)
   │   ├── Prozeduren und Maßnahmen (Patientcarenarrative)
   │   │   Template: 1.2.276.0.76.10.3054 @ 2025-12-01T00:00:00
○  │   │   └── text {Patientcarenarrative.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Isolation (isolation)
   │   │   Template: 1.2.276.0.76.3.1.195.10.65 @ 2024-08-14T18:08:14
○  │   │   ├── id {isolation.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:id · II 0..* R
○  │   │   ├── text {isolation.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text · ED 0..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   ├── reference {isolation.reference} ← no dataset counterpart
   │   │   │   T: template-relative hl7:procedure/hl7:text/hl7:reference · URL 1..1
   │   │   │   A: hl7:procedure/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │   │   └── @negationInd {isolation.negationInd} ← Isolation
   │   │       T: template-relative hl7:procedure/@negationInd · bl 1..1 R
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.7 · masnahmen.isolation.isolation · code · 1..1
   │   │       R: transform enum
   │   ├── Isolation Indication (Isolationindication)
   │   │   Template: 1.2.276.0.76.3.1.195.10.66 @ 2024-08-14T18:14:44
✓  │   │   └── value {Isolationindication.value} ← Isolation Begründung
   │   │       T: template-relative hl7:observation/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.25 @ 2024-02-19T12:55:34
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.8 · masnahmen.isolation.isolation_begrundung · code · 1..1
   │   └── Wildcard Therapie (WildcardTherapie)
   │       Template: 1.2.276.0.76.3.1.195.10.90 @ 2024-08-18T21:50:30
✓  │       ├── code {WildcardTherapie.code} ← Code
   │       │   T: template-relative hl7:procedure/hl7:code · CD 1..1
   │       │   A: hl7:procedure/hl7:code — Code laut Definition der Wildcard-Maßnahmen (Link zur Definition, s.u.)
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29612 · masnahmen.wildcard_therapie.code · code · 1..1
○  │       ├── effectiveTime {WildcardTherapie.effectiveTime_xsi_type_IVL_TS} ← no dataset counterpart
   │       │   T: template-relative hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS'] · IVL_TS 0..1 R
   │       │   A: hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Therapie/Maßnahme
○  │       ├── low {WildcardTherapie.low} ← no dataset counterpart
   │       │   T: template-relative hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:low · TS 0..1 R
   │       │   A: hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Therapie/Maßnahme
○  │       ├── high {WildcardTherapie.high} ← no dataset counterpart
   │       │   T: template-relative hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:high · TS 0..1 R
   │       │   A: hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Therapie/Maßnahme
✓  │       ├── width {WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width} ← Zeitraum
   │       │   T: template-relative hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS']/hl7:width · PQ 0..1
   │       │   A: hl7:procedure/hl7:effectiveTime[@xsi:type='IVL_TS'] — Zeiraum, Start/Ende oder Zeitpunkt der Therapie/Maßnahme
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29615 · masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitraum · duration · 1..1
✓  │       ├── effectiveTime {WildcardTherapie.effectiveTime_not_xsi_type} ← Zeitpunkt
   │       │   T: template-relative hl7:procedure/hl7:effectiveTime[not(@xsi:type)] · TS 0..1 R
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29614 · masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitpunkt · datetime · 1..1
○  │       ├── text {WildcardTherapie.text} ← no dataset counterpart
   │       │   T: template-relative hl7:procedure/hl7:reference/hl7:externalDocument/hl7:text · ED 1..1 R
   │       │   A: hl7:procedure/hl7:reference/hl7:externalDocument — Link zur Definition im Verzeichnis der Wildcard-Diagnostilk / Wildcard-Therapie
✓  │       ├── reference {WildcardTherapie.procedure.reference.externalDocument.text.reference} ← Definitorischer Link
   │       │   T: template-relative hl7:procedure/hl7:reference/hl7:externalDocument/hl7:text/hl7:reference · URL 1..1 R
   │       │   A: hl7:procedure/hl7:reference/hl7:externalDocument — Link zur Definition im Verzeichnis der Wildcard-Diagnostilk / Wildcard-Therapie
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.29611 · masnahmen.wildcard_therapie.definitorischer_link · text · 1..1
○  │       └── @negationInd {WildcardTherapie.negationInd} ← no dataset counterpart
   │           T: template-relative hl7:procedure/@negationInd · bl 0..1
   ├── Medikamentöse Therapie (medikamentose-therapie)
   │   ├── Medikamentöse Therapie (medikamentose-therapie)
   │   │   Template: 1.2.276.0.76.3.1.195.10.64 @ 2024-08-14T18:02:56
○  │   │   └── text {medikamentose-therapie.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1 R
   │   ├── Medikation
   │   │   Template: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00
○  │   │   ├── id {Medikation.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:id · II 0..* R
✓  │   │   ├── text {Medikation.text} ← Arzneimittel-Name, Darreichungsform, Wirkstoff-Name, Wirkstoff-Code, Arzneilich wirksamer Bestandteil?, Wirkstärke, Freitext, Zusätzliche Hinweise, Anweisungen zur Einnahme, Offset, Einnahme bei Bedarf, Begründungstext, Kodierte Begründung
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:text · ED 1..1
   │   │   │   S1: concept 2.16.840.1.113883.3.1937.777.75.2.1.488 · masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname · text · 0..1
   │   │   │   S2: concept 2.16.840.1.113883.3.1937.777.75.2.1.492 · masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform · code · 0..1
   │   │   │   S3: concept 2.16.840.1.113883.3.1937.777.75.2.1.485 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname · text · 0..1
   │   │   │   S4: concept 2.16.840.1.113883.3.1937.777.75.2.1.486 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode · code · 0..1
   │   │   │   S5: concept 2.16.840.1.113883.3.1937.777.75.2.1.519 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq · boolean · 0..1
   │   │   │   S6: concept 2.16.840.1.113883.3.1937.777.75.2.1.493 · masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke · text · 0..1
   │   │   │   S7: concept 2.16.840.1.113883.3.1937.777.75.2.1.524 · masnahmen.medikamentose_therapie.medikation.dosierung.freitext · text · 0..1
   │   │   │   S8: concept 2.16.840.1.113883.3.1937.777.75.2.1.533 · masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise · code · 0..1
   │   │   │   S9: concept 2.16.840.1.113883.3.1937.777.75.2.1.534 · masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme · text · 0..1
   │   │   │   S10: concept 2.16.840.1.113883.3.1937.777.75.2.1.529 · masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset · quantity · 0..1
   │   │   │   S11: concept 2.16.840.1.113883.3.1937.777.75.2.1.530 · masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf · boolean · 0..1
   │   │   │   S12: concept 2.16.840.1.113883.3.1937.777.75.2.1.501 · masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext · text · 0..1
   │   │   │   S13: concept 2.16.840.1.113883.3.1937.777.75.2.1.521 · masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung · code · 0..1
   │   │   │   R: concatenate (concatenate-medication-narrative); Preserve the medication name, ingredient wording, dosage and patient instructions, PRN, reason and uncoded administration-form wording in the one available medication narrative slot; DEC-045 does not claim structured ingredient or instruction semantics.
○  │   │   ├── statusCode {Medikation.statusCode} ← no dataset counterpart
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:statusCode · CS 0..1 · ValueSet 2.16.840.1.113883.1.11.15933 @ 2014-03-26T00:00:00
✓  │   │   ├── routeCode {Medikation.routeCode} ← Art der Anwendung, Methode der Anwendung
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:routeCode · CE 0..1 · ValueSet 2.16.840.1.113883.1.11.14581 @ 2014-03-26T00:00:00
   │   │   │   S1: concept 2.16.840.1.113883.3.1937.777.75.2.1.531 · masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung · code · 0..1
   │   │   │   S2: concept 2.16.840.1.113883.3.1937.777.75.2.1.532 · masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung · text · 0..1
   │   │   │   R: coalesce (coalesce-medication-route); policy prefer_first_warn_if_different; transform coded_or_original_text; nullFlavor OTH; Use Art der Anwendung when present, otherwise Methode der Anwendung; warn when both present wordings differ. Preserve uncoded wording as originalText.
✓  │   │   ├── approachSiteCode {Medikation.approachSiteCode} ← Körperstelle
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:approachSiteCode · CD 0..* · ValueSet 2.16.840.1.113883.1.11.19724 @ 2014-03-26T00:00:00
   │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.535 · masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle · code · 0..1
   │   │   │   R: transform coded_or_original_text, nullFlavor OTH
✓  │   │   ├── sequenceNumber {Medikation.sequenceNumber} ← Sequenznummer
   │   │   │   T: template-relative hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber · INT 0..1
   │   │   │   A1: hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber — Sequence number of the Subordinate Substance Administration.
   │   │   │   A2: hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)] — Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications.
   │   │   │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.523 · masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer · integer · 0..1
○◆ │   │   └── @moodCode {Medikation.moodCode} ← site configuration via cda.fallback_if_active; no dataset counterpart
   │   │       T: template-relative hl7:substanceAdministration/@moodCode · cs 1..1
   │   │       R: site-owned {Medikation.moodCode} via cda.fallback_if_active; Medication mood depends on the local source and export semantics and must be supplied for each active medication entry.
   │   ├── UV Medication Information (simple) (UVMedicationInformationsimple)
   │   │   Template: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16
✓  │   │   ├── code {UVMedicationInformationsimple.code} ← Arzneimittel-Name, Arzneimittel-Code
   │   │   │   T: template-relative hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code · CD 1..1 R
   │   │   │   A: hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code — The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used.
   │   │   │   S1: concept 2.16.840.1.113883.3.1937.777.75.2.1.488 · masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname · text · 0..1
   │   │   │   S2: concept 2.16.840.1.113883.3.1937.777.75.2.1.489 · masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode · code · 0..1
   │   │   │   R: compose_coded (compose-medication-product-code); The selected AKTIN simple medication-information template represents the medicinal product in manufacturedMaterial/code. Combine Arzneimittel-Code with Arzneimittel-Name as code plus displayName; when only the name is available, use the template-mandated NA null flavor and preserve the name in originalText.
○  │   │   ├── translation {UVMedicationInformationsimple.translation} ← no dataset counterpart
   │   │   │   T: template-relative hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation · CE 0..*
   │   │   │   A: hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code — The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used.
✓  │   │   └── lotNumberText {UVMedicationInformationsimple.lotNumberText} ← Chargennummer
   │   │       T: template-relative hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText · ST 0..1
   │   │       S: concept 2.16.840.1.113883.3.1937.777.75.2.1.738 · masnahmen.medikamentose_therapie.medikation.medikament.chargennummer · text · 0..1
   │   ├── CDA Organization (CDAOrganization)
   │   │   Template: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00
○  │   │   ├── name {CDAOrganization.name} ← no dataset counterpart
   │   │   │   T: template-relative hl7:name · ON 0..*
○  │   │   ├── telecom {CDAOrganization.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:telecom · TEL 0..*
○  │   │   ├── addr {CDAOrganization.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:addr · AD 0..*
○  │   │   ├── standardIndustryClassCode {CDAOrganization.standardIndustryClassCode} ← no dataset counterpart
   │   │   │   T: template-relative hl7:standardIndustryClassCode · CE 0..1
   │   │   │   A: hl7:standardIndustryClassCode — SHALL be chosen from domain OrganizationIndustryClass
○  │   │   ├── id {CDAOrganization.asOrganizationPartOf.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:id · II 0..* R
○  │   │   ├── code {CDAOrganization.code} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:code · CE 0..1
○  │   │   ├── statusCode {CDAOrganization.statusCode} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:statusCode · CS 0..1 · ValueSet 2.16.840.1.113883.1.11.15999 @ 2014-03-26T00:00:00
○  │   │   ├── effectiveTime {CDAOrganization.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:effectiveTime · IVL_TS 0..1
○  │   │   ├── id {CDAOrganization.asOrganizationPartOf.wholeOrganization.id} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id · II 0..*
○  │   │   ├── name {CDAOrganization.asOrganizationPartOf.wholeOrganization.name} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name · ON 0..*
○  │   │   ├── telecom {CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom · TEL 0..*
○  │   │   ├── addr {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr} ← no dataset counterpart
   │   │   │   T: template-relative hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr · AD 0..*
○  │   │   └── standardIndustryClassCode {CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode} ← no dataset counterpart
   │   │       T: template-relative hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode · CE 0..1
   │   │       A: hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode — SHALL be chosen from domain OrganizationIndustryClass
   │   └── UV Subordinate Substance Administration (UVSubordinateadministration)
   │       Template: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00
○◆ │       ├── statusCode {UVSubordinateadministration.statusCode} ← site configuration via cda.fallback_if_active; no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:statusCode · CS 1..1 R · ValueSet 2.16.840.1.113883.11.21.2 @ 2017-03-06T00:00:00
   │       │   R: site-owned {UVSubordinateadministration.statusCode} via cda.fallback_if_active; Subordinate-administration lifecycle status depends on local export semantics and must be supplied for each active entry.
✓  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_value_or_nullFlavor} ← (Start)zeitpunkt der Anwendung
   │       │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor] · TS 0..1 C
   │       │   A: hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor] — This required element describes the frequency of intakes. If not known it shall be valued with the nullflavor "UNK"
   │       │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.497 · masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung · datetime · 0..1
○  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_xsi_type_PIVL_TS} ← no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='PIVL_TS'] · PIVL_TS 0..1 C
   │       │   A: hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='PIVL_TS'] — Periodic Time Interval
○  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_xsi_type_EIVL_TS} ← no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS'] · EIVL_TS 0..1 C
   │       │   A: hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS'] — Event Related Time Interval
○  │       ├── event {UVSubordinateadministration.event} ← no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event · EIVL.event 0..1 C
   │       │   A: hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS'] — Event Related Time Interval
○  │       ├── @code {UVSubordinateadministration.code} ← no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code · cs 0..1 C · ValueSet 2.16.840.1.113883.1.11.10706 @ 2014-03-26T00:00:00
   │       │   A: hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS'] — Event Related Time Interval
○  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_xsi_type_SXPR_TS} ← no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS'] · SXPR_TS 0..1 R
   │       │   A: hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='SXPR_TS'] — Combined Time Interval
✓  │       ├── doseQuantity {UVSubordinateadministration.doseQuantity} ← Dosismenge und -einheit
   │       │   T: template-relative hl7:substanceAdministration/hl7:doseQuantity · IVL_PQ 0..1 R
   │       │   A: hl7:substanceAdministration/hl7:doseQuantity — The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document.
   │       │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.494 · masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit · quantity · 0..1
○  │       ├── @unit {UVSubordinateadministration.unit} ← no dataset counterpart
   │       │   T: template-relative hl7:substanceAdministration/hl7:doseQuantity/@unit · cs 0..1 R
   │       │   A: hl7:substanceAdministration/hl7:doseQuantity — The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document.
✓  │       ├── rateQuantity {UVSubordinateadministration.rateQuantity} ← Kontinuierliche Gabe (Rate)
   │       │   T: template-relative hl7:substanceAdministration/hl7:rateQuantity · IVL_PQ 0..1
   │       │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.495 · masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate · quantity · 0..1
✓  │       ├── administrationUnitCode {UVSubordinateadministration.administrationUnitCode} ← Darreichungsform
   │       │   T: template-relative hl7:substanceAdministration/hl7:administrationUnitCode · CE 0..1 · ValueSet 2.16.840.1.113883.1.11.14570 @ 2014-03-26T00:00:00
   │       │   S: concept 2.16.840.1.113883.3.1937.777.75.2.1.492 · masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform · code · 0..1
   │       │   R: transform coded_only
○◆ │       └── @moodCode {UVSubordinateadministration.moodCode} ← site configuration via cda.fallback_if_active; no dataset counterpart
   │           T: template-relative hl7:substanceAdministration/@moodCode · cs 1..1 R · ValueSet 2.16.840.1.113883.11.21.4 @ 2018-03-21T00:00:00
   │           R: site-owned {UVSubordinateadministration.moodCode} via cda.fallback_if_active; Subordinate-administration mood depends on the local source and export semantics and must be supplied for each active entry.
   ├── Abschlussdiagnosen (Basis) (Eddiagnosis)
   │   ├── Abschlussdiagnosen (Basis) (Eddiagnosis)
   │   │   Template: 1.2.276.0.76.10.3055 @ 2016-06-22T00:00:00
○  │   │   └── text {Eddiagnosis.text} ← no dataset counterpart
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   ├── Problem Concern Act (Abschlussdiagnosen) (Problemconcernacteddiagnoses)
   │   │   Template: 1.2.276.0.76.10.4048 @ 2016-06-22T00:00:00
○D │   │   ├── statusCode {Problemconcernacteddiagnoses.statusCode} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:statusCode · CS 1..1 · ValueSet 2.16.840.1.113883.1.11.15933 @ 2014-03-26T00:00:00
   │   │   │   R: exact target default for {Problemconcernacteddiagnoses.statusCode}: value=active; The final-diagnosis Concern Act represents diagnoses that remain clinically relevant for handoff. The transaction contains no concern-closure datum; completed requires explicit evidence that tracking ended and a corresponding concern effectiveTime.high.
○  │   │   ├── effectiveTime {Problemconcernacteddiagnoses.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime · IVL_TS 1..1 R
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○D │   │   ├── low {Problemconcernacteddiagnoses.low} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime/hl7:low · IVXB_TS 1..1 R
   │   │   │   R: exact target default for {Problemconcernacteddiagnoses.low}: nullFlavor=UNK; The transaction does not provide when the final-diagnosis concern became active; the applicable concern-start time exists but is unknown.
○  │   │   ├── high {Problemconcernacteddiagnoses.high} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:effectiveTime/hl7:high · IVXB_TS 0..1 R
✓  │   │   └── sequenceNumber {Problemconcernacteddiagnoses.sequenceNumber} ← Führende Abschlussdiagnose? / Sequenznummer
   │   │       T: template-relative hl7:act/hl7:entryRelationship/hl7:sequenceNumber · INT.POS 0..1
   │   │       A1: hl7:act/hl7:entryRelationship/hl7:sequenceNumber — Sequenznummer wird weggelassen bei ungeordneten/gleichwertigen Diagnosen ohne führende Diagnose; zur Andeutung einer führenden Diagnose wird die Sequenznummer "1" verwendet (maximal einmal), alle weiteren Diagnosen sollten dann eine Sequenznummern > 1 haben oder keine Sequenznummern aufweisen.
   │   │       A2: hl7:act/hl7:entryRelationship — Abschlussdiagnose, als Text und/oder ICD10-kodiert
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.2.20023 · abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer · integer · 0..1
   │   ├── Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis)
   │   │   Template: 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00
○D │   │   ├── code {Problemobservationeddiagnosis.code} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:code · CE 1..1
   │   │   │   R: exact target default for {Problemobservationeddiagnosis.code}: value=29308-4; This element identifies the statement as a diagnosis observation. The template explicitly prefers LOINC 29308-4 over 75324-4.
○  │   │   ├── text {Problemobservationeddiagnosis.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
   │   │   │   A: hl7:observation/hl7:text — Textform, enthält hier lediglich reference in den Text der Section
○  │   │   ├── effectiveTime {Problemobservationeddiagnosis.effectiveTime} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime · IVL_TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt. Beispiel: Für Gesundheitsdienstleister, die einen Patienten heute in der Klinik sehen anamenstisch einen Herzinfarkt erheben, der vor fünf Jahren stattgefunden hat, ist effectiveTime: vor fünf Jahren. Die effectiveTime hier ist die definitive Angabe, ob die zugrunde liegende Erkrankung behoben ist. effectiveTime.low ist der Beginn des Problems für den Patienten. Wenn das Problem noch nicht gelöst ist, wird effectiveTime.high nicht gesetzt. Wenn bekannt ist, dass das Problem gelöst werden kann, dann ist effectiveTime.high vorhanden. Wenn der genaue Zeitpunkt der Lösung des Problems nicht bekannt ist, dann ist effectiveTime.high vorhanden und auf nullFlavor "UNK" gesetzt.
   │   │   │   R: defaults.required_unmapped → nullFlavor="NI"
○D │   │   ├── low {Problemobservationeddiagnosis.low} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:low · TS 1..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt. Beispiel: Für Gesundheitsdienstleister, die einen Patienten heute in der Klinik sehen anamenstisch einen Herzinfarkt erheben, der vor fünf Jahren stattgefunden hat, ist effectiveTime: vor fünf Jahren. Die effectiveTime hier ist die definitive Angabe, ob die zugrunde liegende Erkrankung behoben ist. effectiveTime.low ist der Beginn des Problems für den Patienten. Wenn das Problem noch nicht gelöst ist, wird effectiveTime.high nicht gesetzt. Wenn bekannt ist, dass das Problem gelöst werden kann, dann ist effectiveTime.high vorhanden. Wenn der genaue Zeitpunkt der Lösung des Problems nicht bekannt ist, dann ist effectiveTime.high vorhanden und auf nullFlavor "UNK" gesetzt.
   │   │   │   R: exact target default for {Problemobservationeddiagnosis.low}: nullFlavor=UNK; The transaction contains no diagnosis-onset datapoint; the required onset therefore exists with an unknown value.
○  │   │   ├── high {Problemobservationeddiagnosis.high} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:effectiveTime/hl7:high · TS 0..1 R
   │   │   │   A: hl7:observation/hl7:effectiveTime — effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt. Beispiel: Für Gesundheitsdienstleister, die einen Patienten heute in der Klinik sehen anamenstisch einen Herzinfarkt erheben, der vor fünf Jahren stattgefunden hat, ist effectiveTime: vor fünf Jahren. Die effectiveTime hier ist die definitive Angabe, ob die zugrunde liegende Erkrankung behoben ist. effectiveTime.low ist der Beginn des Problems für den Patienten. Wenn das Problem noch nicht gelöst ist, wird effectiveTime.high nicht gesetzt. Wenn bekannt ist, dass das Problem gelöst werden kann, dann ist effectiveTime.high vorhanden. Wenn der genaue Zeitpunkt der Lösung des Problems nicht bekannt ist, dann ist effectiveTime.high vorhanden und auf nullFlavor "UNK" gesetzt.
✓  │   │   ├── value {Problemobservationeddiagnosis.observation.value} ← ICD-10
   │   │   │   T: template-relative hl7:observation/hl7:value · CD 1..1 R
   │   │   │   A: hl7:observation/hl7:value — ICD-10 Kode
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.44 · abschlussdiagnosen.abschlussdiagnose.icd10 · code · 1..1
✓  │   │   ├── originalText {Problemobservationeddiagnosis.originalText} ← Freitext Abschlussdiagnose
   │   │   │   T: template-relative hl7:observation/hl7:value/hl7:originalText · ST 0..1 R
   │   │   │   A1: hl7:observation/hl7:value/hl7:originalText — Abschlussdiagnose (Freitext)
   │   │   │   A2: hl7:observation/hl7:value — ICD-10 Kode
   │   │   │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.42 · abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose · text · 0..1
○  │   │   ├── value {Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value} ← no dataset counterpart
   │   │   │   T: template-relative hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.73 @ 2016-08-02T00:00:00
   │   │   │   A1: hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT'] — Optionale Angabe des Befundstatus (finding status) des Problems (Diagnose).
   │   │   │   A2: hl7:observation/hl7:value — ICD-10 Kode
✓  │   │   └── @negationInd {Problemobservationeddiagnosis.negationInd} ← Zusatzkennzeichen
   │   │       T: template-relative hl7:observation/@negationInd · bl 0..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20024 · abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen · code · 0..1
   │   │       R: transform enum, select raw
   │   ├── Diagnosesicherheit (Certainty)
   │   │   Template: 1.2.276.0.76.10.90027 @ 2017-03-02T00:00:00
✓  │   │   └── value {Certainty.value} ← Zusatzkennzeichen
   │   │       T: template-relative hl7:qualifier[hl7:name/@code='8']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.121 @ 2005-08-01T00:00:00
   │   │       A: hl7:qualifier[hl7:name/@code='8'] — Optionale Angabe der Diagnosesicherheit (laut §295 SGB V) als Qualifier-Kind-Element des value-Elements des Problems (Diagnose).
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20024 · abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen · code · 0..1
   │   │       R: transform enum, select raw
   │   └── Lateralität (Laterality)
   │       Template: 1.2.276.0.76.10.90026 @ 2017-02-13T00:00:00
✓  │       └── value {Laterality.value} ← Lateralität
   │           T: template-relative hl7:qualifier[hl7:name/@code='20228-3']/hl7:value · CV 1..1 R · ValueSet 1.2.276.0.76.11.412 @ 2017-02-08T00:00:00
   │           A: hl7:qualifier[hl7:name/@code='20228-3'] — Seitenlokalisation
   │           S: reviewed model extension · abschlussdiagnosen.abschlussdiagnose.lateralitat · code · 0..1 · AKTIN approved adding the missing diagnosis-scoped laterality value expected by the CDA qualifier.
   ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)
   │   ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)
   │   │   Template: 1.2.276.0.76.10.3056 @ 2015-01-10T00:00:00
✓  │   │   └── text {Eddisposition.text} ← Procedere
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.46 · weiteres_procedere_therapieempfehlung_weiterbehandler.procedere · text · 0..1
   │   └── Weiterbehandlung Verlegung (Referralto)
   │       Template: 1.2.276.0.76.10.4067 @ 2025-12-01T00:00:00
✓  │       ├── code {Referralto.act.code} ← Typ Verlegung
   │       │   T: template-relative hl7:act/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.11.53 @ 2015-11-17T00:00:00
   │       │   S: concept 2.16.840.1.113883.2.6.60.3.2.9.20021 · administrative_verlegungsentlassungsinformationen.typ_verlegung · code · 0..1
   │       │   R: transform reviewed_coded_map
○  │       ├── text {Referralto.text} ← no dataset counterpart
   │       │   T: template-relative hl7:act/hl7:text · ED 0..1
   │       │   A: hl7:act/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │       ├── reference {Referralto.reference} ← no dataset counterpart
   │       │   T: template-relative hl7:act/hl7:text/hl7:reference · URL 1..1
   │       │   A: hl7:act/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │       │   R: defaults.required_unmapped → nullFlavor="NI"
✓  │       ├── code {Referralto.act.participant.participantRole.code} ← Aufnehmende Fachabteilung
   │       │   T: template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code · CE 1..1 R · ValueSet 1.2.276.0.76.3.1.195.11.17 @ 2024-08-08T13:35:43
   │       │   A: hl7:act/hl7:participant — Aufnehmende Fachabteilung § 301
   │       │   S: reviewed model extension · administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung · code · 0..1 · AKTIN approved adding the missing receiving-department key expected by the CDA Weiterbehandlung Verlegung template.
○  │       └── originalText {Referralto.originalText} ← no dataset counterpart
   │           T: template-relative hl7:act/hl7:participant/hl7:participantRole/hl7:code/hl7:originalText · ST 0..1 R
   │           A: hl7:act/hl7:participant — Aufnehmende Fachabteilung § 301
   ├── Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)
   │   ├── Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)
   │   │   Template: 1.2.276.0.76.10.3057 @ 2015-03-30T00:00:00
✓  │   │   └── text {Additionalmodulessection.text} ← Notfallanamnese des Patienten
   │   │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
   │   │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.40 · notfallanamnese.notfallanamnese_des_patienten · text · 1..1
   │   ├── Zusätzliche externe Dokumentation (Additionalexternalocuments)
   │   │   Template: 1.2.276.0.76.10.4070 @ 2015-03-30T00:00:00
○  │   │   ├── text {Additionalexternalocuments.text} ← no dataset counterpart
   │   │   │   T: template-relative hl7:act/hl7:text · ED 0..1
   │   │   │   A: hl7:act/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │   │   └── reference {Additionalexternalocuments.act.text.reference} ← no dataset counterpart
   │   │       T: template-relative hl7:act/hl7:text/hl7:reference · URL 1..1
   │   │       A: hl7:act/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │   │       R: defaults.required_unmapped → nullFlavor="NI"
   │   └── External Document Reference (ExternalDocumentReference)
   │       Template: 1.2.276.0.76.10.4071 @ 2015-03-30T00:00:00
○  │       ├── code {ExternalDocumentReference.code} ← no dataset counterpart
   │       │   T: template-relative hl7:externalDocument/hl7:code · CV 1..1 · ValueSet 1.2.276.0.76.11.57 @ 2015-03-26T00:00:00
○  │       ├── text {ExternalDocumentReference.text} ← no dataset counterpart
   │       │   T: template-relative hl7:externalDocument/hl7:text · ED 0..1
   │       │   A: hl7:externalDocument/hl7:text — Lediglich reference in den Text der zugehörigen Section
○  │       └── reference {ExternalDocumentReference.reference} ← no dataset counterpart
   │           T: template-relative hl7:externalDocument/hl7:text/hl7:reference · URL 1..1
   │           A: hl7:externalDocument/hl7:text — Lediglich reference in den Text der zugehörigen Section
   │           R: defaults.required_unmapped → nullFlavor="NI"
   └── Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen)
       ├── Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen)
       │   Template: 1.2.276.0.76.3.1.195.10.73 @ 2024-08-15T11:08:15
✓      │   └── text {addendum-dokumentationsinformationen.text} ← Zeit bis zum Export, Name des EDIS, Version des EDIS
       │       T: template-relative hl7:section/hl7:text · SD.TEXT 1..1
       │       S1: concept 2.16.840.1.113883.2.6.60.3.2.9.21742 · dokumentationsinformationen.berechnete_zeitintervalle.zeit_bis_zum_export · quantity · 0..1
       │       S2: concept 2.16.840.1.113883.2.6.60.3.2.9.21738 · dokumentationsinformationen.datenbereitstellung.name_des_edis · text · 0..1
       │       S3: concept 2.16.840.1.113883.2.6.60.3.2.9.21740 · dokumentationsinformationen.datenbereitstellung.version_des_edis · text · 0..1
       │       R: reviewed narrative-only fact [DEC-048]; Preserve this EDIS datum in the Addendum narrative while its rejected structured mapping is suspended pending AKTIN clarification; see the identity-pinned suspended CDA mappings list.
       ├── Zeitpunkt Entscheidung zur Verlegung / Entlassung (zeitpunkt_entscheidung_zur_verlegung__entlassung)
       │   Template: 1.2.276.0.76.3.1.195.10.75 @ 2024-05-24T00:00:00
○      │   ├── text {zeitpunkt_entscheidung_zur_verlegung__entlassung.text} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○      │   ├── reference {zeitpunkt_entscheidung_zur_verlegung__entlassung.reference} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
       │   │   R: defaults.required_unmapped → nullFlavor="NI"
○      │   ├── effectiveTime {zeitpunkt_entscheidung_zur_verlegung__entlassung.effectiveTime} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
✓      │   └── value {zeitpunkt_entscheidung_zur_verlegung__entlassung.value} ← Zeitpunkt Entscheidung zur Verlegung / Entlassung
       │       T: template-relative hl7:observation/hl7:value · TS 1..1 R
       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20237 · administrative_verlegungsentlassungsinformationen.zeitpunkt_entscheidung_zur_verlegung_entlassung · datetime · 0..1
       ├── Zeitpunkt Patient verlegungs- / entlassungsfähig (zeitpunkt_patient_verlegungs__entlassungsfahig)
       │   Template: 1.2.276.0.76.3.1.195.10.76 @ 2024-05-24T00:00:00
○      │   ├── text {zeitpunkt_patient_verlegungs__entlassungsfahig.text} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○      │   ├── reference {zeitpunkt_patient_verlegungs__entlassungsfahig.reference} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
       │   │   R: defaults.required_unmapped → nullFlavor="NI"
○      │   ├── effectiveTime {zeitpunkt_patient_verlegungs__entlassungsfahig.effectiveTime} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
✓      │   └── value {zeitpunkt_patient_verlegungs__entlassungsfahig.value} ← Zeitpunkt Patient verlegungs- / entlassungsfähig
       │       T: template-relative hl7:observation/hl7:value · TS 1..1 R
       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.20814 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig · datetime · 0..1
       ├── Zeitpunkt Patient verlegt / entlassen nach (zeitpunkt_patient_verlegt__entlassen_nach)
       │   Template: 1.2.276.0.76.3.1.195.10.77 @ 2024-05-24T00:00:00
○      │   ├── text {zeitpunkt_patient_verlegt__entlassen_nach.text} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○      │   ├── reference {zeitpunkt_patient_verlegt__entlassen_nach.reference} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
       │   │   R: defaults.required_unmapped → nullFlavor="NI"
○      │   ├── effectiveTime {zeitpunkt_patient_verlegt__entlassen_nach.effectiveTime} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
✓      │   └── value {zeitpunkt_patient_verlegt__entlassen_nach.value} ← Zeitpunkt Patient verlegt / entlassen nach
       │       T: template-relative hl7:observation/hl7:value · TS 1..1 R
       │       S: concept 2.16.840.1.113883.2.6.60.3.2.9.882 · administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach · datetime · 0..1
       ├── Zeit bis zum Export (zeit_bis_zum_export)
       │   Template: 1.2.276.0.76.3.1.195.10.85 @ 2024-05-24T00:00:00
○      │   ├── text {zeit_bis_zum_export.text} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○      │   ├── reference {zeit_bis_zum_export.reference} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
       │   │   R: defaults.required_unmapped → nullFlavor="NI"
○      │   └── effectiveTime {zeit_bis_zum_export.effectiveTime} ← no dataset counterpart
       │       T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
       ├── Name des EDIS (name_des_edis)
       │   Template: 1.2.276.0.76.3.1.195.10.86 @ 2024-05-24T00:00:00
○      │   ├── text {name_des_edis.text} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text · ED 0..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○      │   ├── reference {name_des_edis.reference} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
       │   │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
       │   │   R: defaults.required_unmapped → nullFlavor="NI"
○      │   ├── effectiveTime {name_des_edis.effectiveTime} ← no dataset counterpart
       │   │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
○      │   └── value {name_des_edis.value} ← no dataset counterpart
       │       T: template-relative hl7:observation/hl7:value · ST 1..1 R
       │       R: defaults.required_unmapped → nullFlavor="NI"
       └── Version des EDIS (version_des_edis)
           Template: 1.2.276.0.76.3.1.195.10.87 @ 2024-05-24T00:00:00
○          ├── text {version_des_edis.text} ← no dataset counterpart
           │   T: template-relative hl7:observation/hl7:text · ED 0..1
           │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
○          ├── reference {version_des_edis.reference} ← no dataset counterpart
           │   T: template-relative hl7:observation/hl7:text/hl7:reference · TEL 1..1
           │   A: hl7:observation/hl7:text — Lediglich reference in den Text der zugehörigen Section
           │   R: defaults.required_unmapped → nullFlavor="NI"
○          ├── effectiveTime {version_des_edis.effectiveTime} ← no dataset counterpart
           │   T: template-relative hl7:observation/hl7:effectiveTime · TS 0..1 R
○          └── value {version_des_edis.value} ← no dataset counterpart
               T: template-relative hl7:observation/hl7:value · ST 1..1 R
               R: defaults.required_unmapped → nullFlavor="NI"
```
