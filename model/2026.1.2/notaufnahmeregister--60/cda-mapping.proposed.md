# Dataset-to-CDA mapping decisions

Template: **Notaufnahmeregister Transitionsversion** (`1.2.276.0.76.3.1.195.10.93` @ `2026-03-25T11:04:07`)

Model: **128 datapoints** · ✓ mapped **90 dp → 92 leaves** · = reviewed null **0 dp** · ! suggested **4 dp → 4 leaves** · × no target **34 dp** · ○ no source **380 leaves**

This file is the manual decision workbench. It contains only unresolved dataset datapoints and the CDA leaves that may help resolve them. Accepted mappings are documented in `cda-mapping-details.md`; the exhaustive source and target trees are in `cda-mapping-trees.md`.

- ! **Evidence candidate** — related evidence exists, but no executable mapping is selected.
- ? **Possible target (unproven)** — type-compatible and reachable, but not semantic evidence.
- × **No generated target** — manual template review has not yet produced a candidate.

Reviewed mappings, narrative-only decisions, and intentional nulls are resolved decisions and therefore omitted here. Their counts remain in the headline and their details remain in `cda-mapping-details.md` and the exhaustive trees.

Nothing in a candidate list is selected automatically. Edit `cda-mapping.json`. Do not edit the XML-like template skeletons in this report; all trees, tables, and excerpts below are generated read-only evidence.

## Unresolved dataset tree

```text
   Dataset decisions
   ├── Patient
   │   ├── Anschrift
!  │   │   └── Postleitzahl [semantic:no_association; 3 possible targets]
   │   └── Identifikatoren
!  │       └── Patienten ID [semantic:no_association; 1 possible target]
   ├── Hauptkostenträger
   │   └── Versicherungsverhältnis
!  │       └── Weitere Versichertenstatuskodierung [semantic:no_association; 2 possible targets]
   ├── Administrative Aufnahmeinformationen
   │   ├── Transport
!  │   │   └── Ankunftszeit [semantic:no_association; 4 possible targets]
!  │   └── Aufnahmezeitpunkt [semantic:no_association; no generated target inventory]
   ├── Notfallanamnese
   │   ├── Beschwerden bei Vorstellung
!  │   │   └── Ereigniseintritt [semantic:no_association; 8 possible targets]
!  │   └── Zeitpunkt erster Arztkontakt [semantic:no_association; 8 possible targets]
   ├── Diagnostik
   │   └── Bildgebende Diagnostik
   │       ├── Magnetresonanztomographie
!  │       │   └── Untersuchungsregion [semantic:no_association; 104 possible targets]
   │       └── Röntgen
!  │           └── Untersuchungsregion [semantic:no_association; 104 possible targets]
   ├── Maßnahmen
   │   └── Medikamentöse Therapie
   │       └── Medikation
   │           ├── Medikament
   │           │   ├── Arzneimittel
!  │           │   │   ├── Arzneimittel-Name [semantic:no_association; 13 possible targets]
!  │           │   │   └── Arzneimittel-Code [semantic:no_association; 10 possible targets]
   │           │   ├── Wirkstoff
!  │           │   │   ├── Wirkstoff-Name [semantic:no_association; 13 possible targets]
!  │           │   │   ├── Wirkstoff-Code [semantic:no_association; 10 possible targets]
!  │           │   │   ├── Arzneilich wirksamer Bestandteil? [semantic:no_association; 4 possible targets]
!  │           │   │   └── Wirkstärke [semantic:no_association; 13 possible targets]
!  │           │   ├── Darreichungsform [semantic:no_association; 10 possible targets]
!  │           │   └── Chargennummer [semantic:no_association; 13 possible targets]
   │           ├── Anwendungszeiten
!  │           │   ├── (Start)zeitpunkt der Anwendung [semantic:shared_target; no generated target inventory]
!  │           │   └── Stoppzeitpunkt der Anwendung [semantic:shared_target; no generated target inventory]
   │           ├── Dosierung
   │           │   ├── Zeitangabe
   │           │   │   ├── Ereignisbezogene Wiederholung
!  │           │   │   │   ├── Ereignis [semantic:no_association; 10 possible targets]
!  │           │   │   │   └── Offset [semantic:missing_companion; no generated target inventory]
!  │           │   │   └── Zeitpunkt [semantic:shared_target; no generated target inventory]
!  │           │   ├── Freitext [semantic:no_association; 13 possible targets]
!  │           │   ├── Zusätzliche Hinweise [semantic:no_association; 10 possible targets]
!  │           │   ├── Anweisungen zur Einnahme [semantic:no_association; 13 possible targets]
!  │           │   ├── Einnahme bei Bedarf [semantic:no_association; 4 possible targets]
!  │           │   ├── Körperstelle [semantic:no_association; 10 possible targets]
!  │           │   ├── Art der Anwendung [semantic:no_association; 10 possible targets]
!  │           │   ├── Methode der Anwendung [semantic:no_association; 13 possible targets]
!  │           │   ├── Dosismenge und -einheit [semantic:no_association; 4 possible targets]
!  │           │   └── Kontinuierliche Gabe (Rate) [semantic:no_association; 4 possible targets]
   │           └── Grund der Medikation
!  │               ├── Begründungstext [semantic:no_association; 13 possible targets]
!  │               └── Kodierte Begründung [semantic:no_association; 10 possible targets]
   ├── Abschlussdiagnosen
   │   └── Abschlussdiagnose
!  │       ├── Freitext Abschlussdiagnose [semantic:no_association; 6 possible targets]
!  │       ├── ICD-10 [semantic:no_association; 8 possible targets]
!  │       └── ICD-10 Sekundärdiagnose [semantic:no_association; 8 possible targets]
   ├── Administrative Verlegungs-/Entlassungsinformationen
!  │   └── Typ Verlegung [terminology:closure; no generated target inventory]
   └── Dokumentationsinformationen
       └── Beginn patientenbezogene Dokumentation
!          └── Zeitpunkt Beginn patientenbezogene Dokumentation [semantic:no_association; no generated target inventory]
```

## CDA review tree

```text
   Notaufnahmeregister Transitionsversion (review candidate surface)
   ├── Document header
   │   ├── Patientenidentifikation · 1.2.276.0.76.10.90024 @ 2014-12-17T00:00:00
!  │   │   └── id {PatientIdentifier.id} [II 1..1] ← Patienten ID
   │   ├── CDA recordTarget (nnar) · 1.2.276.0.76.10.2032 @ 2014-09-17T00:00:00
   │   │   └── recordTarget
   │   │       └── patientRole
?  │   │           ├── addr {CDArecordTargetnnar.addr} [AD 0..1] ← Postleitzahl; same occurrence in use
?  │   │           ├── telecom {CDArecordTargetnnar.telecom} [TEL 0..*] ← Postleitzahl; same occurrence in use
   │   │           └── patient
?  │   │               ├── name {CDArecordTargetnnar.name} [PN 1..* R] ← Postleitzahl; same occurrence in use
?  │   │               └── id {CDArecordTargetnnar.recordTarget.patientRole.patient.id} [II 0..1] ← Patienten ID; same occurrence in use
   │   ├── Hauptkostenträger · 1.2.276.0.76.3.1.195.10.4 @ 2024-08-09T10:35:24
   │   │   └── participant
   │   │       └── associatedEntity
?  │   │           ├── code {hauptkostentrager.code} [CE 0..1] ← Weitere Versichertenstatuskodierung; already claimed; same occurrence in use
   │   │           └── scopingOrganization
?  │   │               └── standardIndustryClassCode {hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.scopingOrganization.standardIndustryClassCode} [CE 0..1] ← Weitere Versichertenstatuskodierung; same occurrence in use
   │   ├── Dienstleistung/Behandlung (Basis) · 1.2.276.0.76.10.2035 @ 2014-09-17T00:00:00
   │   │   └── documentationOf
   │   │       └── serviceEvent
   │   │           └── performer
   │   │               └── time
!  │   │                   └── low {CDADocumentationOf.documentationOf.serviceEvent.performer.time.low} [TS 1..1 R] ← Zeitpunkt erster Arztkontakt
   │   └── CDA encompassingEncounter Patientenkontakt (Basis) · 1.2.276.0.76.10.2036 @ 2016-06-01T00:00:00
   │       └── componentOf
   │           └── encompassingEncounter
   │               └── effectiveTime
!  │                   └── low {CDAEncompassingEncounter.low} [TS.DATE.MIN 1..1 R] ← Aufnahmezeitpunkt, Zeitpunkt Beginn patientenbezogene Dokumentation
   ├── Transportmittel (Transportmethod)
   │   └── Transportmethode · 1.2.276.0.76.10.4037 @ 2015-03-03T00:00:00
   │       └── observation
?  │           └── effectiveTime {Transportmethod.effectiveTime} [IVL_TS 0..1] ← Ankunftszeit; same occurrence in use
?  │               ├── high {Transportmethod.high} [TS 1..1] ← Ankunftszeit; same occurrence in use
?  │               ├── low {Transportmethod.observation.effectiveTime.low} [IVXB_TS 0..1] ← Ankunftszeit; same occurrence in use
?  │               └── center {Transportmethod.observation.effectiveTime.center} [TS 0..1] ← Ankunftszeit; same occurrence in use
   ├── Notfallanamnese (HistoryofPresentIllnessSection)
   │   ├── Unfall-Anamnese · 1.2.276.0.76.3.1.195.10.28 @ 2024-08-13T18:34:56
   │   │   └── act
?  │   │       ├── effectiveTime {unfall-anamnese.effectiveTime} [IVL_TS 1..1 R] ← Zeitpunkt erster Arztkontakt; same occurrence in use
?  │   │       │   ├── low {unfall-anamnese.low} [TS 1..1 R] ← Zeitpunkt erster Arztkontakt; same occurrence in use
?  │   │       │   ├── high {unfall-anamnese.act.effectiveTime.high} [IVXB_TS 0..1] ← Zeitpunkt erster Arztkontakt; same occurrence in use
?  │   │       │   └── center {unfall-anamnese.act.effectiveTime.center} [TS 0..1] ← Zeitpunkt erster Arztkontakt; same occurrence in use
   │   │       └── participant
?  │   │           └── time {unfall-anamnese.act.participant.time} [IVL_TS 0..1] ← Zeitpunkt erster Arztkontakt; same occurrence in use
   │   ├── Unfallursache/-kinetik · 1.2.276.0.76.3.1.195.10.29 @ 2024-08-13T18:37:55
   │   │   └── observation
?  │   │       └── effectiveTime {unfallursache-kinetik.observation.effectiveTime} [IVL_TS 0..1] ← Zeitpunkt erster Arztkontakt; same occurrence in use
   │   ├── Unfallart Traumaregister · 1.2.276.0.76.3.1.195.10.30 @ 2024-08-13T18:37:55
   │   │   └── observation
?  │   │       └── effectiveTime {unfallart-traumaregister.observation.effectiveTime} [IVL_TS 0..1] ← Zeitpunkt erster Arztkontakt; same occurrence in use
   │   └── Substanz-Einfluss · 1.2.276.0.76.3.1.195.10.32 @ 2024-08-13T18:37:55
   │       └── observation
?  │           └── effectiveTime {substanz-einfluss.observation.effectiveTime} [IVL_TS 0..1] ← Zeitpunkt erster Arztkontakt; same occurrence in use
   ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)
   │   ├── Problem Concern Act (Text/CEDIS) · 1.2.276.0.76.10.4039 @ 2015-03-03T00:00:00
   │   │   └── act
?  │   │       └── effectiveTime {Problemconcernactcedis.effectiveTime} [IVL_TS 1..1 R] ← Ereigniseintritt
?  │   │           ├── low {Problemconcernactcedis.low} [IVXB_TS 1..1 R] ← Ereigniseintritt
?  │   │           ├── high {Problemconcernactcedis.high} [IVXB_TS 0..1 R] ← Ereigniseintritt
?  │   │           └── center {Problemconcernactcedis.act.effectiveTime.center} [TS 0..1] ← Ereigniseintritt
   │   └── Problem Observation (Text/CEDIS) · 1.2.276.0.76.10.4040 @ 2015-09-18T00:00:00
   │       └── observation
?  │           └── effectiveTime {Problemobservationcedis.effectiveTime} [IVL_TS 1..1 R] ← Ereigniseintritt; same occurrence in use
?  │               ├── low {Problemobservationcedis.observation.effectiveTime.low} [IVXB_TS 0..1] ← Ereigniseintritt; same occurrence in use
?  │               ├── high {Problemobservationcedis.observation.effectiveTime.high} [IVXB_TS 0..1] ← Ereigniseintritt; same occurrence in use
?  │               └── center {Problemobservationcedis.observation.effectiveTime.center} [TS 0..1] ← Ereigniseintritt; same occurrence in use
   ├── Diagnostik (Relevantdiagnostictestsorlaboratorydata)
   │   ├── Röntgen-Thorax angefordert · 1.2.276.0.76.3.1.195.10.51 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {rontgenthorax_angefordert.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {rontgenthorax_angefordert.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {rontgenthorax_angefordert.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Röntgen-Thorax durchgeführt · 1.2.276.0.76.10.4050 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Plainchestxray.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Plainchestxray.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── interpretationCode {Plainchestxray.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── methodCode {Plainchestxray.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {Plainchestxray.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt · 1.2.276.0.76.10.4051 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Radiographyofspine.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Radiographyofspine.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── interpretationCode {Radiographyofspine.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── methodCode {Radiographyofspine.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {Radiographyofspine.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Röntgen-Becken durchgeführt · 1.2.276.0.76.10.4052 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Pelvisxray.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Pelvisxray.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── interpretationCode {Pelvisxray.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── methodCode {Pelvisxray.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {Pelvisxray.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Röntgen-Extremitäten durchgeführt · 1.2.276.0.76.10.4053 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Plainradiographylimbstructure.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Plainradiographylimbstructure.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Plainradiographylimbstructure.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Plainradiographylimbstructure.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Plainradiographylimbstructure.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── Röntgen o.n.A. durchgeführt · 1.2.276.0.76.10.4054 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Plainradiography.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Plainradiography.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Plainradiography.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Plainradiography.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Plainradiography.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── CT Kopf durchgeführt · 1.2.276.0.76.10.4055 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Computedtomographyofentirehead.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Computedtomographyofentirehead.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── interpretationCode {Computedtomographyofentirehead.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── methodCode {Computedtomographyofentirehead.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {Computedtomographyofentirehead.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── CT Ganzkörper durchgeführt · 1.2.276.0.76.10.4056 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Computedtomographyscanwholebody.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
   │   │       ├── participant
?  │   │       │   └── awarenessCode {Computedtomographyscanwholebody.observation.participant.awarenessCode} [CE 0..1] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Computedtomographyscanwholebody.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Computedtomographyscanwholebody.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Computedtomographyscanwholebody.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── CT Abdomen durchgeführt · 1.2.276.0.76.3.1.195.10.59 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {ct_abdomen_durchgefuhrt.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {ct_abdomen_durchgefuhrt.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {ct_abdomen_durchgefuhrt.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── CT Extremitäten durchgeführt · 1.2.276.0.76.3.1.195.10.60 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {ct_extremitaten_durchgefuhrt.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── approachSiteCode {ct_extremitaten_durchgefuhrt.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {ct_extremitaten_durchgefuhrt.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── CT HWS durchgeführt · 1.2.276.0.76.3.1.195.10.57 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {ct_hws_durchgefuhrt.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {ct_hws_durchgefuhrt.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {ct_hws_durchgefuhrt.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── CT Thorax durchgeführt · 1.2.276.0.76.3.1.195.10.58 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {ct_thorax_durchgefuhrt.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {ct_thorax_durchgefuhrt.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {ct_thorax_durchgefuhrt.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── CT o.n.A. durchgeführt · 1.2.276.0.76.10.4063 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Computerizedaxialtomography.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Computerizedaxialtomography.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Computerizedaxialtomography.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Computerizedaxialtomography.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── MRT durchgeführt · 1.2.276.0.76.10.4058 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Magneticresonanceimaging.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Magneticresonanceimaging.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Magneticresonanceimaging.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Magneticresonanceimaging.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── CT-/MR-/DS-Angiographie · 1.2.276.0.76.3.1.195.10.91 @ 2024-05-24T00:00:00
   │   │   └── observation
?  │   │       ├── value {ct-mr-ds-angiographie.value} [CV 1..1 R] ← Untersuchungsregion, Untersuchungsregion; already claimed
?  │   │       ├── interpretationCode {ct-mr-ds-angiographie.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── methodCode {ct-mr-ds-angiographie.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {ct-mr-ds-angiographie.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Laboruntersuchung durchgeführt · 1.2.276.0.76.10.4057 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Laboratorytest.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Laboratorytest.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Laboratorytest.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Laboratorytest.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── Mikrobiologie angefordert · 1.2.276.0.76.3.1.195.10.47 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {mikrobiologie_angefordert.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {mikrobiologie_angefordert.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {mikrobiologie_angefordert.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── BGA angefordert · 1.2.276.0.76.3.1.195.10.48 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {bga_angefordert.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {bga_angefordert.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {bga_angefordert.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── BGA durchgeführt · 1.2.276.0.76.10.4059 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Bloodgasanalysis.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Bloodgasanalysis.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Bloodgasanalysis.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Bloodgasanalysis.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt · 1.2.276.0.76.10.4060 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Urinalysisreagentstripwithoutmicroscopy.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Urinalysisreagentstripwithoutmicroscopy.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Urinalysisreagentstripwithoutmicroscopy.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Urinalysisreagentstripwithoutmicroscopy.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── EKG angefordert · 1.2.276.0.76.3.1.195.10.49 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {ekg_angefordert.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {ekg_angefordert.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {ekg_angefordert.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Zwölfkanal-EKG durchgeführt · 1.2.276.0.76.10.4061 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Twelveleadelectrocardiogram.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Twelveleadelectrocardiogram.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Twelveleadelectrocardiogram.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Twelveleadelectrocardiogram.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── Echokardiographie durchgeführt · 1.2.276.0.76.10.4064 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Echocardiography.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Echocardiography.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Echocardiography.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Echocardiography.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   ├── Sonographie angefordert · 1.2.276.0.76.3.1.195.10.50 @ 2024-05-24T00:00:00
   │   │   └── procedure
?  │   │       ├── methodCode {sonographie_angefordert.procedure.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       ├── approachSiteCode {sonographie_angefordert.procedure.approachSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │   │       └── targetSiteCode {sonographie_angefordert.procedure.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │   ├── Sonographie durchgeführt · 1.2.276.0.76.10.4062 @ 2015-09-18T00:00:00
   │   │   └── observation
?  │   │       ├── value {Diagnosticultrasonography.value} [CE 1..1 R] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── interpretationCode {Diagnosticultrasonography.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       ├── methodCode {Diagnosticultrasonography.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion
?  │   │       └── targetSiteCode {Diagnosticultrasonography.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion
   │   └── Wildcard Diagnostik · 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30
   │       └── observation
?  │           ├── code {WildcardDiagnostik.code} [CD 1..1] ← Untersuchungsregion, Untersuchungsregion; already claimed; same occurrence in use
?  │           ├── value {WildcardDiagnostik.value_as_CD} [CD 1..1] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   │           ├── reference
   │           │   └── externalDocument
?  │           │       └── code {WildcardDiagnostik.observation.reference.externalDocument.code} [CD 0..1] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │           ├── interpretationCode {WildcardDiagnostik.observation.interpretationCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │           ├── methodCode {WildcardDiagnostik.observation.methodCode} [CE 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
?  │           └── targetSiteCode {WildcardDiagnostik.observation.targetSiteCode} [CD 0..*] ← Untersuchungsregion, Untersuchungsregion; same occurrence in use
   ├── Medikamentöse Therapie (medikamentose-therapie)
   │   ├── Medikation · 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00
   │   │   └── substanceAdministration
?  │   │       ├── text {Medikation.text} [ED 1..1] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext; same occurrence in use
?  │   │       ├── routeCode {Medikation.routeCode} [CE 0..1] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung; same occurrence in use
?  │   │       ├── approachSiteCode {Medikation.approachSiteCode} [CD 0..*] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung; same occurrence in use
   │   │       ├── entryRelationship
?  │   │       │   ├── sequenceNumber {Medikation.sequenceNumber} [INT 0..1] ← Dosismenge und -einheit, Kontinuierliche Gabe (Rate); already claimed
?  │   │       │   ├── seperatableInd {Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd} [BL 0..1] ← Arzneilich wirksamer Bestandteil?, Einnahme bei Bedarf; same occurrence in use
?  │   │       │   ├── @inversionInd {Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd} [BL 0..1 C] ← Arzneilich wirksamer Bestandteil?, Einnahme bei Bedarf; same occurrence in use
?  │   │       │   └── @negationInd {Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd} [BL 0..1 C] ← Arzneilich wirksamer Bestandteil?, Einnahme bei Bedarf; same occurrence in use
?  │   │       ├── repeatNumber {Medikation.substanceAdministration.repeatNumber} [IVL_INT 0..1] ← Dosismenge und -einheit, Kontinuierliche Gabe (Rate); same occurrence in use
?  │   │       └── @negationInd {Medikation.substanceAdministration.negationInd} [BL 0..1] ← Arzneilich wirksamer Bestandteil?, Einnahme bei Bedarf; same occurrence in use
   │   ├── UV Medication Information (simple) · 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16
   │   │   └── manufacturedProduct
   │   │       └── manufacturedMaterial
?  │   │           ├── code {UVMedicationInformationsimple.code} [CD 1..1 R] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
?  │   │           │   └── translation {UVMedicationInformationsimple.translation} [CE 0..*] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
?  │   │           ├── lotNumberText {UVMedicationInformationsimple.lotNumberText} [ST 0..1] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │           └── name {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name} [EN 0..1] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
   │   ├── CDA Organization · 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00
?  │   │   ├── name {CDAOrganization.name} [ON 0..*] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │   ├── telecom {CDAOrganization.telecom} [TEL 0..*] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │   ├── addr {CDAOrganization.addr} [AD 0..*] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │   ├── standardIndustryClassCode {CDAOrganization.standardIndustryClassCode} [CE 0..1] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
   │   │   └── asOrganizationPartOf
?  │   │       ├── code {CDAOrganization.code} [CE 0..1] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
   │   │       └── wholeOrganization
?  │   │           ├── name {CDAOrganization.asOrganizationPartOf.wholeOrganization.name} [ON 0..*] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │           ├── telecom {CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom} [TEL 0..*] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │           ├── addr {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr} [AD 0..*] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │   │           └── standardIndustryClassCode {CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode} [CE 0..1] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
   │   └── UV Subordinate Substance Administration · 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00
   │       └── substanceAdministration
!  │           ├── effectiveTime {UVSubordinateadministration.effectiveTime_value_or_nullFlavor} [TS 0..1 C] ← (Start)zeitpunkt der Anwendung, Stoppzeitpunkt der Anwendung, Zeitpunkt
   │           ├── effectiveTime
?  │           │   ├── event {UVSubordinateadministration.event} [EIVL.event 0..1 C] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
?  │           │   │   └── @code {UVSubordinateadministration.code} [cs 0..1 C] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
!  │           │   └── offset {UVSubordinateadministration.substanceAdministration.effectiveTime_xsi_type_EIVL_TS.offset} [IVL_PQ 0..1] ← Offset
?  │           ├── doseQuantity {UVSubordinateadministration.doseQuantity} [IVL_PQ 0..1 R] ← Dosismenge und -einheit, Kontinuierliche Gabe (Rate)
?  │           │   └── @unit {UVSubordinateadministration.unit} [cs 0..1 R] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │           ├── rateQuantity {UVSubordinateadministration.rateQuantity} [IVL_PQ 0..1] ← Dosismenge und -einheit, Kontinuierliche Gabe (Rate)
?  │           ├── administrationUnitCode {UVSubordinateadministration.administrationUnitCode} [CE 0..1] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
   │           └── consumable
   │               └── manufacturedProduct
   │                   └── manufacturedMaterial
?  │                       ├── code {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code} [CE 0..1] ← Arzneimittel-Code, Darreichungsform, Wirkstoff-Code, Zusätzliche Hinweise, Ereignis, Körperstelle, Art der Anwendung, Kodierte Begründung
?  │                       ├── name {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name} [EN 0..1] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
?  │                       └── lotNumberText {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText} [ST 0..1] ← Arzneimittel-Name, Wirkstoff-Name, Wirkstärke, Chargennummer, Freitext, Anweisungen zur Einnahme, Methode der Anwendung, Begründungstext
   ├── Abschlussdiagnosen (Basis) (Eddiagnosis)
   │   ├── Abschlussdiagnosen (Basis) · 1.2.276.0.76.10.3055 @ 2016-06-22T00:00:00
   │   │   └── section
?  │   │       ├── text {Eddiagnosis.text} [SD.TEXT 1..1] ← Freitext Abschlussdiagnose
?  │   │       └── @ID {Eddiagnosis.section.ID} [ST 0..1] ← Freitext Abschlussdiagnose
   │   ├── Problem Observation (Abschlussdiagnose) · 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00
   │   │   └── observation
?  │   │       ├── code {Problemobservationeddiagnosis.code} [CE 1..1] ← ICD-10, ICD-10 Sekundärdiagnose; same occurrence in use
?  │   │       ├── text {Problemobservationeddiagnosis.text} [ED 0..1] ← Freitext Abschlussdiagnose; same occurrence in use
!  │   │       ├── value {Problemobservationeddiagnosis.observation.value} [CD 1..1 R] ← ICD-10, ICD-10 Sekundärdiagnose; same occurrence in use
!  │   │       │   ├── originalText {Problemobservationeddiagnosis.originalText} [ST 0..1 R] ← Freitext Abschlussdiagnose; same occurrence in use
   │   │       │   └── qualifier
   │   │       │       └── @code='FSTAT']
?  │   │       │           └── value {Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value} [CV 1..1 R] ← ICD-10, ICD-10 Sekundärdiagnose; same occurrence in use
?  │   │       ├── derivationExpr {Problemobservationeddiagnosis.observation.derivationExpr} [ST 0..1] ← Freitext Abschlussdiagnose; same occurrence in use
?  │   │       ├── interpretationCode {Problemobservationeddiagnosis.observation.interpretationCode} [CE 0..*] ← ICD-10, ICD-10 Sekundärdiagnose; same occurrence in use
?  │   │       ├── methodCode {Problemobservationeddiagnosis.observation.methodCode} [CE 0..*] ← ICD-10, ICD-10 Sekundärdiagnose; same occurrence in use
?  │   │       └── targetSiteCode {Problemobservationeddiagnosis.observation.targetSiteCode} [CD 0..*] ← ICD-10, ICD-10 Sekundärdiagnose; same occurrence in use
   │   ├── Diagnosesicherheit · 1.2.276.0.76.10.90027 @ 2017-03-02T00:00:00
   │   │   └── qualifier
   │   │       └── @code='8']
?  │   │           └── value {Certainty.value} [CV 1..1 R] ← ICD-10, ICD-10 Sekundärdiagnose; already claimed
   │   ├── Lateralität · 1.2.276.0.76.10.90026 @ 2017-02-13T00:00:00
   │   │   └── qualifier
   │   │       └── @code='20228-3']
?  │   │           └── value {Laterality.value} [CV 1..1 R] ← ICD-10, ICD-10 Sekundärdiagnose; already claimed
   │   └── Problem Concern Act (Abschlussdiagnosen) · 1.2.276.0.76.10.4048 @ 2016-06-22T00:00:00
   │       └── act
?  │           └── text {Problemconcernacteddiagnoses.act.text} [ED 0..1] ← Freitext Abschlussdiagnose; same occurrence in use
   └── Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)
       └── Weiterbehandlung Verlegung · 1.2.276.0.76.10.4067 @ 2025-12-01T00:00:00
           └── act
!              └── code {Referralto.act.code} [CE 1..1 R] ← Typ Verlegung
```

## Decisions

Every card corresponds to an explicit `null` entry in `cda-mapping.json`. Retaining `null` is valid when the clinical representation remains unproven.

### Postleitzahl

Dataset datapoint: `patient.anschrift.postleitzahl`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDArecordTargetnnar.recordTarget` | recordTarget | `POCD_MT000040.RecordTarget` | CONTEXT | CTX[20119] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### CDA recordTarget (nnar)

Contained template: `1.2.276.0.76.10.2032` @ `2014-09-17T00:00:00`; occurrence `document`

Patient

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDArecordTargetnnar.addr`<br>`hl7:recordTarget/hl7:patientRole/hl7:addr` | AD | 0..1 | — | — | — | same occurrence: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht |
| `CDArecordTargetnnar.name`<br>`hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name` | PN | 1..* | R | — | — | same occurrence: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht |
| `CDArecordTargetnnar.telecom`<br>`hl7:recordTarget/hl7:patientRole/hl7:telecom` | TEL | 0..* | — | — | — | same occurrence: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht |

Annotated template skeleton:

```xml
<!-- Template: CDA recordTarget (nnar) -->
<!-- OID/revision: 1.2.276.0.76.10.2032 @ 2014-09-17T00:00:00 -->
<!-- Description: Patient -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.RecordTarget; cardinality: 1..1; conformance: — -->
<recordTarget typeCode="RCT" contextControlCode="OP">
  <!-- Datatype: POCD_MT000040.PatientRole; cardinality: 1..1; conformance: — -->
  <patientRole classCode="PAT">
    <!-- Possible target (unproven): CDArecordTargetnnar.addr -->
    <!-- Datatype: AD; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht -->
    <addr>
      {CDArecordTargetnnar.addr}
    </addr>
    <!-- Datatype: POCD_MT000040.Patient; cardinality: 1..1; conformance: R -->
    <patient classCode="PSN" determinerCode="INSTANCE">
      <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
      <!-- Bound ValueSet: Administrative Gender (HL7 V3) (2.16.840.1.113883.1.11.1@2016-06-23T00:00:00) -->
      <administrativeGenderCode/>
      <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
      <birthTime/>
      <!-- Possible target (unproven): CDArecordTargetnnar.name -->
      <!-- Datatype: PN; cardinality: 1..*; conformance: R -->
      <!-- Same template occurrence already carries: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht -->
      <name>
        {CDArecordTargetnnar.name}
      </name>
    </patient>
    <!-- Possible target (unproven): CDArecordTargetnnar.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <!-- Same template occurrence already carries: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht -->
    <telecom/>
  </patientRole>
</recordTarget>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "patient.anschrift.postleitzahl": null
  }
}
```

### Patienten ID

Dataset datapoint: `patient.identifikatoren.patienten_id`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `PatientIdentifier.id` | id | `II` | WEAK | relationship:SPEC → inherit^-1 → TA | evidence only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### CDA recordTarget (nnar)

Contained template: `1.2.276.0.76.10.2032` @ `2014-09-17T00:00:00`; occurrence `document`

Patient

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDArecordTargetnnar.recordTarget.patientRole.patient.id`<br>`hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:id` | II | 0..1 | — | — | — | same occurrence: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht |

Annotated template skeleton:

```xml
<!-- Template: CDA recordTarget (nnar) -->
<!-- OID/revision: 1.2.276.0.76.10.2032 @ 2014-09-17T00:00:00 -->
<!-- Description: Patient -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.RecordTarget; cardinality: 1..1; conformance: — -->
<recordTarget typeCode="RCT" contextControlCode="OP">
  <!-- Datatype: POCD_MT000040.PatientRole; cardinality: 1..1; conformance: — -->
  <patientRole classCode="PAT">
    <!-- Datatype: POCD_MT000040.Patient; cardinality: 1..1; conformance: R -->
    <patient classCode="PSN" determinerCode="INSTANCE">
      <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
      <!-- Bound ValueSet: Administrative Gender (HL7 V3) (2.16.840.1.113883.1.11.1@2016-06-23T00:00:00) -->
      <administrativeGenderCode/>
      <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
      <birthTime/>
      <!-- Possible target (unproven): CDArecordTargetnnar.recordTarget.patientRole.patient.id -->
      <!-- Datatype: II; cardinality: 0..1; conformance: — -->
      <!-- Same template occurrence already carries: CDArecordTargetnnar.administrativeGenderCode ← patient.geschlecht -->
      <id extension="{CDArecordTargetnnar.recordTarget.patientRole.patient.id}"/>
      <!-- Datatype: PN; cardinality: 1..*; conformance: R -->
      <name/>
    </patient>
  </patientRole>
</recordTarget>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "patient.identifikatoren.patienten_id": null
  }
}
```

### Aufnahmezeitpunkt

Dataset datapoint: `administrative_aufnahmeinformationen.aufnahmezeitpunkt`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDAEncompassingEncounter.low` | Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute | `TS.DATE.MIN` | WEAK | relationship:SPEC → inherit^-1 → TA | evidence only |

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "administrative_aufnahmeinformationen.aufnahmezeitpunkt": null
  }
}
```

### Ereigniseintritt

Dataset datapoint: `notfallanamnese.beschwerden_bei_vorstellung.ereigniseintritt`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Chiefcomplaintreasonforvisit.section` | section | `POCD_MT000040.Section` | CONTEXT | CTX[10034] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Problem Concern Act (Text/CEDIS)

Contained template: `1.2.276.0.76.10.4039` @ `2015-03-03T00:00:00`; occurrence `0.18.0.4.0.0.4.0`

Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptome und ggf. CEDIS-Kodes

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Problemconcernactcedis.effectiveTime`<br>`hl7:act/hl7:effectiveTime` | IVL_TS | 1..1 | R | — | — | unavailable: datatype IVL_TS assertion 'not(@value and hl7:*)' is unavoidably violated (present: @value, hl7:low); unavailable: datatype IVL_TS assertion 'not(@value and (hl7:low\|hl7:center\|hl7:high\|hl7:width))' is unavoidably violated (present: @value, hl7:low) |
| `Problemconcernactcedis.act.effectiveTime.center`<br>`hl7:act/hl7:effectiveTime/hl7:center` | TS | 0..1 | — | — | — | unavailable: datatype IVL_TS assertion 'not(hl7:center and (hl7:low\|hl7:high\|hl7:width))' is unavoidably violated (present: hl7:center, hl7:low) |
| `Problemconcernactcedis.high`<br>`hl7:act/hl7:effectiveTime/hl7:high` | IVXB_TS | 0..1 | R | — | — | available; semantics unproven |
| `Problemconcernactcedis.low`<br>`hl7:act/hl7:effectiveTime/hl7:low` | IVXB_TS | 1..1 | R | — | — | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Problem Concern Act (Text/CEDIS) -->
<!-- OID/revision: 1.2.276.0.76.10.4039 @ 2015-03-03T00:00:00 -->
<!-- Description: Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptome und ggf. CEDIS-Kodes -->
<!-- Contained-template occurrence: 0.18.0.4.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Act; cardinality: 1..1; conformance: — -->
<act classCode="ACT" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="CONC" codeSystem="2.16.840.1.113883.5.6"/>
  <!-- Possible target (unproven): Problemconcernactcedis.effectiveTime -->
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <effectiveTime>
    <!-- Possible target (unproven): Problemconcernactcedis.act.effectiveTime.center -->
    <!-- Datatype: TS; cardinality: 0..1; conformance: — -->
    <center value="{Problemconcernactcedis.act.effectiveTime.center}"/>
    <!-- Possible target (unproven): Problemconcernactcedis.high -->
    <!-- Datatype: IVXB_TS; cardinality: 0..1; conformance: R -->
    <high value="{Problemconcernactcedis.high}"/>
    <!-- Possible target (unproven): Problemconcernactcedis.low -->
    <!-- Datatype: IVXB_TS; cardinality: 1..1; conformance: R -->
    <low value="{Problemconcernactcedis.low}"/>
  </effectiveTime>
  <!-- Name/description: Beschwerden (CEDIS, "most prominent"), als Text und/oder kodiert -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 1..1; conformance: — -->
  <entryRelationship typeCode="SUBJ"/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <!-- Bound ValueSet: ActStatus (2.16.840.1.113883.1.11.15933@2014-03-26T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4039"/>
</act>
```

##### Problem Observation (Text/CEDIS)

Contained template: `1.2.276.0.76.10.4040` @ `2015-09-18T00:00:00`; occurrence `0.18.0.4.0.0.4.0.0.5.0`

Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptom und ggf. CEDIS-Kode

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Problemobservationcedis.effectiveTime`<br>`hl7:observation/hl7:effectiveTime` | IVL_TS | 1..1 | R | — | — | same occurrence: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis; unavailable: datatype IVL_TS assertion 'not(@value and hl7:*)' is unavoidably violated (present: @value, hl7:width); unavailable: datatype IVL_TS assertion 'not(@value and (hl7:low\|hl7:center\|hl7:high\|hl7:width))' is unavoidably violated (present: @value, hl7:width) |
| `Problemobservationcedis.observation.effectiveTime.center`<br>`hl7:observation/hl7:effectiveTime/hl7:center` | TS | 0..1 | — | — | — | same occurrence: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis; unavailable: datatype IVL_TS assertion 'not(hl7:center and (hl7:low\|hl7:high\|hl7:width))' is unavoidably violated (present: hl7:center, hl7:width) |
| `Problemobservationcedis.observation.effectiveTime.high`<br>`hl7:observation/hl7:effectiveTime/hl7:high` | IVXB_TS | 0..1 | — | — | — | same occurrence: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis |
| `Problemobservationcedis.observation.effectiveTime.low`<br>`hl7:observation/hl7:effectiveTime/hl7:low` | IVXB_TS | 0..1 | — | — | — | same occurrence: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis |

Annotated template skeleton:

```xml
<!-- Template: Problem Observation (Text/CEDIS) -->
<!-- OID/revision: 1.2.276.0.76.10.4040 @ 2015-09-18T00:00:00 -->
<!-- Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: für Text Symptom und ggf. CEDIS-Kode -->
<!-- Contained-template occurrence: 0.18.0.4.0.0.4.0.0.5.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="75322-8" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Possible target (unproven): Problemobservationcedis.effectiveTime -->
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <!-- Same template occurrence already carries: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis -->
  <effectiveTime>
    <!-- Possible target (unproven): Problemobservationcedis.observation.effectiveTime.center -->
    <!-- Datatype: TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis -->
    <center value="{Problemobservationcedis.observation.effectiveTime.center}"/>
    <!-- Possible target (unproven): Problemobservationcedis.observation.effectiveTime.high -->
    <!-- Datatype: IVXB_TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis -->
    <high value="{Problemobservationcedis.observation.effectiveTime.high}"/>
    <!-- Possible target (unproven): Problemobservationcedis.observation.effectiveTime.low -->
    <!-- Datatype: IVXB_TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Problemobservationcedis.originalText ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext; Problemobservationcedis.value ← notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis -->
    <low value="{Problemobservationcedis.observation.effectiveTime.low}"/>
    <!-- Datatype: PQ; cardinality: 1..1; conformance: R -->
    <width/>
  </effectiveTime>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4040"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Name/description: CEDIS Kode -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: CEDIS Presenting Complaint List 3.0 (1.2.276.0.76.11.61@2016-02-21T00:00:00) -->
  <value/>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "notfallanamnese.beschwerden_bei_vorstellung.ereigniseintritt": null
  }
}
```

### Zeitpunkt erster Arztkontakt

Dataset datapoint: `notfallanamnese.zeitpunkt_erster_arztkontakt`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDADocumentationOf.documentationOf.serviceEvent.performer.time.low` | Begin des Arztkontaktes | `TS` | WEAK | relationship:SPEC → inherit^-1 → TA | evidence only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Unfall-Anamnese

Contained template: `1.2.276.0.76.3.1.195.10.28` @ `2024-08-13T18:34:56`; occurrence `0.18.0.3.0.0.4.0`

Injury Event Detail

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `unfall-anamnese.effectiveTime`<br>`hl7:act/hl7:effectiveTime` | IVL_TS | 1..1 | R | — | — | same occurrence: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten; unavailable: datatype IVL_TS assertion 'not(@value and hl7:*)' is unavoidably violated (present: @value, hl7:low); unavailable: datatype IVL_TS assertion 'not(@value and (hl7:low\|hl7:center\|hl7:high\|hl7:width))' is unavoidably violated (present: @value, hl7:low) |
| `unfall-anamnese.act.effectiveTime.center`<br>`hl7:act/hl7:effectiveTime/hl7:center` | TS | 0..1 | — | — | — | same occurrence: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten; unavailable: datatype IVL_TS assertion 'not(hl7:center and (hl7:low\|hl7:high\|hl7:width))' is unavoidably violated (present: hl7:center, hl7:low) |
| `unfall-anamnese.act.effectiveTime.high`<br>`hl7:act/hl7:effectiveTime/hl7:high` | IVXB_TS | 0..1 | — | — | — | same occurrence: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten |
| `unfall-anamnese.low`<br>`hl7:act/hl7:effectiveTime/hl7:low` | TS | 1..1 | R | — | — | same occurrence: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten |
| `unfall-anamnese.act.participant.time`<br>`hl7:act/hl7:participant/hl7:time` | IVL_TS | 0..1 | — | — | — | same occurrence: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten |

Annotated template skeleton:

```xml
<!-- Template: Unfall-Anamnese -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.28 @ 2024-08-13T18:34:56 -->
<!-- Description: Injury Event Detail -->
<!-- Contained-template occurrence: 0.18.0.3.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Act; cardinality: 1..1; conformance: — -->
<act classCode="ACT" moodCode="EVN">
  <!-- Datatype: CV; cardinality: 1..1; conformance: — -->
  <code code="74209-8" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Possible target (unproven): unfall-anamnese.effectiveTime -->
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <!-- Same template occurrence already carries: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten -->
  <effectiveTime>
    <!-- Possible target (unproven): unfall-anamnese.act.effectiveTime.center -->
    <!-- Datatype: TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten -->
    <center value="{unfall-anamnese.act.effectiveTime.center}"/>
    <!-- Possible target (unproven): unfall-anamnese.act.effectiveTime.high -->
    <!-- Datatype: IVXB_TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten -->
    <high value="{unfall-anamnese.act.effectiveTime.high}"/>
    <!-- Possible target (unproven): unfall-anamnese.low -->
    <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
    <!-- Same template occurrence already carries: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten -->
    <low value="{unfall-anamnese.low}"/>
  </effectiveTime>
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..1; conformance: R -->
  <entryRelationship typeCode="COMP" contextConductionInd="true"/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 0..1; conformance: R -->
  <participant typeCode="DEV">
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: R -->
    <participantRole classCode="INST">
      <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
      <!-- Bound ValueSet: Fahrzeug des Verunfallten (1.2.276.0.76.3.1.195.11.8@2024-06-26T13:29:30) -->
      <code/>
    </participantRole>
    <!-- Possible target (unproven): unfall-anamnese.act.participant.time -->
    <!-- Datatype: IVL_TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: unfall-anamnese.act.participant.participantRole.code ← notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten -->
    <time/>
  </participant>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.28"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</act>
```

##### Unfallursache/-kinetik

Contained template: `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`; occurrence `0.18.0.3.0.0.4.0.0.5.0`

Primäre Unfallursache und -kinetik

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `unfallursache-kinetik.observation.effectiveTime`<br>`hl7:observation/hl7:effectiveTime` | IVL_TS | 0..1 | — | — | — | same occurrence: unfallursache-kinetik.observation.value ← notfallanamnese.unfallanamnese.unfallursache; unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value ← notfallanamnese.unfallanamnese.unfallkinetik |

Annotated template skeleton:

```xml
<!-- Template: Unfallursache/-kinetik -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.29 @ 2024-08-13T18:37:55 -->
<!-- Description: Primäre Unfallursache und -kinetik -->
<!-- Contained-template occurrence: 0.18.0.3.0.0.4.0.0.5.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <code code="69543-7" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Possible target (unproven): unfallursache-kinetik.observation.effectiveTime -->
  <!-- Datatype: IVL_TS; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: unfallursache-kinetik.observation.value ← notfallanamnese.unfallanamnese.unfallursache; unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value ← notfallanamnese.unfallanamnese.unfallkinetik -->
  <effectiveTime/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.29"/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Unfallursache (SNOMED) (1.2.276.0.76.3.1.195.11.6@2024-02-14T13:19:28) -->
  <value>
    <qualifier>
      <@code='67496-0']>
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <name code="67496-0" codeSystem="2.16.840.1.113883.6.1"/>
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <!-- Bound ValueSet: Unfallkinetik (1.2.276.0.76.3.1.195.11.5@2024-02-14T12:41:43) -->
        <value/>
      </@code='67496-0']>
    </qualifier>
  </value>
</observation>
```

##### Unfallart Traumaregister

Contained template: `1.2.276.0.76.3.1.195.10.30` @ `2024-08-13T18:37:55`; occurrence `0.18.0.3.0.0.4.0.0.6.0`

Unfallart Traumaregister

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `unfallart-traumaregister.observation.effectiveTime`<br>`hl7:observation/hl7:effectiveTime` | IVL_TS | 0..1 | — | — | — | same occurrence: unfallart-traumaregister.value ← notfallanamnese.unfallanamnese.unfallart_trauma_register |

Annotated template skeleton:

```xml
<!-- Template: Unfallart Traumaregister -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.30 @ 2024-08-13T18:37:55 -->
<!-- Description: Unfallart Traumaregister -->
<!-- Contained-template occurrence: 0.18.0.3.0.0.4.0.0.6.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <code code="11373-8" codeSystem="2.16.840.1.113883.6.1" displayName="Injury cause"/>
  <!-- Possible target (unproven): unfallart-traumaregister.observation.effectiveTime -->
  <!-- Datatype: IVL_TS; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: unfallart-traumaregister.value ← notfallanamnese.unfallanamnese.unfallart_trauma_register -->
  <effectiveTime/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.30"/>
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Unfallart Traumaregister (1.2.276.0.76.3.1.195.11.18@2024-08-08T20:33:01) -->
  <value/>
</observation>
```

##### Substanz-Einfluss

Contained template: `1.2.276.0.76.3.1.195.10.32` @ `2024-08-13T18:37:55`; occurrence `0.18.0.3.0.0.5.0`

Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `substanz-einfluss.observation.effectiveTime`<br>`hl7:observation/hl7:effectiveTime` | IVL_TS | 0..1 | — | — | — | same occurrence: substanz-einfluss.value ← notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq |

Annotated template skeleton:

```xml
<!-- Template: Substanz-Einfluss -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.32 @ 2024-08-13T18:37:55 -->
<!-- Description: Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? -->
<!-- Contained-template occurrence: 0.18.0.3.0.0.5.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <code code="88068-2" codeSystem="2.16.840.1.113883.6.1" displayName="Cause of intoxication"/>
  <!-- Possible target (unproven): substanz-einfluss.observation.effectiveTime -->
  <!-- Datatype: IVL_TS; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: substanz-einfluss.value ← notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq -->
  <effectiveTime/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.32"/>
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Substanz-Einfluss (1.2.276.0.76.3.1.195.11.23@2024-07-22T16:51:10) -->
  <value/>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "notfallanamnese.zeitpunkt_erster_arztkontakt": null
  }
}
```

### Untersuchungsregion

Dataset datapoint: `diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Relevantdiagnostictestsorlaboratorydata.section` | section | `POCD_MT000040.Section` | CONTEXT | CTX[20727] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Röntgen-Thorax angefordert

Contained template: `1.2.276.0.76.3.1.195.10.51` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.4.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Röntgenthorax angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `rontgenthorax_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert |
| `rontgenthorax_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert |
| `rontgenthorax_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Thorax angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.51 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Röntgenthorax angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): rontgenthorax_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert -->
  <approachSiteCode/>
  <!-- Possible target (unproven): rontgenthorax_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert -->
  <methodCode/>
  <!-- Possible target (unproven): rontgenthorax_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert -->
  <targetSiteCode/>
</procedure>
```

##### Röntgen-Thorax durchgeführt

Contained template: `1.2.276.0.76.10.4050` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.5.0`

Diagnostik Template Plain chest X-ray in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Plainchestxray.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt |
| `Plainchestxray.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt |
| `Plainchestxray.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt |
| `Plainchestxray.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt |
| `Plainchestxray.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Thorax durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4050 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Plain chest X-ray in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.5.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="30745-4" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Plainchestxray.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <interpretationCode/>
  <!-- Possible target (unproven): Plainchestxray.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Plainchestxray.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Plainchestxray.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4050"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Plainchestxray.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <value/>
</observation>
```

##### Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt

Contained template: `1.2.276.0.76.10.4051` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.6.0`

Diagnostik Template Radiography of spine in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Radiographyofspine.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt |
| `Radiographyofspine.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt |
| `Radiographyofspine.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt |
| `Radiographyofspine.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt |
| `Radiographyofspine.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4051 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Radiography of spine in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.6.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="38008-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Radiographyofspine.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <interpretationCode/>
  <!-- Possible target (unproven): Radiographyofspine.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Radiographyofspine.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Radiographyofspine.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4051"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Radiographyofspine.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <value/>
</observation>
```

##### Röntgen-Becken durchgeführt

Contained template: `1.2.276.0.76.10.4052` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.7.0`

Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Pelvisxray.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt |
| `Pelvisxray.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt |
| `Pelvisxray.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt |
| `Pelvisxray.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt |
| `Pelvisxray.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Becken durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4052 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.7.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="28561-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Pelvisxray.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <interpretationCode/>
  <!-- Possible target (unproven): Pelvisxray.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Pelvisxray.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Pelvisxray.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4052"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Pelvisxray.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <value/>
</observation>
```

##### Röntgen-Extremitäten durchgeführt

Contained template: `1.2.276.0.76.10.4053` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.8.0`

Diagnostik Template Plain radiography limb structure in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Plainradiographylimbstructure.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Plainradiographylimbstructure.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Plainradiographylimbstructure.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | available; semantics unproven |
| `Plainradiographylimbstructure.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Plainradiographylimbstructure.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Extremitäten durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4053 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Plain radiography limb structure in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.8.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="37637-6" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Plainradiographylimbstructure.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Plainradiographylimbstructure.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Plainradiographylimbstructure.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Plainradiographylimbstructure.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4053"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Plainradiographylimbstructure.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### Röntgen o.n.A. durchgeführt

Contained template: `1.2.276.0.76.10.4054` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.9.0`

Diagnostik Template Plain radiography in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Plainradiography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Plainradiography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Plainradiography.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | available; semantics unproven |
| `Plainradiography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Plainradiography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Röntgen o.n.A. durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4054 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Plain radiography in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.9.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="43468-8" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Plainradiography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Plainradiography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Plainradiography.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Plainradiography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4054"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Plainradiography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### CT Kopf durchgeführt

Contained template: `1.2.276.0.76.10.4055` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.10.0`

Diagnostik Template Computed tomography of entire head in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Computedtomographyofentirehead.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt |
| `Computedtomographyofentirehead.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt |
| `Computedtomographyofentirehead.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt |
| `Computedtomographyofentirehead.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt |
| `Computedtomographyofentirehead.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: CT Kopf durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4055 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Computed tomography of entire head in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.10.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="24725-4" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Computedtomographyofentirehead.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <interpretationCode/>
  <!-- Possible target (unproven): Computedtomographyofentirehead.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Computedtomographyofentirehead.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Computedtomographyofentirehead.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4055"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Computedtomographyofentirehead.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <value/>
</observation>
```

##### CT Ganzkörper durchgeführt

Contained template: `1.2.276.0.76.10.4056` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.11.0`

Diagnostik Template Computed tomography scan - whole body in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Computedtomographyscanwholebody.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Computedtomographyscanwholebody.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Computedtomographyscanwholebody.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | available; semantics unproven |
| `Computedtomographyscanwholebody.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Computedtomographyscanwholebody.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: CT Ganzkörper durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4056 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Computed tomography scan - whole body in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.11.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="46305-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4056"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### CT Abdomen durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.59` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.12.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT des Abdomens durchgführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_abdomen_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt |
| `ct_abdomen_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt |
| `ct_abdomen_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: CT Abdomen durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.59 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT des Abdomens durchgführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_abdomen_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_abdomen_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt -->
  <methodCode/>
  <!-- Possible target (unproven): ct_abdomen_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt -->
  <targetSiteCode/>
</procedure>
```

##### CT Extremitäten durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.60` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.13.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Extremitäten durchgeführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_extremitaten_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `ct_extremitaten_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `ct_extremitaten_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: CT Extremitäten durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.60 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Extremitäten durchgeführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.13.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_extremitaten_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_extremitaten_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Possible target (unproven): ct_extremitaten_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
</procedure>
```

##### CT HWS durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.57` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.14.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Halswirbelsäule durchgeführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_hws_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt |
| `ct_hws_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt |
| `ct_hws_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: CT HWS durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.57 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Halswirbelsäule durchgeführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.14.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_hws_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_hws_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt -->
  <methodCode/>
  <!-- Possible target (unproven): ct_hws_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt -->
  <targetSiteCode/>
</procedure>
```

##### CT Thorax durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.58` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.15.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein CT des Thorax durchgeführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_thorax_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt |
| `ct_thorax_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt |
| `ct_thorax_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt |

Annotated template skeleton:

```xml
<!-- Template: CT Thorax durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.58 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein CT des Thorax durchgeführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.15.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_thorax_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_thorax_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt -->
  <methodCode/>
  <!-- Possible target (unproven): ct_thorax_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt -->
  <targetSiteCode/>
</procedure>
```

##### CT o.n.A. durchgeführt

Contained template: `1.2.276.0.76.10.4063` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.16.0`

Diagnostik Template Computerized axial tomography

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Computerizedaxialtomography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Computerizedaxialtomography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Computerizedaxialtomography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Computerizedaxialtomography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: CT o.n.A. durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4063 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Computerized axial tomography -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.16.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="25045-6" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Computerizedaxialtomography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Computerizedaxialtomography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Computerizedaxialtomography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4063"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Computerizedaxialtomography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### MRT durchgeführt

Contained template: `1.2.276.0.76.10.4058` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.17.0`

Diagnostik Template Magnetic resonance imaging

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Magneticresonanceimaging.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Magneticresonanceimaging.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Magneticresonanceimaging.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Magneticresonanceimaging.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: MRT durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4058 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Magnetic resonance imaging -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.17.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="25056-3" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Magneticresonanceimaging.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Magneticresonanceimaging.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Magneticresonanceimaging.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4058"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Magneticresonanceimaging.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### CT-/MR-/DS-Angiographie

Contained template: `1.2.276.0.76.3.1.195.10.91` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.18.0`

Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct-mr-ds-angiographie.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie |
| `ct-mr-ds-angiographie.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie |
| `ct-mr-ds-angiographie.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie |
| `ct-mr-ds-angiographie.value`<br>`hl7:observation/hl7:value` | CV | 1..1 | R | — | CT-/MR-/DS-Angiographie (1.2.276.0.76.3.1.195.11.24@2024-07-22T16:51:10) | already claimed by diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie |

Annotated template skeleton:

```xml
<!-- Template: CT-/MR-/DS-Angiographie -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.91 @ 2024-05-24T00:00:00 -->
<!-- Description: Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.18.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: R -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Possible target (unproven): ct-mr-ds-angiographie.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <interpretationCode/>
  <!-- Possible target (unproven): ct-mr-ds-angiographie.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <methodCode/>
  <!-- Possible target (unproven): ct-mr-ds-angiographie.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.3.1.195.10.91"/>
  <!-- Possible target (unproven): ct-mr-ds-angiographie.value -->
  <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: CT-/MR-/DS-Angiographie (1.2.276.0.76.3.1.195.11.24@2024-07-22T16:51:10) -->
  <!-- Already claimed by: diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <value/>
</observation>
```

##### Laboruntersuchung durchgeführt

Contained template: `1.2.276.0.76.10.4057` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.19.0`

Diagnostik Template Laboratory test

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Laboratorytest.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Laboratorytest.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Laboratorytest.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Laboratorytest.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Laboruntersuchung durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4057 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Laboratory test -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.19.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="26436-6" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Laboratorytest.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Laboratorytest.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Laboratorytest.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4057"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Laboratorytest.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### Mikrobiologie angefordert

Contained template: `1.2.276.0.76.3.1.195.10.47` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.20.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Mikrobiologische Untersuchung angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `mikrobiologie_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert |
| `mikrobiologie_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert |
| `mikrobiologie_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert |

Annotated template skeleton:

```xml
<!-- Template: Mikrobiologie angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.47 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Mikrobiologische Untersuchung angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.20.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): mikrobiologie_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert -->
  <approachSiteCode/>
  <!-- Possible target (unproven): mikrobiologie_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert -->
  <methodCode/>
  <!-- Possible target (unproven): mikrobiologie_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert -->
  <targetSiteCode/>
</procedure>
```

##### BGA angefordert

Contained template: `1.2.276.0.76.3.1.195.10.48` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.21.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine BGA angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `bga_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert |
| `bga_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert |
| `bga_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert |

Annotated template skeleton:

```xml
<!-- Template: BGA angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.48 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine BGA angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.21.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): bga_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert -->
  <approachSiteCode/>
  <!-- Possible target (unproven): bga_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert -->
  <methodCode/>
  <!-- Possible target (unproven): bga_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert -->
  <targetSiteCode/>
</procedure>
```

##### BGA durchgeführt

Contained template: `1.2.276.0.76.10.4059` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.22.0`

Diagnostik Template Blood gas analysis

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Bloodgasanalysis.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Bloodgasanalysis.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Bloodgasanalysis.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Bloodgasanalysis.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: BGA durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4059 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Blood gas analysis -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.22.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="18767-4" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Bloodgasanalysis.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Bloodgasanalysis.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Bloodgasanalysis.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4059"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Bloodgasanalysis.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt

Contained template: `1.2.276.0.76.10.4060` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.23.0`

Diagnostik Template Urinalysis, reagent strip without microscopy

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Urinalysisreagentstripwithoutmicroscopy.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Urinalysisreagentstripwithoutmicroscopy.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Urinalysisreagentstripwithoutmicroscopy.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Urinalysisreagentstripwithoutmicroscopy.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4060 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Urinalysis, reagent strip without microscopy -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.23.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="50556-0" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4060"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### EKG angefordert

Contained template: `1.2.276.0.76.3.1.195.10.49` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.24.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein 12-Kanal-EKG angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ekg_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert |
| `ekg_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert |
| `ekg_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert |

Annotated template skeleton:

```xml
<!-- Template: EKG angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.49 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein 12-Kanal-EKG angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.24.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): ekg_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ekg_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert -->
  <methodCode/>
  <!-- Possible target (unproven): ekg_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert -->
  <targetSiteCode/>
</procedure>
```

##### Zwölfkanal-EKG durchgeführt

Contained template: `1.2.276.0.76.10.4061` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.25.0`

Diagnostik Template 12 lead electrocardiogram

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Twelveleadelectrocardiogram.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Twelveleadelectrocardiogram.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Twelveleadelectrocardiogram.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Twelveleadelectrocardiogram.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Zwölfkanal-EKG durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4061 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template 12 lead electrocardiogram -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.25.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="34534-8" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4061"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### Echokardiographie durchgeführt

Contained template: `1.2.276.0.76.10.4064` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.26.0`

Diagnostik Template Echocardiography

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Echocardiography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Echocardiography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Echocardiography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Echocardiography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Echokardiographie durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4064 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Echocardiography -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.26.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="42148-7" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Echocardiography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Echocardiography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Echocardiography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4064"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Echocardiography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### Sonographie angefordert

Contained template: `1.2.276.0.76.3.1.195.10.50` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.27.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine Sonographie angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `sonographie_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert |
| `sonographie_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert |
| `sonographie_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert |

Annotated template skeleton:

```xml
<!-- Template: Sonographie angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.50 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine Sonographie angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.27.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): sonographie_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert -->
  <approachSiteCode/>
  <!-- Possible target (unproven): sonographie_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert -->
  <methodCode/>
  <!-- Possible target (unproven): sonographie_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert -->
  <targetSiteCode/>
</procedure>
```

##### Sonographie durchgeführt

Contained template: `1.2.276.0.76.10.4062` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.28.0`

Diagnostik Template Diagnostic ultrasonography

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Diagnosticultrasonography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Diagnosticultrasonography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | available; semantics unproven |
| `Diagnosticultrasonography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | available; semantics unproven |
| `Diagnosticultrasonography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | available; semantics unproven |

Annotated template skeleton:

```xml
<!-- Template: Sonographie durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4062 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Diagnostic ultrasonography -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.28.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="25061-3" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Diagnosticultrasonography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <interpretationCode/>
  <!-- Possible target (unproven): Diagnosticultrasonography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Diagnosticultrasonography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4062"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Diagnosticultrasonography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

##### Wildcard Diagnostik

Contained template: `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`; occurrence `0.18.0.7.0.0.29.0`

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `WildcardDiagnostik.code`<br>`hl7:observation/hl7:code` | CD | 1..1 | — | Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.) | — | already claimed by diagnostik.wildcard_diagnostik.code; same occurrence: WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.observation.reference.externalDocument.code`<br>`hl7:observation/hl7:reference/hl7:externalDocument/hl7:code` | CD | 0..1 | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29, 0.18.0.7.0.0.29.0.0.6 |
| `WildcardDiagnostik.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.value_as_CD`<br>`hl7:observation/hl7:value` | CD | 1..1 | — | mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29 |

Annotated template skeleton:

```xml
<!-- Template: Wildcard Diagnostik -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.29.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Possible target (unproven): WildcardDiagnostik.code -->
  <!-- Name/description: Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.) -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <!-- Already claimed by: diagnostik.wildcard_diagnostik.code -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <!-- An explicit occurrence rule is required. -->
  <code/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): WildcardDiagnostik.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): WildcardDiagnostik.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Reference; cardinality: 0..*; conformance: R -->
  <reference typeCode="REFR">
    <!-- Name/description: Link zur Definition im Verzeichnis der Wildcard-Diagnostilk / Wildcard-Therapie -->
    <!-- Datatype: POCD_MT000040.ExternalDocument; cardinality: 1..1; conformance: R -->
    <externalDocument>
      <!-- Possible target (unproven): WildcardDiagnostik.observation.reference.externalDocument.code -->
      <!-- Datatype: CD; cardinality: 0..1; conformance: — -->
      <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
      <!-- An explicit occurrence rule is required. -->
      <code/>
      <!-- Datatype: ED; cardinality: 1..1; conformance: R -->
      <text>
        <!-- Datatype: URL; cardinality: 1..1; conformance: R -->
        <reference/>
      </text>
    </externalDocument>
  </reference>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): WildcardDiagnostik.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.3.1.195.10.89"/>
  <!-- Possible target (unproven): WildcardDiagnostik.value_as_CD -->
  <!-- Name/description: mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <!-- An explicit occurrence rule is required. -->
  <value code="{WildcardDiagnostik.value_as_CD}"/>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion": null
  }
}
```

### Untersuchungsregion

Dataset datapoint: `diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Relevantdiagnostictestsorlaboratorydata.section` | section | `POCD_MT000040.Section` | CONTEXT | CTX[20728] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Röntgen-Thorax angefordert

Contained template: `1.2.276.0.76.3.1.195.10.51` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.4.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Röntgenthorax angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `rontgenthorax_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert; occurrence rule required |
| `rontgenthorax_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert; occurrence rule required |
| `rontgenthorax_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Thorax angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.51 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Röntgenthorax angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): rontgenthorax_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): rontgenthorax_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): rontgenthorax_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: rontgenthorax_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### Röntgen-Thorax durchgeführt

Contained template: `1.2.276.0.76.10.4050` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.5.0`

Diagnostik Template Plain chest X-ray in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Plainchestxray.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt; occurrence rule required |
| `Plainchestxray.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt; occurrence rule required |
| `Plainchestxray.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt; occurrence rule required |
| `Plainchestxray.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt; occurrence rule required |
| `Plainchestxray.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Thorax durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4050 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Plain chest X-ray in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.5.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="30745-4" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Plainchestxray.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Plainchestxray.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Plainchestxray.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Plainchestxray.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4050"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Plainchestxray.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Plainchestxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt

Contained template: `1.2.276.0.76.10.4051` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.6.0`

Diagnostik Template Radiography of spine in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Radiographyofspine.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt; occurrence rule required |
| `Radiographyofspine.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt; occurrence rule required |
| `Radiographyofspine.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt; occurrence rule required |
| `Radiographyofspine.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt; occurrence rule required |
| `Radiographyofspine.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4051 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Radiography of spine in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.6.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="38008-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Radiographyofspine.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Radiographyofspine.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Radiographyofspine.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Radiographyofspine.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4051"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Radiographyofspine.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Radiographyofspine.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Röntgen-Becken durchgeführt

Contained template: `1.2.276.0.76.10.4052` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.7.0`

Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Pelvisxray.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt; occurrence rule required |
| `Pelvisxray.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt; occurrence rule required |
| `Pelvisxray.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt; occurrence rule required |
| `Pelvisxray.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt; occurrence rule required |
| `Pelvisxray.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Becken durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4052 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Pelvis X-ray in Emergency Department in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.7.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="28561-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Pelvisxray.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Pelvisxray.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Pelvisxray.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Pelvisxray.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4052"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Pelvisxray.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Pelvisxray.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Röntgen-Extremitäten durchgeführt

Contained template: `1.2.276.0.76.10.4053` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.8.0`

Diagnostik Template Plain radiography limb structure in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Plainradiographylimbstructure.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Plainradiographylimbstructure.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Plainradiographylimbstructure.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | occurrence rule required |
| `Plainradiographylimbstructure.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Plainradiographylimbstructure.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Röntgen-Extremitäten durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4053 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Plain radiography limb structure in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.8.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="37637-6" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Plainradiographylimbstructure.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Plainradiographylimbstructure.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Plainradiographylimbstructure.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Plainradiographylimbstructure.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4053"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Plainradiographylimbstructure.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Röntgen o.n.A. durchgeführt

Contained template: `1.2.276.0.76.10.4054` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.9.0`

Diagnostik Template Plain radiography in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Plainradiography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Plainradiography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Plainradiography.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | occurrence rule required |
| `Plainradiography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Plainradiography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Röntgen o.n.A. durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4054 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Plain radiography in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.9.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="43468-8" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Plainradiography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Plainradiography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Plainradiography.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Plainradiography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4054"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Plainradiography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### CT Kopf durchgeführt

Contained template: `1.2.276.0.76.10.4055` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.10.0`

Diagnostik Template Computed tomography of entire head in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Computedtomographyofentirehead.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt; occurrence rule required |
| `Computedtomographyofentirehead.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt; occurrence rule required |
| `Computedtomographyofentirehead.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt; occurrence rule required |
| `Computedtomographyofentirehead.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt; occurrence rule required |
| `Computedtomographyofentirehead.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | same occurrence: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT Kopf durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4055 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Computed tomography of entire head in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.10.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="24725-4" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Computedtomographyofentirehead.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Computedtomographyofentirehead.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Computedtomographyofentirehead.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Computedtomographyofentirehead.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4055"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Computedtomographyofentirehead.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- Same template occurrence already carries: Computedtomographyofentirehead.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### CT Ganzkörper durchgeführt

Contained template: `1.2.276.0.76.10.4056` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.11.0`

Diagnostik Template Computed tomography scan - whole body in Emergency Department

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Computedtomographyscanwholebody.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Computedtomographyscanwholebody.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Computedtomographyscanwholebody.observation.participant.awarenessCode`<br>`hl7:observation/hl7:participant/hl7:awarenessCode` | CE | 0..1 | — | — | — | occurrence rule required |
| `Computedtomographyscanwholebody.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Computedtomographyscanwholebody.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT Ganzkörper durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4056 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Computed tomography scan - whole body in Emergency Department -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.11.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="46305-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Participant2; cardinality: 1..1; conformance: — -->
  <participant typeCode="LOC">
    <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.participant.awarenessCode -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- An explicit occurrence rule is required. -->
    <awarenessCode/>
    <!-- Datatype: POCD_MT000040.ParticipantRole; cardinality: 1..1; conformance: — -->
    <participantRole classCode="SDLOC">
      <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
      <code code="ER" codeSystem="2.16.840.1.113883.5.111"/>
    </participantRole>
  </participant>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4056"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Computedtomographyscanwholebody.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### CT Abdomen durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.59` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.12.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT des Abdomens durchgführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_abdomen_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt; occurrence rule required |
| `ct_abdomen_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt; occurrence rule required |
| `ct_abdomen_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT Abdomen durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.59 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT des Abdomens durchgführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_abdomen_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_abdomen_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): ct_abdomen_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_abdomen_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### CT Extremitäten durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.60` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.13.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Extremitäten durchgeführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_extremitaten_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `ct_extremitaten_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `ct_extremitaten_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT Extremitäten durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.60 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Extremitäten durchgeführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.13.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_extremitaten_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_extremitaten_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): ct_extremitaten_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### CT HWS durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.57` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.14.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Halswirbelsäule durchgeführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_hws_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt; occurrence rule required |
| `ct_hws_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt; occurrence rule required |
| `ct_hws_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT HWS durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.57 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein selektives CT der Halswirbelsäule durchgeführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.14.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_hws_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_hws_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): ct_hws_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_hws_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### CT Thorax durchgeführt

Contained template: `1.2.276.0.76.3.1.195.10.58` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.15.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein CT des Thorax durchgeführt?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct_thorax_durchgefuhrt.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt; occurrence rule required |
| `ct_thorax_durchgefuhrt.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt; occurrence rule required |
| `ct_thorax_durchgefuhrt.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT Thorax durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.58 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein CT des Thorax durchgeführt? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.15.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="EVN">
  <!-- Possible target (unproven): ct_thorax_durchgefuhrt.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ct_thorax_durchgefuhrt.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): ct_thorax_durchgefuhrt.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct_thorax_durchgefuhrt.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### CT o.n.A. durchgeführt

Contained template: `1.2.276.0.76.10.4063` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.16.0`

Diagnostik Template Computerized axial tomography

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Computerizedaxialtomography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Computerizedaxialtomography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Computerizedaxialtomography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Computerizedaxialtomography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT o.n.A. durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4063 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Computerized axial tomography -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.16.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="25045-6" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Computerizedaxialtomography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Computerizedaxialtomography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Computerizedaxialtomography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4063"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Computerizedaxialtomography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### MRT durchgeführt

Contained template: `1.2.276.0.76.10.4058` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.17.0`

Diagnostik Template Magnetic resonance imaging

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Magneticresonanceimaging.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Magneticresonanceimaging.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Magneticresonanceimaging.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Magneticresonanceimaging.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: MRT durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4058 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Magnetic resonance imaging -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.17.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="25056-3" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Magneticresonanceimaging.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Magneticresonanceimaging.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Magneticresonanceimaging.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4058"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Magneticresonanceimaging.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### CT-/MR-/DS-Angiographie

Contained template: `1.2.276.0.76.3.1.195.10.91` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.18.0`

Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ct-mr-ds-angiographie.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie; occurrence rule required |
| `ct-mr-ds-angiographie.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie; occurrence rule required |
| `ct-mr-ds-angiographie.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie; occurrence rule required |
| `ct-mr-ds-angiographie.value`<br>`hl7:observation/hl7:value` | CV | 1..1 | R | — | CT-/MR-/DS-Angiographie (1.2.276.0.76.3.1.195.11.24@2024-07-22T16:51:10) | already claimed by diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: CT-/MR-/DS-Angiographie -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.91 @ 2024-05-24T00:00:00 -->
<!-- Description: Wurde und wenn wann wurde ein CT-/MR-/DS-Angiographie im Vergleich zur nativen Bildgebung durchgeführt worden? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.18.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: R -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Possible target (unproven): ct-mr-ds-angiographie.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): ct-mr-ds-angiographie.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): ct-mr-ds-angiographie.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ct-mr-ds-angiographie.value ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.3.1.195.10.91"/>
  <!-- Possible target (unproven): ct-mr-ds-angiographie.value -->
  <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: CT-/MR-/DS-Angiographie (1.2.276.0.76.3.1.195.11.24@2024-07-22T16:51:10) -->
  <!-- Already claimed by: diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Laboruntersuchung durchgeführt

Contained template: `1.2.276.0.76.10.4057` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.19.0`

Diagnostik Template Laboratory test

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Laboratorytest.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Laboratorytest.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Laboratorytest.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Laboratorytest.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Laboruntersuchung durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4057 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Laboratory test -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.19.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="26436-6" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Laboratorytest.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Laboratorytest.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Laboratorytest.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4057"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Laboratorytest.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Mikrobiologie angefordert

Contained template: `1.2.276.0.76.3.1.195.10.47` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.20.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Mikrobiologische Untersuchung angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `mikrobiologie_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert; occurrence rule required |
| `mikrobiologie_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert; occurrence rule required |
| `mikrobiologie_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Mikrobiologie angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.47 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein Mikrobiologische Untersuchung angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.20.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): mikrobiologie_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): mikrobiologie_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): mikrobiologie_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: mikrobiologie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### BGA angefordert

Contained template: `1.2.276.0.76.3.1.195.10.48` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.21.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine BGA angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `bga_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert; occurrence rule required |
| `bga_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert; occurrence rule required |
| `bga_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: BGA angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.48 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine BGA angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.21.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): bga_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): bga_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): bga_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: bga_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### BGA durchgeführt

Contained template: `1.2.276.0.76.10.4059` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.22.0`

Diagnostik Template Blood gas analysis

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Bloodgasanalysis.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Bloodgasanalysis.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Bloodgasanalysis.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Bloodgasanalysis.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: BGA durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4059 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Blood gas analysis -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.22.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="18767-4" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Bloodgasanalysis.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Bloodgasanalysis.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Bloodgasanalysis.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4059"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Bloodgasanalysis.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt

Contained template: `1.2.276.0.76.10.4060` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.23.0`

Diagnostik Template Urinalysis, reagent strip without microscopy

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Urinalysisreagentstripwithoutmicroscopy.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Urinalysisreagentstripwithoutmicroscopy.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Urinalysisreagentstripwithoutmicroscopy.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Urinalysisreagentstripwithoutmicroscopy.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4060 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Urinalysis, reagent strip without microscopy -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.23.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="50556-0" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4060"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Urinalysisreagentstripwithoutmicroscopy.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### EKG angefordert

Contained template: `1.2.276.0.76.3.1.195.10.49` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.24.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein 12-Kanal-EKG angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `ekg_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert; occurrence rule required |
| `ekg_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert; occurrence rule required |
| `ekg_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: EKG angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.49 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde ein 12-Kanal-EKG angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.24.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): ekg_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): ekg_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): ekg_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: ekg_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### Zwölfkanal-EKG durchgeführt

Contained template: `1.2.276.0.76.10.4061` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.25.0`

Diagnostik Template 12 lead electrocardiogram

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Twelveleadelectrocardiogram.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Twelveleadelectrocardiogram.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Twelveleadelectrocardiogram.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Twelveleadelectrocardiogram.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Zwölfkanal-EKG durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4061 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template 12 lead electrocardiogram -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.25.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="34534-8" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4061"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Twelveleadelectrocardiogram.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Echokardiographie durchgeführt

Contained template: `1.2.276.0.76.10.4064` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.26.0`

Diagnostik Template Echocardiography

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Echocardiography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Echocardiography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Echocardiography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Echocardiography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Echokardiographie durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4064 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Echocardiography -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.26.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="42148-7" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Echocardiography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Echocardiography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Echocardiography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4064"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Echocardiography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Sonographie angefordert

Contained template: `1.2.276.0.76.3.1.195.10.50` @ `2024-05-24T00:00:00`; occurrence `0.18.0.7.0.0.27.0`

Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine Sonographie angefordert?

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `sonographie_angefordert.procedure.approachSiteCode`<br>`hl7:procedure/hl7:approachSiteCode` | CD | 0..* | — | — | — | same occurrence: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert; occurrence rule required |
| `sonographie_angefordert.procedure.methodCode`<br>`hl7:procedure/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert; occurrence rule required |
| `sonographie_angefordert.procedure.targetSiteCode`<br>`hl7:procedure/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Sonographie angefordert -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.50 @ 2024-05-24T00:00:00 -->
<!-- Description: Abgeleitete Informationen über Diagnostik zur Weitergabe - Wurde eine Sonographie angefordert? -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.27.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Procedure; cardinality: 1..1; conformance: R -->
<procedure classCode="PROC" moodCode="RQO">
  <!-- Possible target (unproven): sonographie_angefordert.procedure.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <approachSiteCode/>
  <!-- Possible target (unproven): sonographie_angefordert.procedure.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Possible target (unproven): sonographie_angefordert.procedure.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: sonographie_angefordert.negationInd ← diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
</procedure>
```

##### Sonographie durchgeführt

Contained template: `1.2.276.0.76.10.4062` @ `2015-09-18T00:00:00`; occurrence `0.18.0.7.0.0.28.0`

Diagnostik Template Diagnostic ultrasonography

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Diagnosticultrasonography.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Diagnosticultrasonography.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | occurrence rule required |
| `Diagnosticultrasonography.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | occurrence rule required |
| `Diagnosticultrasonography.value`<br>`hl7:observation/hl7:value` | CE | 1..1 | R | Befund | Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Sonographie durchgeführt -->
<!-- OID/revision: 1.2.276.0.76.10.4062 @ 2015-09-18T00:00:00 -->
<!-- Description: Diagnostik Template Diagnostic ultrasonography -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.28.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="25061-3" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Zeitpunkt der Untersuchung -->
  <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
  <effectiveTime/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Diagnosticultrasonography.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <interpretationCode/>
  <!-- Possible target (unproven): Diagnosticultrasonography.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Diagnosticultrasonography.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4062"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Diagnosticultrasonography.value -->
  <!-- Name/description: Befund -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Finding situation (1.2.276.0.76.11.51@2015-11-17T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <value/>
</observation>
```

##### Wildcard Diagnostik

Contained template: `1.2.276.0.76.3.1.195.10.89` @ `2024-08-18T21:50:30`; occurrence `0.18.0.7.0.0.29.0`

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `WildcardDiagnostik.code`<br>`hl7:observation/hl7:code` | CD | 1..1 | — | Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.) | — | already claimed by diagnostik.wildcard_diagnostik.code; same occurrence: WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.observation.reference.externalDocument.code`<br>`hl7:observation/hl7:reference/hl7:externalDocument/hl7:code` | CD | 0..1 | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; occurrence rule required; repeatable ancestors: 0.18.0.7.0.0.29, 0.18.0.7.0.0.29.0.0.6 |
| `WildcardDiagnostik.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; repeatable ancestors: 0.18.0.7.0.0.29 |
| `WildcardDiagnostik.value_as_CD`<br>`hl7:observation/hl7:value` | CD | 1..1 | — | mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik | — | same occurrence: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert; repeatable ancestors: 0.18.0.7.0.0.29 |

Annotated template skeleton:

```xml
<!-- Template: Wildcard Diagnostik -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.89 @ 2024-08-18T21:50:30 -->
<!-- Contained-template occurrence: 0.18.0.7.0.0.29.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Possible target (unproven): WildcardDiagnostik.code -->
  <!-- Name/description: Code laut Definition der Wildcard-Diagnostik (Link zur Definition, s.u.) -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <!-- Already claimed by: diagnostik.wildcard_diagnostik.code -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <code/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): WildcardDiagnostik.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <interpretationCode/>
  <!-- Possible target (unproven): WildcardDiagnostik.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <methodCode/>
  <!-- Datatype: POCD_MT000040.Reference; cardinality: 0..*; conformance: R -->
  <reference typeCode="REFR">
    <!-- Name/description: Link zur Definition im Verzeichnis der Wildcard-Diagnostilk / Wildcard-Therapie -->
    <!-- Datatype: POCD_MT000040.ExternalDocument; cardinality: 1..1; conformance: R -->
    <externalDocument>
      <!-- Possible target (unproven): WildcardDiagnostik.observation.reference.externalDocument.code -->
      <!-- Datatype: CD; cardinality: 0..1; conformance: — -->
      <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
      <!-- An explicit occurrence rule is required. -->
      <code/>
      <!-- Datatype: ED; cardinality: 1..1; conformance: R -->
      <text>
        <!-- Datatype: URL; cardinality: 1..1; conformance: R -->
        <reference/>
      </text>
    </externalDocument>
  </reference>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): WildcardDiagnostik.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.3.1.195.10.89"/>
  <!-- Possible target (unproven): WildcardDiagnostik.value_as_CD -->
  <!-- Name/description: mögliche Ausprägung / Wert laut Definition der Wildcard-Diagnostik -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: WildcardDiagnostik.code ← diagnostik.wildcard_diagnostik.code; WildcardDiagnostik.effectiveTime_not_xsi_type ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt; WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width ← diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum; WildcardDiagnostik.observation.reference.externalDocument.text.reference ← diagnostik.wildcard_diagnostik.definitorischer_link; WildcardDiagnostik.value_as_ST ← diagnostik.wildcard_diagnostik.wert -->
  <value code="{WildcardDiagnostik.value_as_CD}"/>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion": null
  }
}
```

### Freitext Abschlussdiagnose

Dataset datapoint: `abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.originalText` | Abschlussdiagnose (Freitext) | `ST` | WEAK | relationship:SPEC → TA_VERSION | evidence only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Abschlussdiagnosen (Basis)

Contained template: `1.2.276.0.76.10.3055` @ `2016-06-22T00:00:00`; occurrence `0.18.0.11.0`

Abschlussdiagnosen Section

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Eddiagnosis.section.ID`<br>`hl7:section/@ID` | ST | 0..1 | — | — | — | occurrence rule required |
| `Eddiagnosis.text`<br>`hl7:section/hl7:text` | SD.TEXT | 1..1 | — | — | — | occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Abschlussdiagnosen (Basis) -->
<!-- OID/revision: 1.2.276.0.76.10.3055 @ 2016-06-22T00:00:00 -->
<!-- Description: Abschlussdiagnosen Section -->
<!-- Contained-template occurrence: 0.18.0.11.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Section; cardinality: 1..1; conformance: — -->
<!-- Possible attribute target (unproven): Eddiagnosis.section.ID -->
<!-- Datatype: ST; cardinality: 0..1; conformance: — -->
<!-- An explicit occurrence rule is required. -->
<section classCode="DOCSECT" ID="{Eddiagnosis.section.ID}">
  <!-- Datatype: CD; cardinality: 1..1; conformance: — -->
  <code code="11301-9" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Name/description: Sammelkontainer für Abschlussdiagnosen -->
  <!-- Datatype: POCD_MT000040.Entry; cardinality: 0..1; conformance: R -->
  <entry typeCode="COMP" contextConductionInd="true"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.3055"/>
  <!-- Possible target (unproven): Eddiagnosis.text -->
  <!-- Datatype: SD.TEXT; cardinality: 1..1; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <text>
    {Eddiagnosis.text}
  </text>
  <!-- Datatype: ST; cardinality: 1..1; conformance: — -->
  <title>
    Abschlussdiagnosen
  </title>
</section>
```

##### Problem Concern Act (Abschlussdiagnosen)

Contained template: `1.2.276.0.76.10.4048` @ `2016-06-22T00:00:00`; occurrence `0.18.0.11.0.0.4.0`

Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnosen ggf. mit ICD10-Kodes

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Problemconcernacteddiagnoses.act.text`<br>`hl7:act/hl7:text` | ED | 0..1 | — | — | — | same occurrence: Problemconcernacteddiagnoses.sequenceNumber ← abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer; occurrence rule required |

Annotated template skeleton:

```xml
<!-- Template: Problem Concern Act (Abschlussdiagnosen) -->
<!-- OID/revision: 1.2.276.0.76.10.4048 @ 2016-06-22T00:00:00 -->
<!-- Description: Sammelkontainer für Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnosen ggf. mit ICD10-Kodes -->
<!-- Contained-template occurrence: 0.18.0.11.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Act; cardinality: 1..1; conformance: — -->
<act classCode="ACT" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="CONC" codeSystem="2.16.840.1.113883.5.6"/>
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <effectiveTime>
    <!-- Datatype: IVXB_TS; cardinality: 1..1; conformance: R -->
    <low/>
  </effectiveTime>
  <!-- Name/description: Abschlussdiagnose, als Text und/oder ICD10-kodiert -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 1..*; conformance: — -->
  <entryRelationship typeCode="SUBJ"/>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <!-- Bound ValueSet: ActStatus (2.16.840.1.113883.1.11.15933@2014-03-26T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4048"/>
  <!-- Possible target (unproven): Problemconcernacteddiagnoses.act.text -->
  <!-- Datatype: ED; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: Problemconcernacteddiagnoses.sequenceNumber ← abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer -->
  <!-- An explicit occurrence rule is required. -->
  <text>
    {Problemconcernacteddiagnoses.act.text}
  </text>
</act>
```

##### Problem Observation (Abschlussdiagnose)

Contained template: `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`; occurrence `0.18.0.11.0.0.4.0.0.5.1`

Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.observation.derivationExpr`<br>`hl7:observation/hl7:derivationExpr` | ST | 0..1 | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.text`<br>`hl7:observation/hl7:text` | ED | 0..1 | — | Textform, enthält hier lediglich reference in den Text der Section | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.originalText`<br>`hl7:observation/hl7:value/hl7:originalText` | ST | 0..1 | R | Abschlussdiagnose (Freitext) | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Problem Observation (Abschlussdiagnose) -->
<!-- OID/revision: 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00 -->
<!-- Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode -->
<!-- Contained-template occurrence: 0.18.0.11.0.0.4.0.0.5.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.derivationExpr -->
  <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <derivationExpr>
    {Problemobservationeddiagnosis.observation.derivationExpr}
  </derivationExpr>
  <!-- Name/description: effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt. Beispiel: Für Gesundheitsdienstleister, die einen Patienten heute in der Klinik sehen anamenstisch einen Herzinfarkt erheben, der vor fünf Jahren stattgefunden hat, ist effectiveTime: vor fünf Jahren. Die effectiveTime hier ist die definitive Angabe, ob die zugrunde liegende Erkrankung behoben ist. effectiveTime.low ist der Beginn des Problems für den Patienten. Wenn das Problem noch nicht gelöst ist, wird effectiveTime.high nicht gesetzt. Wenn bekannt ist, dass das Problem gelöst werden kann, dann ist effectiveTime.high vorhanden. Wenn der genaue Zeitpunkt der Lösung des Problems nicht bekannt ist, dann ist effectiveTime.high vorhanden und auf nullFlavor "UNK" gesetzt. -->
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <effectiveTime>
    <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
    <low/>
  </effectiveTime>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4049"/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.text -->
  <!-- Name/description: Textform, enthält hier lediglich reference in den Text der Section -->
  <!-- Datatype: ED; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <text>
    {Problemobservationeddiagnosis.text}
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Name/description: ICD-10 Kode -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <value>
    <!-- Possible target (unproven): Problemobservationeddiagnosis.originalText -->
    <!-- Name/description: Abschlussdiagnose (Freitext) -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: R -->
    <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
    <originalText>
      {Problemobservationeddiagnosis.originalText}
    </originalText>
    <qualifier>
      <@code='FSTAT']>
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <name code="FSTAT" codeSystem="1.2.276.0.76.3.1.195.5.72"/>
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <!-- Bound ValueSet: Befundstatus Verdacht/Gesichert (1.2.276.0.76.11.73@2016-08-02T00:00:00) -->
        <value/>
      </@code='FSTAT']>
    </qualifier>
  </value>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose": null
  }
}
```

### ICD-10

Dataset datapoint: `abschlussdiagnosen.abschlussdiagnose.icd10`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.observation.value` | ICD-10 Kode | `CD` | MEDIUM | relationship:SPEC → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | evidence only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Diagnosesicherheit

Contained template: `1.2.276.0.76.10.90027` @ `2017-03-02T00:00:00`; occurrence `document`

Qualifier für Diagnosesicherheit (nach §295 SGB V), zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Certainty.value`<br>`hl7:qualifier[hl7:name/@code='8']/hl7:value` | CV | 1..1 | R | — | S_ICD_DIAGNOSESICHERHEIT (1.2.276.0.76.11.121@2005-08-01T00:00:00) | already claimed by abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Diagnosesicherheit -->
<!-- OID/revision: 1.2.276.0.76.10.90027 @ 2017-03-02T00:00:00 -->
<!-- Description: Qualifier für Diagnosesicherheit (nach §295 SGB V), zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose) -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<qualifier>
  <@code='8']>
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <name code="8" codeSystem="2.16.840.1.113883.3.7.1.0"/>
    <!-- Possible target (unproven): Certainty.value -->
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <!-- Bound ValueSet: S_ICD_DIAGNOSESICHERHEIT (1.2.276.0.76.11.121@2005-08-01T00:00:00) -->
    <!-- Already claimed by: abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
    <value/>
  </@code='8']>
</qualifier>
```

##### Lateralität

Contained template: `1.2.276.0.76.10.90026` @ `2017-02-13T00:00:00`; occurrence `document`

Qualifier für Lateralität, zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Laterality.value`<br>`hl7:qualifier[hl7:name/@code='20228-3']/hl7:value` | CV | 1..1 | R | — | Lateralität (1.2.276.0.76.11.412@2017-02-08T00:00:00) | already claimed by abschlussdiagnosen.abschlussdiagnose.lateralitat; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Lateralität -->
<!-- OID/revision: 1.2.276.0.76.10.90026 @ 2017-02-13T00:00:00 -->
<!-- Description: Qualifier für Lateralität, zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose) -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<qualifier>
  <@code='20228-3']>
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <name code="20228-3" codeSystem="2.16.840.1.113883.6.1"/>
    <!-- Possible target (unproven): Laterality.value -->
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <!-- Bound ValueSet: Lateralität (1.2.276.0.76.11.412@2017-02-08T00:00:00) -->
    <!-- Already claimed by: abschlussdiagnosen.abschlussdiagnose.lateralitat -->
    <value/>
  </@code='20228-3']>
</qualifier>
```

##### Problem Observation (Abschlussdiagnose)

Contained template: `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`; occurrence `0.18.0.11.0.0.4.0.0.5.1`

Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.code`<br>`hl7:observation/hl7:code` | CE | 1..1 | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.value`<br>`hl7:observation/hl7:value` | CD | 1..1 | R | ICD-10 Kode | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value`<br>`hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value` | CV | 1..1 | R | — | Befundstatus Verdacht/Gesichert (1.2.276.0.76.11.73@2016-08-02T00:00:00) | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Problem Observation (Abschlussdiagnose) -->
<!-- OID/revision: 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00 -->
<!-- Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode -->
<!-- Contained-template occurrence: 0.18.0.11.0.0.4.0.0.5.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Possible target (unproven): Problemobservationeddiagnosis.code -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <code/>
  <!-- Name/description: effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt. Beispiel: Für Gesundheitsdienstleister, die einen Patienten heute in der Klinik sehen anamenstisch einen Herzinfarkt erheben, der vor fünf Jahren stattgefunden hat, ist effectiveTime: vor fünf Jahren. Die effectiveTime hier ist die definitive Angabe, ob die zugrunde liegende Erkrankung behoben ist. effectiveTime.low ist der Beginn des Problems für den Patienten. Wenn das Problem noch nicht gelöst ist, wird effectiveTime.high nicht gesetzt. Wenn bekannt ist, dass das Problem gelöst werden kann, dann ist effectiveTime.high vorhanden. Wenn der genaue Zeitpunkt der Lösung des Problems nicht bekannt ist, dann ist effectiveTime.high vorhanden und auf nullFlavor "UNK" gesetzt. -->
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <effectiveTime>
    <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
    <low/>
  </effectiveTime>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <interpretationCode/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4049"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.value -->
  <!-- Name/description: ICD-10 Kode -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <value>
    <qualifier>
      <@code='FSTAT']>
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <name code="FSTAT" codeSystem="1.2.276.0.76.3.1.195.5.72"/>
        <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value -->
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <!-- Bound ValueSet: Befundstatus Verdacht/Gesichert (1.2.276.0.76.11.73@2016-08-02T00:00:00) -->
        <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
        <value/>
      </@code='FSTAT']>
    </qualifier>
  </value>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "abschlussdiagnosen.abschlussdiagnose.icd10": null
  }
}
```

### ICD-10 Sekundärdiagnose

Dataset datapoint: `abschlussdiagnosen.abschlussdiagnose.icd10_sekundardiagnose`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.observation.value` | ICD-10 Kode | `CD` | MEDIUM | relationship:ADAPT → relationship:SPEC → TA_VERSION → SCHEMATRON_CONSTRAINT(required) | evidence only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Diagnosesicherheit

Contained template: `1.2.276.0.76.10.90027` @ `2017-03-02T00:00:00`; occurrence `document`

Qualifier für Diagnosesicherheit (nach §295 SGB V), zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Certainty.value`<br>`hl7:qualifier[hl7:name/@code='8']/hl7:value` | CV | 1..1 | R | — | S_ICD_DIAGNOSESICHERHEIT (1.2.276.0.76.11.121@2005-08-01T00:00:00) | already claimed by abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Diagnosesicherheit -->
<!-- OID/revision: 1.2.276.0.76.10.90027 @ 2017-03-02T00:00:00 -->
<!-- Description: Qualifier für Diagnosesicherheit (nach §295 SGB V), zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose) -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<qualifier>
  <@code='8']>
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <name code="8" codeSystem="2.16.840.1.113883.3.7.1.0"/>
    <!-- Possible target (unproven): Certainty.value -->
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <!-- Bound ValueSet: S_ICD_DIAGNOSESICHERHEIT (1.2.276.0.76.11.121@2005-08-01T00:00:00) -->
    <!-- Already claimed by: abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
    <value/>
  </@code='8']>
</qualifier>
```

##### Lateralität

Contained template: `1.2.276.0.76.10.90026` @ `2017-02-13T00:00:00`; occurrence `document`

Qualifier für Lateralität, zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Laterality.value`<br>`hl7:qualifier[hl7:name/@code='20228-3']/hl7:value` | CV | 1..1 | R | — | Lateralität (1.2.276.0.76.11.412@2017-02-08T00:00:00) | already claimed by abschlussdiagnosen.abschlussdiagnose.lateralitat; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Lateralität -->
<!-- OID/revision: 1.2.276.0.76.10.90026 @ 2017-02-13T00:00:00 -->
<!-- Description: Qualifier für Lateralität, zu verwenden als Qualifier-Kind-Element des value-Elements des Problems (Diagnose) -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<qualifier>
  <@code='20228-3']>
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <name code="20228-3" codeSystem="2.16.840.1.113883.6.1"/>
    <!-- Possible target (unproven): Laterality.value -->
    <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
    <!-- Bound ValueSet: Lateralität (1.2.276.0.76.11.412@2017-02-08T00:00:00) -->
    <!-- Already claimed by: abschlussdiagnosen.abschlussdiagnose.lateralitat -->
    <value/>
  </@code='20228-3']>
</qualifier>
```

##### Problem Observation (Abschlussdiagnose)

Contained template: `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`; occurrence `0.18.0.11.0.0.4.0.0.5.1`

Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.code`<br>`hl7:observation/hl7:code` | CE | 1..1 | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.interpretationCode`<br>`hl7:observation/hl7:interpretationCode` | CE | 0..* | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.methodCode`<br>`hl7:observation/hl7:methodCode` | CE | 0..* | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.targetSiteCode`<br>`hl7:observation/hl7:targetSiteCode` | CD | 0..* | — | — | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.value`<br>`hl7:observation/hl7:value` | CD | 1..1 | R | ICD-10 Kode | — | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |
| `Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value`<br>`hl7:observation/hl7:value/hl7:qualifier[hl7:name/@code='FSTAT']/hl7:value` | CV | 1..1 | R | — | Befundstatus Verdacht/Gesichert (1.2.276.0.76.11.73@2016-08-02T00:00:00) | same occurrence: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen; repeatable ancestors: 0.18.0.11.0.0.4.0.0.5 |

Annotated template skeleton:

```xml
<!-- Template: Problem Observation (Abschlussdiagnose) -->
<!-- OID/revision: 1.2.276.0.76.10.4049 @ 2017-02-13T00:00:00 -->
<!-- Description: Beschwerden, Symptome, Diagnose, Probleme etc., hier: Abschlussdiagnose ggf. mit ICD10-Kode -->
<!-- Contained-template occurrence: 0.18.0.11.0.0.4.0.0.5.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Possible target (unproven): Problemobservationeddiagnosis.code -->
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <code/>
  <!-- Name/description: effectiveTime wird auch als "biologisch relevante Zeit" bezeichnet und ist der Zeitpunkt oder Zeitraum, für den die Beobachtung für den Patienten gilt. Beispiel: Für Gesundheitsdienstleister, die einen Patienten heute in der Klinik sehen anamenstisch einen Herzinfarkt erheben, der vor fünf Jahren stattgefunden hat, ist effectiveTime: vor fünf Jahren. Die effectiveTime hier ist die definitive Angabe, ob die zugrunde liegende Erkrankung behoben ist. effectiveTime.low ist der Beginn des Problems für den Patienten. Wenn das Problem noch nicht gelöst ist, wird effectiveTime.high nicht gesetzt. Wenn bekannt ist, dass das Problem gelöst werden kann, dann ist effectiveTime.high vorhanden. Wenn der genaue Zeitpunkt der Lösung des Problems nicht bekannt ist, dann ist effectiveTime.high vorhanden und auf nullFlavor "UNK" gesetzt. -->
  <!-- Datatype: IVL_TS; cardinality: 1..1; conformance: R -->
  <effectiveTime>
    <!-- Datatype: TS; cardinality: 1..1; conformance: R -->
    <low/>
  </effectiveTime>
  <!-- Datatype: II; cardinality: 1..*; conformance: — -->
  <id/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.interpretationCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <interpretationCode/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.methodCode -->
  <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <methodCode/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.targetSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <targetSiteCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4049"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.value -->
  <!-- Name/description: ICD-10 Kode -->
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
  <value>
    <qualifier>
      <@code='FSTAT']>
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <name code="FSTAT" codeSystem="1.2.276.0.76.3.1.195.5.72"/>
        <!-- Possible target (unproven): Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value -->
        <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
        <!-- Bound ValueSet: Befundstatus Verdacht/Gesichert (1.2.276.0.76.11.73@2016-08-02T00:00:00) -->
        <!-- Same template occurrence already carries: Problemobservationeddiagnosis.negationInd ← abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen -->
        <value/>
      </@code='FSTAT']>
    </qualifier>
  </value>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "abschlussdiagnosen.abschlussdiagnose.icd10_sekundardiagnose": null
  }
}
```

### Typ Verlegung

Dataset datapoint: `administrative_verlegungsentlassungsinformationen.typ_verlegung`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

**Gap:** `terminology:closure`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Referralto.act.code` | code | `CE` | MEDIUM | relationship:SPEC → TA → SCHEMATRON_CONSTRAINT(required) | evidence only |

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "administrative_verlegungsentlassungsinformationen.typ_verlegung": null
  }
}
```

### Zeitpunkt Beginn patientenbezogene Dokumentation

Dataset datapoint: `dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDAEncompassingEncounter.low` | Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute | `TS.DATE.MIN` | WEAK | relationship:ADAPT → relationship:SPEC → inherit^-1 → TA | evidence only |

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation": null
  }
}
```

### Arzneimittel-Name

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[487] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname": null
  }
}
```

### Arzneimittel-Code

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[487] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode": null
  }
}
```

### Darreichungsform

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[483] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform": null
  }
}
```

### Wirkstoff-Name

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname": null
  }
}
```

### Wirkstoff-Code

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode": null
  }
}
```

### Arzneilich wirksamer Bestandteil?

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.substanceAdministration.negationInd`<br>`hl7:substanceAdministration/@negationInd` | BL | 0..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/@inversionInd` | BL | 0..1 | C | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/@negationInd` | BL | 0..1 | C | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:seperatableInd` | BL | 0..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<!-- Possible attribute target (unproven): Medikation.substanceAdministration.negationInd -->
<!-- Datatype: BL; cardinality: 0..1; conformance: — -->
<!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
<substanceAdministration classCode="SBADM" negationInd="{Medikation.substanceAdministration.negationInd}">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <!-- Possible attribute target (unproven): Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd -->
  <!-- Datatype: BL; cardinality: 0..1; conformance: C -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <!-- An explicit occurrence rule is required. -->
  <!-- Possible attribute target (unproven): Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd -->
  <!-- Datatype: BL; cardinality: 0..1; conformance: C -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <!-- An explicit occurrence rule is required. -->
  <entryRelationship typeCode="COMP" inversionInd="{Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd}" negationInd="{Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd}">
    <!-- Possible target (unproven): Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd -->
    <!-- Datatype: BL; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
    <!-- An explicit occurrence rule is required. -->
    <seperatableInd value="{Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd}"/>
  </entryRelationship>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq": null
  }
}
```

### Wirkstärke

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[484] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke": null
  }
}
```

### Chargennummer

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.chargennummer`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[483] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.medikament.chargennummer": null
  }
}
```

### (Start)zeitpunkt der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`

**Why review is required:** The best-supported CDA target is shared with another dataset field. An occurrence-alignment, repeat-by-discriminator, or coalescing rule is required before it is executable.

**Gap:** `semantic:shared_target`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `UVSubordinateadministration.effectiveTime_value_or_nullFlavor` | This required element describes the frequency of intakes. If not known it shall be valued with the… | `TS` | STRONG | CTX[496] → ARTDECOR_CHOICE(atomic) | rule required |

**Action:** Define the required repetition or merge rule.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung": null
  }
}
```

### Stoppzeitpunkt der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`

**Why review is required:** The best-supported CDA target is shared with another dataset field. An occurrence-alignment, repeat-by-discriminator, or coalescing rule is required before it is executable.

**Gap:** `semantic:shared_target`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `UVSubordinateadministration.effectiveTime_value_or_nullFlavor` | This required element describes the frequency of intakes. If not known it shall be valued with the… | `TS` | STRONG | CTX[496] → ARTDECOR_CHOICE(atomic) | rule required |

**Action:** Define the required repetition or merge rule.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung": null
  }
}
```

### Freitext

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.freitext`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.freitext": null
  }
}
```

### Zusätzliche Hinweise

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise": null
  }
}
```

### Anweisungen zur Einnahme

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme": null
  }
}
```

### Zeitpunkt

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`

**Why review is required:** The best-supported CDA target is shared with another dataset field. An occurrence-alignment, repeat-by-discriminator, or coalescing rule is required before it is executable.

**Gap:** `semantic:shared_target`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `UVSubordinateadministration.effectiveTime_value_or_nullFlavor` | This required element describes the frequency of intakes. If not known it shall be valued with the… | `TS` | STRONG | CTX[525] → ARTDECOR_CHOICE(atomic) | rule required |

**Action:** Define the required repetition or merge rule.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt": null
  }
}
```

### Ereignis

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.ereignis`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[527] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.ereignis": null
  }
}
```

### Offset

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset`

**Why review is required:** The candidate is a child of a non-null compound CDA datatype, which also requires `UVSubordinateadministration.event`. No source mapping currently supplies that companion.

**Gap:** `semantic:missing_companion`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.effectiveTime_xsi_type_EIVL_TS.offset` | offset | `IVL_PQ` | STRONG | CTX[527] → FORMAL_ORIGIN_LABEL(Offset zum Ereignis, z. B. 30 Minuten vorher) → CDA_DESCENDANT | required companion missing |

**Action:** Map the required compound-datatype companion `UVSubordinateadministration.event` for the same occurrence, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset": null
  }
}
```

### Einnahme bei Bedarf

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.substanceAdministration.negationInd`<br>`hl7:substanceAdministration/@negationInd` | BL | 0..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/@inversionInd` | BL | 0..1 | C | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/@negationInd` | BL | 0..1 | C | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:seperatableInd` | BL | 0..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<!-- Possible attribute target (unproven): Medikation.substanceAdministration.negationInd -->
<!-- Datatype: BL; cardinality: 0..1; conformance: — -->
<!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
<substanceAdministration classCode="SBADM" negationInd="{Medikation.substanceAdministration.negationInd}">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <!-- Possible attribute target (unproven): Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd -->
  <!-- Datatype: BL; cardinality: 0..1; conformance: C -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <!-- An explicit occurrence rule is required. -->
  <!-- Possible attribute target (unproven): Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd -->
  <!-- Datatype: BL; cardinality: 0..1; conformance: C -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <!-- An explicit occurrence rule is required. -->
  <entryRelationship typeCode="COMP" inversionInd="{Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.inversionInd}" negationInd="{Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.negationInd}">
    <!-- Possible target (unproven): Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd -->
    <!-- Datatype: BL; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
    <!-- An explicit occurrence rule is required. -->
    <seperatableInd value="{Medikation.substanceAdministration.entryRelationship_exists_substanceAdministration.seperatableInd}"/>
  </entryRelationship>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf": null
  }
}
```

### Körperstelle

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle": null
  }
}
```

### Art der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung": null
  }
}
```

### Methode der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung": null
  }
}
```

### Dosismenge und -einheit

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.sequenceNumber`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber` | INT | 0..1 | — | Sequence number of the Subordinate Substance Administration. | — | already claimed by masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `Medikation.substanceAdministration.repeatNumber`<br>`hl7:substanceAdministration/hl7:repeatNumber` | IVL_INT | 0..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP">
    <!-- Possible target (unproven): Medikation.sequenceNumber -->
    <!-- Name/description: Sequence number of the Subordinate Substance Administration. -->
    <!-- Datatype: INT; cardinality: 0..1; conformance: — -->
    <!-- Already claimed by: masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
    <!-- An explicit occurrence rule is required. -->
    <sequenceNumber value="{Medikation.sequenceNumber}"/>
  </entryRelationship>
  <!-- Possible target (unproven): Medikation.substanceAdministration.repeatNumber -->
  <!-- Datatype: IVL_INT; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <repeatNumber/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.doseQuantity`<br>`hl7:substanceAdministration/hl7:doseQuantity` | IVL_PQ | 0..1 | R | The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.rateQuantity`<br>`hl7:substanceAdministration/hl7:rateQuantity` | IVL_PQ | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA"/>
    </manufacturedProduct>
  </consumable>
  <!-- Possible target (unproven): UVSubordinateadministration.doseQuantity -->
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity/>
  <!-- Possible target (unproven): UVSubordinateadministration.rateQuantity -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <rateQuantity/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit": null
  }
}
```

### Kontinuierliche Gabe (Rate)

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[522] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.sequenceNumber`<br>`hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]/hl7:sequenceNumber` | INT | 0..1 | — | Sequence number of the Subordinate Substance Administration. | — | already claimed by masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `Medikation.substanceAdministration.repeatNumber`<br>`hl7:substanceAdministration/hl7:repeatNumber` | IVL_INT | 0..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP">
    <!-- Possible target (unproven): Medikation.sequenceNumber -->
    <!-- Name/description: Sequence number of the Subordinate Substance Administration. -->
    <!-- Datatype: INT; cardinality: 0..1; conformance: — -->
    <!-- Already claimed by: masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
    <!-- An explicit occurrence rule is required. -->
    <sequenceNumber value="{Medikation.sequenceNumber}"/>
  </entryRelationship>
  <!-- Possible target (unproven): Medikation.substanceAdministration.repeatNumber -->
  <!-- Datatype: IVL_INT; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <repeatNumber/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.doseQuantity`<br>`hl7:substanceAdministration/hl7:doseQuantity` | IVL_PQ | 0..1 | R | The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.rateQuantity`<br>`hl7:substanceAdministration/hl7:rateQuantity` | IVL_PQ | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA"/>
    </manufacturedProduct>
  </consumable>
  <!-- Possible target (unproven): UVSubordinateadministration.doseQuantity -->
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity/>
  <!-- Possible target (unproven): UVSubordinateadministration.rateQuantity -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: — -->
  <!-- An explicit occurrence rule is required. -->
  <rateQuantity/>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate": null
  }
}
```

### Begründungstext

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[520] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.text`<br>`hl7:substanceAdministration/hl7:text` | ED | 1..1 | — | — | — | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Possible target (unproven): Medikation.text -->
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <text>
    {Medikation.text}
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.lotNumberText`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code/>
    <!-- Possible target (unproven): UVMedicationInformationsimple.lotNumberText -->
    <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
    <lotNumberText>
      {UVMedicationInformationsimple.lotNumberText}
    </lotNumberText>
    <!-- Possible target (unproven): UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name -->
    <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
    <name>
      {UVMedicationInformationsimple.manufacturedProduct.manufacturedMaterial.name}
    </name>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.addr`<br>`hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.addr`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr` | AD | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.name`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.name`<br>`hl7:name` | ON | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.telecom`<br>`hl7:telecom` | TEL | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Possible target (unproven): CDAOrganization.addr -->
<!-- Datatype: AD; cardinality: 0..*; conformance: — -->
<addr>
  {CDAOrganization.addr}
</addr>
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.addr -->
    <!-- Datatype: AD; cardinality: 0..*; conformance: — -->
    <addr>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr}
    </addr>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.name -->
    <!-- Datatype: ON; cardinality: 0..*; conformance: — -->
    <name>
      {CDAOrganization.asOrganizationPartOf.wholeOrganization.name}
    </name>
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom -->
    <!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
    <telecom/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.name -->
<!-- Datatype: ON; cardinality: 0..*; conformance: — -->
<name>
  {CDAOrganization.name}
</name>
<!-- Possible target (unproven): CDAOrganization.telecom -->
<!-- Datatype: TEL; cardinality: 0..*; conformance: — -->
<telecom/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:lotNumberText` | ST | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:name` | EN | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.unit`<br>`hl7:substanceAdministration/hl7:doseQuantity/@unit` | cs | 0..1 | R | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.code`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event/@code` | cs | 0..1 | C | — | TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText -->
        <!-- Datatype: ST; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <lotNumberText>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText}
        </lotNumberText>
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name -->
        <!-- Datatype: EN; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <name>
          {UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name}
        </name>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: The doseQuantity describes the amount of the medication given (the dosage). If a dose range is given (e.g., 1-2 tablets, or 325-750mg), then the and bounds are specified in their respective elements; otherwise only one physical quantity is specified (e.g. 2 drops) The dose can be in some known and measurable unit, such as grams, milligrams,or described in "administration" units (unit of presentation, such as capsules). If the dose is in countable items (tablets, caplets, "eaches"), then the unit could be omitted or valorized using the UCUM annotations for describing the type of countable items (e.g. .{tablet}, {puff},..). The unit attribute – when expresses unit of measures- shall be derived from the UCUM code system. The used elements should contain a element that provides a reference to the originalText found in the narrative body of the document. -->
  <!-- Datatype: IVL_PQ; cardinality: 0..1; conformance: R -->
  <!-- Possible attribute target (unproven): UVSubordinateadministration.unit -->
  <!-- Datatype: cs; cardinality: 0..1; conformance: R -->
  <!-- An explicit occurrence rule is required. -->
  <doseQuantity unit="{UVSubordinateadministration.unit}"/>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- Possible attribute target (unproven): UVSubordinateadministration.code -->
    <!-- Datatype: cs; cardinality: 0..1; conformance: C -->
    <!-- Bound ValueSet: TimingEvent (2.16.840.1.113883.1.11.10706@2014-03-26T00:00:00) -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.code}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext": null
  }
}
```

### Kodierte Begründung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `POCD_MT000040.SubstanceAdministration` | CONTEXT | CTX[520] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Medikation

Contained template: `1.2.276.0.76.3.1.195.10.67` @ `2023-12-03T00:00:00`; occurrence `0.18.0.10.0.0.4.0`

Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Medikation.approachSiteCode`<br>`hl7:substanceAdministration/hl7:approachSiteCode` | CD | 0..* | — | — | HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |
| `Medikation.routeCode`<br>`hl7:substanceAdministration/hl7:routeCode` | CE | 0..1 | — | — | RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) | same occurrence: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer; repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: Medikation -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.67 @ 2023-12-03T00:00:00 -->
<!-- Description: Universal Medication Statement: Recording a "medication statement" is an activity that can be performed by a variety of healthcare professionals, or the patient, or non-healthcare professionals. Examples of recording medication statements include taking a patient's medication history, recording reported use of medications where the source of the patient information is from a third party and not the patient e.g. a family member when the patient is unable to communicate their medication history. -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: — -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): Medikation.approachSiteCode -->
  <!-- Datatype: CD; cardinality: 0..*; conformance: — -->
  <!-- Bound ValueSet: HumanSubstanceAdministrationSite (2.16.840.1.113883.1.11.19724@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <approachSiteCode/>
  <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
  <code code="DRUG" codeSystem="2.16.840.1.113883.5.4"/>
  <!-- Name/description: Consumable: The medication that is administered (simple) -->
  <!-- Datatype: POCD_MT000040.Consumable; cardinality: 1..1; conformance: R -->
  <consumable typeCode="CSM"/>
  <!-- Name/description: Subordinate Substance Administration Statament as a component of the overall medication statement. At least one subordinated has to be present to convey information about dosages (dose, frequency of intakes,..) unless medications are unknown or known absent. Subordinated elements can be also used either to handle split dosing, or to support combination medications. -->
  <!-- Datatype: POCD_MT000040.EntryRelationship; cardinality: 0..*; conformance: C -->
  <entryRelationship typeCode="COMP"/>
  <!-- Possible target (unproven): Medikation.routeCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: RouteOfAdministration (2.16.840.1.113883.1.11.14581@2014-03-26T00:00:00) -->
  <!-- Same template occurrence already carries: Medikation.sequenceNumber ← masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer -->
  <routeCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="1.2.276.0.76.3.1.195.10.67"/>
  <!-- Datatype: ED; cardinality: 1..1; conformance: — -->
  <text>
    <!-- Datatype: TEL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
</substanceAdministration>
```

##### UV Medication Information (simple)

Contained template: `2.16.840.1.113883.10.21.4.10` @ `2021-09-29T19:15:16`; occurrence `0.18.0.10.0.0.4.0.0.12.0`

Universal Medication Information (simple)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVMedicationInformationsimple.code`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CD | 1..1 | R | The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `UVMedicationInformationsimple.translation`<br>`hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code/hl7:translation` | CE | 0..* | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: UV Medication Information (simple) -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.10 @ 2021-09-29T19:15:16 -->
<!-- Description: Universal Medication Information (simple) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: — -->
<manufacturedProduct classCode="MANU">
  <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: — -->
  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
    <!-- Possible target (unproven): UVMedicationInformationsimple.code -->
    <!-- Name/description: The code element describes the code of the medication. The medication may be either a brand/product or described as a generic/scientific name or a descriptor of a magistral preparation/compound medicine If the medicine has no code / is uncoded (e.g., magistral preparations, compound medicine, ...) nullFlavor="NA" SHALL be used. -->
    <!-- Datatype: CD; cardinality: 1..1; conformance: R -->
    <code>
      <!-- Possible target (unproven): UVMedicationInformationsimple.translation -->
      <!-- Datatype: CE; cardinality: 0..*; conformance: — -->
      <translation/>
    </code>
  </manufacturedMaterial>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="2.16.840.1.113883.10.21.4.10"/>
</manufacturedProduct>
```

##### CDA Organization

Contained template: `2.16.840.1.113883.10.12.151` @ `2005-09-07T00:00:00`; occurrence `0.18.0.10.0.0.4.0.0.12.0.0.2.0`

Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF)

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `CDAOrganization.code`<br>`hl7:asOrganizationPartOf/hl7:code` | CE | 0..1 | — | — | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode`<br>`hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |
| `CDAOrganization.standardIndustryClassCode`<br>`hl7:standardIndustryClassCode` | CE | 0..1 | — | SHALL be chosen from domain OrganizationIndustryClass | — | repeatable ancestors: 0.18.0.10.0.0.4 |

Annotated template skeleton:

```xml
<!-- Template: CDA Organization -->
<!-- OID/revision: 2.16.840.1.113883.10.12.151 @ 2005-09-07T00:00:00 -->
<!-- Description: Template CDA Organization (prototype, directly derived from POCD_RM000040 MIF) -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.12.0.0.2.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.OrganizationPartOf; cardinality: 0..1; conformance: — -->
<asOrganizationPartOf classCode="PART">
  <!-- Possible target (unproven): CDAOrganization.code -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <code/>
  <!-- Datatype: POCD_MT000040.Organization; cardinality: 0..1; conformance: — -->
  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
    <!-- Possible target (unproven): CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode -->
    <!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <standardIndustryClassCode/>
  </wholeOrganization>
</asOrganizationPartOf>
<!-- Datatype: II; cardinality: 1..*; conformance: — -->
<id/>
<!-- Possible target (unproven): CDAOrganization.standardIndustryClassCode -->
<!-- Name/description: SHALL be chosen from domain OrganizationIndustryClass -->
<!-- Datatype: CE; cardinality: 0..1; conformance: — -->
<standardIndustryClassCode/>
```

##### UV Subordinate Substance Administration

Contained template: `2.16.840.1.113883.10.21.4.6` @ `2023-01-30T09:36:00`; occurrence `0.18.0.10.0.0.4.0.0.13.1`

Universal Subordinate Substance Administration to convey information about dosages

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `UVSubordinateadministration.administrationUnitCode`<br>`hl7:substanceAdministration/hl7:administrationUnitCode` | CE | 0..1 | — | — | AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code`<br>`hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedMaterial/hl7:code` | CE | 0..1 | — | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |
| `UVSubordinateadministration.event`<br>`hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | EIVL.event | 0..1 | C | — | — | occurrence rule required; repeatable ancestors: 0.18.0.10.0.0.4, 0.18.0.10.0.0.4.0.0.13 |

Annotated template skeleton:

```xml
<!-- Template: UV Subordinate Substance Administration -->
<!-- OID/revision: 2.16.840.1.113883.10.21.4.6 @ 2023-01-30T09:36:00 -->
<!-- Description: Universal Subordinate Substance Administration to convey information about dosages -->
<!-- Contained-template occurrence: 0.18.0.10.0.0.4.0.0.13.1 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.SubstanceAdministration; cardinality: 1..1; conformance: R -->
<substanceAdministration classCode="SBADM">
  <!-- Possible target (unproven): UVSubordinateadministration.administrationUnitCode -->
  <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
  <!-- Bound ValueSet: AdministrableDrugForm (2.16.840.1.113883.1.11.14570@2014-03-26T00:00:00) -->
  <!-- An explicit occurrence rule is required. -->
  <administrationUnitCode/>
  <!-- Datatype: —; cardinality: 1..1; conformance: R -->
  <consumable>
    <!-- Datatype: POCD_MT000040.ManufacturedProduct; cardinality: 1..1; conformance: R -->
    <manufacturedProduct>
      <!-- Datatype: POCD_MT000040.Material; cardinality: 1..1; conformance: R -->
      <manufacturedMaterial nullFlavor="NA">
        <!-- Possible target (unproven): UVSubordinateadministration.substanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code -->
        <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
        <!-- An explicit occurrence rule is required. -->
        <code/>
      </manufacturedMaterial>
    </manufacturedProduct>
  </consumable>
  <!-- Name/description: Event Related Time Interval -->
  <!-- Datatype: EIVL_TS; cardinality: 0..1; conformance: C -->
  <effectiveTime>
    <!-- Possible target (unproven): UVSubordinateadministration.event -->
    <!-- Datatype: EIVL.event; cardinality: 0..1; conformance: C -->
    <!-- An explicit occurrence rule is required. -->
    <event code="{UVSubordinateadministration.event}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: ActStatusActiveCompletedAbortedSuspended (2.16.840.1.113883.11.21.2@2017-03-06T00:00:00) -->
  <statusCode/>
  <!-- Datatype: II; cardinality: 1..1; conformance: R -->
  <templateId root="2.16.840.1.113883.10.21.4.6"/>
</substanceAdministration>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung": null
  }
}
```

### Weitere Versichertenstatuskodierung

Dataset datapoint: `hauptkostentrager.versicherungsverhaltnis.weitere_versichertenstatuskodierung`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `hauptkostentrager.associatedEntity` | associatedEntity | `POCD_MT000040.AssociatedEntity` | CONTEXT | CTX[21581] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Hauptkostenträger

Contained template: `1.2.276.0.76.3.1.195.10.4` @ `2024-08-09T10:35:24`; occurrence `document`

Kostenträger/Versicherter/Versicherung mit der Angabe des Versicherungsnehmers sowie der damit verbundene Kostenträger (Versicherung). Im Kontext der Krebsregister ist die Versicherungsnummer sowie die Identifikation des Kostenträgers von Interesse.

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `hauptkostentrager.code`<br>`hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:code` | CE | 0..1 | — | Versichertenstatus: als KV Fall abgerechnet? | KV-Fall (1.2.276.0.76.3.1.195.11.19@2024-08-08T20:33:01) | already claimed by hauptkostentrager.versicherungsverhaltnis.kv_fall; same occurrence: hauptkostentrager.name ← hauptkostentrager.kostentrager.name; hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id ← hauptkostentrager.versicherungsverhaltnis.identifikation |
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.scopingOrganization.standardIndustryClassCode`<br>`hl7:participant[hl7:templateId[@root='1.2.276.0.76.3.1.195.10.4']]/hl7:associatedEntity/hl7:scopingOrganization/hl7:standardIndustryClassCode` | CE | 0..1 | — | — | — | same occurrence: hauptkostentrager.code ← hauptkostentrager.versicherungsverhaltnis.kv_fall; hauptkostentrager.name ← hauptkostentrager.kostentrager.name; hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id ← hauptkostentrager.versicherungsverhaltnis.identifikation |

Annotated template skeleton:

```xml
<!-- Template: Hauptkostenträger -->
<!-- OID/revision: 1.2.276.0.76.3.1.195.10.4 @ 2024-08-09T10:35:24 -->
<!-- Description: Kostenträger/Versicherter/Versicherung mit der Angabe des Versicherungsnehmers sowie der damit verbundene Kostenträger (Versicherung). Im Kontext der Krebsregister ist die Versicherungsnummer sowie die Identifikation des Kostenträgers von Interesse. -->
<!-- Contained-template occurrence: document -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Participant1; cardinality: 0..1; conformance: — -->
<participant typeCode="HLD">
  <!-- Datatype: POCD_MT000040.AssociatedEntity; cardinality: 1..1; conformance: — -->
  <associatedEntity classCode="POLHOLD">
    <!-- Possible target (unproven): hauptkostentrager.code -->
    <!-- Name/description: Versichertenstatus: als KV Fall abgerechnet? -->
    <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
    <!-- Bound ValueSet: KV-Fall (1.2.276.0.76.3.1.195.11.19@2024-08-08T20:33:01) -->
    <!-- Already claimed by: hauptkostentrager.versicherungsverhaltnis.kv_fall -->
    <!-- Same template occurrence already carries: hauptkostentrager.name ← hauptkostentrager.kostentrager.name; hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id ← hauptkostentrager.versicherungsverhaltnis.identifikation -->
    <code/>
    <!-- Name/description: In scopingOrganization wird im id Element das Institutionskennzeichen (IKNR) des Kostenträgers mit @extension = die eigentliche IKNR und @root = "1.2.276.0.76.4.5" (Dies ist die OID für IK-Nummern in Deutschland) angegeben. Möglich ist auch Nummer + Typ Nummer der Europäische Krankenversicherungskarte EHIC Feld 7 'Identification number of the institution' -->
    <!-- Datatype: POCD_MT000040.Organization; cardinality: 1..1; conformance: R -->
    <scopingOrganization>
      <!-- Name/description: Identifikation der Versicherungsgesellschaft -->
      <!-- Datatype: II; cardinality: 1..*; conformance: R -->
      <id/>
      <!-- Name/description: Name der Versicherungsgesellschaft -->
      <!-- Datatype: ON; cardinality: 1..1; conformance: R -->
      <name/>
      <!-- Possible target (unproven): hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.scopingOrganization.standardIndustryClassCode -->
      <!-- Datatype: CE; cardinality: 0..1; conformance: — -->
      <!-- Same template occurrence already carries: hauptkostentrager.code ← hauptkostentrager.versicherungsverhaltnis.kv_fall; hauptkostentrager.name ← hauptkostentrager.kostentrager.name; hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4.associatedEntity.id ← hauptkostentrager.versicherungsverhaltnis.identifikation -->
      <standardIndustryClassCode/>
    </scopingOrganization>
  </associatedEntity>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.3.1.195.10.4"/>
</participant>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "hauptkostentrager.versicherungsverhaltnis.weitere_versichertenstatuskodierung": null
  }
}
```

### Ankunftszeit

Dataset datapoint: `administrative_aufnahmeinformationen.transport.ankunftszeit`

**Why review is required:** The evidence reaches a CDA structural container. Review the nearest compatible writable descendants listed as reopening evidence.

**Gap:** `semantic:no_association`

#### Evidence candidates

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Transportmethod.observation` | observation | `POCD_MT000040.Observation` | CONTEXT | CTX[10005] | context only |

#### Possible targets (unproven)

These type-compatible writable descendants are an admissibility inventory, not semantic mapping evidence. Nothing in this list is selected automatically.

##### Transportmethode

Contained template: `1.2.276.0.76.10.4037` @ `2015-03-03T00:00:00`; occurrence `0.18.0.0.0.0.4.0`

Transportmethode

| Target / CDA path | Datatype | Cardinality | Conformance | Description | Bound value sets | Decision constraints |
|---|---|---|---|---|---|---|
| `Transportmethod.effectiveTime`<br>`hl7:observation/hl7:effectiveTime` | IVL_TS | 0..1 | — | Optional: Ankunftszeit (high-Element) | — | same occurrence: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel; unavailable: datatype IVL_TS assertion 'not(@value and hl7:*)' is unavoidably violated (present: @value, hl7:high); unavailable: datatype IVL_TS assertion 'not(@value and (hl7:low\|hl7:center\|hl7:high\|hl7:width))' is unavoidably violated (present: @value, hl7:high) |
| `Transportmethod.observation.effectiveTime.center`<br>`hl7:observation/hl7:effectiveTime/hl7:center` | TS | 0..1 | — | — | — | same occurrence: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel; unavailable: datatype IVL_TS assertion 'not(hl7:center and (hl7:low\|hl7:high\|hl7:width))' is unavoidably violated (present: hl7:center, hl7:high) |
| `Transportmethod.high`<br>`hl7:observation/hl7:effectiveTime/hl7:high` | TS | 1..1 | — | — | — | same occurrence: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel |
| `Transportmethod.observation.effectiveTime.low`<br>`hl7:observation/hl7:effectiveTime/hl7:low` | IVXB_TS | 0..1 | — | — | — | same occurrence: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel |

Annotated template skeleton:

```xml
<!-- Template: Transportmethode -->
<!-- OID/revision: 1.2.276.0.76.10.4037 @ 2015-03-03T00:00:00 -->
<!-- Description: Transportmethode -->
<!-- Contained-template occurrence: 0.18.0.0.0.0.4.0 -->
<!-- Read-only constraint skeleton generated from cda.json; edit cda-mapping.json. -->
<!-- Datatype: POCD_MT000040.Observation; cardinality: 1..1; conformance: — -->
<observation classCode="OBS" moodCode="EVN">
  <!-- Datatype: CE; cardinality: 1..1; conformance: — -->
  <code code="11459-5" codeSystem="2.16.840.1.113883.6.1"/>
  <!-- Possible target (unproven): Transportmethod.effectiveTime -->
  <!-- Name/description: Optional: Ankunftszeit (high-Element) -->
  <!-- Datatype: IVL_TS; cardinality: 0..1; conformance: — -->
  <!-- Same template occurrence already carries: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel -->
  <effectiveTime>
    <!-- Possible target (unproven): Transportmethod.observation.effectiveTime.center -->
    <!-- Datatype: TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel -->
    <center value="{Transportmethod.observation.effectiveTime.center}"/>
    <!-- Possible target (unproven): Transportmethod.high -->
    <!-- Datatype: TS; cardinality: 1..1; conformance: — -->
    <!-- Same template occurrence already carries: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel -->
    <high value="{Transportmethod.high}"/>
    <!-- Possible target (unproven): Transportmethod.observation.effectiveTime.low -->
    <!-- Datatype: IVXB_TS; cardinality: 0..1; conformance: — -->
    <!-- Same template occurrence already carries: Transportmethod.value ← administrative_aufnahmeinformationen.transport.transportmittel -->
    <low value="{Transportmethod.observation.effectiveTime.low}"/>
  </effectiveTime>
  <!-- Datatype: CS; cardinality: 1..1; conformance: — -->
  <statusCode code="completed"/>
  <!-- Datatype: II; cardinality: 1..1; conformance: — -->
  <templateId root="1.2.276.0.76.10.4037"/>
  <text>
    <!-- Datatype: URL; cardinality: 1..1; conformance: — -->
    <reference/>
  </text>
  <!-- Datatype: CV; cardinality: 1..1; conformance: R -->
  <!-- Bound ValueSet: Transportmethode (1.2.276.0.76.11.41@2015-11-17T00:00:00) -->
  <value/>
</observation>
```

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

Current editable state:

```json
{
  "fields": {
    "administrative_aufnahmeinformationen.transport.ankunftszeit": null
  }
}
```
