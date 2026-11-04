# Dataset-to-CDA coverage trees

Template: **Notaufnahmeregister Transitionsversion** (`1.2.276.0.76.3.1.195.10.93` @ `2026-03-25T11:04:07`)

Model: **128 datapoints** · ✓ mapped **123 dp → 135 leaves** · = reviewed null **5 dp** · ! suggested **0 dp → 0 leaves** · × no target **0 dp** · ○ no source **356 leaves**

This report is exhaustive. The status gutter is the first column of every leaf line; hierarchy branches remain visually independent from status.

- ✓ **Mapped** — selected executable mapping.
- ! **Suggested** — a writable CDA leaf exists, but no executable mapping is selected.
- × **No target** — no suitable writable CDA leaf was found.
- = **Intentionally unmapped** — the field remains `null` by an explicit reviewed decision.
- ○ **No source** — a reportable writable CDA leaf has no dataset counterpart.
- ▲ **Required gap** — an active owner-required CDA value has no portable configured source; this combines with its coverage symbol (for example `○▲`).
- ◆ **Site-owned requirement** — an active owner-required CDA value is explicitly delegated to the named `cda.values` or `cda.fallback_if_active` site channel; `○◆` means configuration-owned construction with no dataset-field source.
- ✓! **Mapped and suggested** — one datapoint is selected and another remains under review.

The CDA tree excludes generic datatype-expansion plumbing and fixed, conditional-fixed, or system-supplied values. Those remain available in `cda.json`.
The required-gap and site-ownership markers evaluate the mapping rendered for this report. `◆` records a portable ownership declaration; it does not claim that a concrete site value was checked.

## Complete dataset tree

`Dataset datapoint` → `{logical CDA target}`

```text
   Dataset model
   ├── Patient
   │   ├── Anschrift
✓  │   │   └── Postleitzahl → {CDArecordTargetnnar.recordTarget.patientRole.addr.postalCode}
   │   ├── Identifikatoren
✓  │   │   └── Patienten ID → {PatientIdentifier.id}
✓  │   └── Geschlecht → {CDArecordTargetnnar.administrativeGenderCode}
   ├── Hauptkostenträger
   │   ├── Kostenträger
✓  │   │   └── Name → {hauptkostentrager.name}, {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.name}
   │   └── Versicherungsverhältnis
✓  │       ├── Identifikation → {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id}
✓  │       ├── Versichertenstatus → {HeaderParticipantKostentraeger.code}
✓  │       ├── Versichertenstatus GKV → {HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1}
✓  │       ├── Weitere Versichertenstatuskodierung → {HeaderParticipantKostentraeger.translation}
✓  │       └── Als KV-Fall abgerechnet → {hauptkostentrager.code}
   ├── Administrative Aufnahmeinformationen
   │   ├── Zuweisung zur Notaufnahme
✓  │   │   └── Zuweisung → {Referralfrom.act.participant.participantRole.code}
   │   ├── Transport
✓  │   │   ├── Transportmittel → {Transportmethod.value}
✓  │   │   ├── Medizinische Begleitung → {medizinische-begleitung.code}
✓  │   │   └── Ankunftszeit → {Transportmethod.high}
✓  │   ├── Aufnahmezeitpunkt → {CDAEncompassingEncounter.low}, {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.low}, {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.time.high}, {Allergyconcernact.low}
✓  │   ├── Fallnummer → {CDAEncompassingEncounter.id_1}
✓  │   └── Episodennummer → {CDAEncompassingEncounter.id_2}
   ├── Ersteinschätzung
   │   ├── Parameter der Ersteinschätzung
   │   │   ├── Manchester Triage System
   │   │   │   ├── MTS-Indikator
✓  │   │   │   │   ├── MTS-Indikatoren ROT → {mts-indikatoren-rot.value}
✓  │   │   │   │   ├── MTS-Indikatoren ORANGE → {mts-indikatoren-orange.value}
✓  │   │   │   │   ├── MTS-Indikatoren GELB → {mts-indikatoren-gelb.value}
✓  │   │   │   │   └── MTS-Indikatoren GRÜN → {mts-indikatoren-grun.value}
✓  │   │   │   └── MTS-Präsentationsdiagramm → {mts-prasentationsdiagramm.value}
✓  │   │   ├── Ergebnis der Ersteinschätzung → {ersteinschatzung.value}
✓  │   │   ├── Zeitpunkt der Ersteinschätzung → {ersteinschatzung.effectiveTime}
✓  │   │   ├── verwendetes Ersteinschätzungssystem → {ersteinschatzung.methodCode}
✓  │   │   └── ESI-Triage → {esi-triage-faktoren.value}
✓  │   └── Direkter Arztkontakt → {direkter_arztkontakt.observation.negationInd}
   ├── Notfallanamnese
   │   ├── Beschwerden bei Vorstellung
✓  │   │   ├── Beschwerden bei Vorstellung (Freitext) → {Problemobservationcedis.originalText}
✓  │   │   ├── Beschwerden bei Vorstellung (CEDIS) → {Problemobservationcedis.value}
✓  │   │   └── Ereigniseintritt → {Problemconcernactcedis.low}
   │   ├── Unfall-Anamnese
✓  │   │   ├── Unfallursache → {unfallursache-kinetik.observation.value}
✓  │   │   ├── Fahrzeug des Verunfallten → {unfall-anamnese.act.participant.participantRole.code}
✓  │   │   ├── Unfallkinetik → {unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value}
✓  │   │   └── Unfallart TraumaRegister → {unfallart-traumaregister.value}
✓  │   ├── Zeitpunkt erster Arztkontakt → {CDADocumentationOf.documentationOf.serviceEvent.performer.time.low}
✓  │   ├── Notfallanamnese des Patienten → {Additionalmodulessection.text}
✓  │   └── Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? → {substanz-einfluss.value}
   ├── Klinische Basisdaten Patient
   │   ├── Allergien
   │   │   ├── Abgeleitete Informationen zur Weitergabe
✓  │   │   │   ├── Antibiotikaallergie → {Allergyintoleranceobservation_antibiotikaallergie.negationInd}
✓  │   │   │   └── Kontrastmittelallergie → {Allergyintoleranceobservation_kontrastmittelallergie.negationInd}
✓  │   │   ├── Allergie Beschreibung → {AllergienUnvertraeglichkeiten.text}
✓  │   │   └── Agens → {Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code}
✓  │   ├── Schwangerschaft → {Pregnancystatus.value}
✓  │   └── Tetanusschutz → {Clostridiumtetaniimmunization.negationInd}, {Clostridiumtetaniimmunization.nullFlavor}
   ├── Vitalparameter
   │   ├── Blutdruck
✓  │   │   ├── Systolischer Blutdruck → {Systolicbloodpressure.value}
✓  │   │   └── Diastolischer Blutdruck → {blutdruck-diastolisch.value}
   │   ├── Puls
✓  │   │   └── Pulsfrequenz → {pulsfrequenz.value}
   │   ├── Pupillenweite
✓  │   │   ├── Pupillenweite (rechts) → {Pupilsize_right.value}
✓  │   │   └── Pupillenweite (links) → {Pupilsize_left.value}
   │   ├── Pupillenreaktion
✓  │   │   ├── Pupillenreaktion (rechts) → {Pupilreaction_right.value}
✓  │   │   └── Pupillenreaktion (links) → {Pupilreaction_left.value}
   │   ├── Körperkerntemperatur
✓  │   │   └── Körperkerntemperatur → {BodyTemperatureCore.value}
✓  │   ├── Zeitpunkt → {vitalparametercontainer.effectiveTime}
✓  │   ├── Atemfrequenz → {RespiratoryRate.value}
✓  │   ├── Pulsoximetrische Sauerstoffsättigung → {pulsoximetrische_sauerstoffsattigung.value}
✓  │   └── Herzfrequenz → {HeartRate.value}
   ├── Scores
   │   ├── Glasgow Coma Scale (GCS)
✓  │   │   ├── GCS Augenöffnen → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value}
✓  │   │   ├── GCS verbale Antwort → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value}
✓  │   │   ├── GCS motorische Antwort → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value}
✓  │   │   └── GCS Summe → {GlasgowComaScale.observation.value}
   │   ├── Schmerzmessung
✓  │   │   └── Numerischen Rating Skala → {Painseverity.observation.value}
✓  │   └── modified Rankin Skala Score → {Modifiedrankinscale.observation.value}
   ├── Diagnostik
   │   ├── Bildgebende Diagnostik
   │   │   ├── Magnetresonanztomographie
✓  │   │   │   └── Untersuchungsregion → {Relevantdiagnostictestsorlaboratorydata.text}
   │   │   └── Röntgen
✓  │   │       └── Untersuchungsregion → {Relevantdiagnostictestsorlaboratorydata.text}
   │   ├── Abgeleitete Informationen über Diagnostik zur Weitergabe
✓  │   │   ├── Mikrobiologie angefordert → {mikrobiologie_angefordert.negationInd}
✓  │   │   ├── BGA angefordert → {bga_angefordert.negationInd}
✓  │   │   ├── EKG angefordert → {ekg_angefordert.negationInd}
✓  │   │   ├── Sonographie angefordert → {sonographie_angefordert.negationInd}
✓  │   │   ├── Röntgenthorax angefordert → {rontgenthorax_angefordert.negationInd}
✓  │   │   ├── Röntgen-Thorax durchgeführt → {Plainchestxray.negationInd}
✓  │   │   ├── Röntgen-Becken durchgeführt → {Pelvisxray.negationInd}
✓  │   │   ├── Röntgen-Wirbelsäule durchgeführt → {Radiographyofspine.negationInd}
✓  │   │   ├── CT Kopf durchgeführt → {Computedtomographyofentirehead.negationInd}
✓  │   │   ├── CT HWS durchgeführt → {ct_hws_durchgefuhrt.negationInd}
✓  │   │   ├── CT Thorax durchgeführt → {ct_thorax_durchgefuhrt.negationInd}
✓  │   │   ├── CT Abdomen durchgeführt → {ct_abdomen_durchgefuhrt.negationInd}
✓  │   │   └── CT- bzw. MR- bzw. DS-Angiographie → {ct-mr-ds-angiographie.value}
   │   └── Wildcard: Diagnostik
   │       ├── Klinisch relevante Zeitangaben
✓  │       │   ├── Zeitpunkt → {WildcardDiagnostik.effectiveTime_not_xsi_type}
✓  │       │   └── Zeitraum → {WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width}
✓  │       ├── Code → {WildcardDiagnostik.code}
✓  │       ├── Wert → {WildcardDiagnostik.value_as_ST}
✓  │       └── Definitorischer Link → {WildcardDiagnostik.observation.reference.externalDocument.text.reference}
   ├── Maßnahmen
   │   ├── Medikamentöse Therapie
   │   │   └── Medikation
   │   │       ├── Medikament
   │   │       │   ├── Arzneimittel
✓  │   │       │   │   ├── Arzneimittel-Name → {UVMedicationInformationsimple.code}, {Medikation.text}
✓  │   │       │   │   └── Arzneimittel-Code → {UVMedicationInformationsimple.code}
   │   │       │   ├── Wirkstoff
✓  │   │       │   │   ├── Wirkstoff-Name → {Medikation.text}
✓  │   │       │   │   ├── Wirkstoff-Code → {Medikation.text}
✓  │   │       │   │   ├── Arzneilich wirksamer Bestandteil? → {Medikation.text}
✓  │   │       │   │   └── Wirkstärke → {Medikation.text}
✓  │   │       │   ├── Darreichungsform → {UVSubordinateadministration.administrationUnitCode}, {Medikation.text}
✓  │   │       │   └── Chargennummer → {UVMedicationInformationsimple.lotNumberText}
   │   │       ├── Anwendungszeiten
✓  │   │       │   ├── (Start)zeitpunkt der Anwendung → {UVSubordinateadministration.effectiveTime_value_or_nullFlavor}
=  │   │       │   └── Stoppzeitpunkt der Anwendung → — intentionally unmapped [DEC-043]
   │   │       ├── Dosierung
   │   │       │   ├── Zeitangabe
   │   │       │   │   ├── Ereignisbezogene Wiederholung
=  │   │       │   │   │   ├── Ereignis → — intentionally unmapped [DEC-043]
✓  │   │       │   │   │   └── Offset → {Medikation.text}
=  │   │       │   │   └── Zeitpunkt → — intentionally unmapped [DEC-043]
✓  │   │       │   ├── Sequenznummer → {Medikation.sequenceNumber}
✓  │   │       │   ├── Freitext → {Medikation.text}
✓  │   │       │   ├── Zusätzliche Hinweise → {Medikation.text}
✓  │   │       │   ├── Anweisungen zur Einnahme → {Medikation.text}
✓  │   │       │   ├── Einnahme bei Bedarf → {Medikation.text}
✓  │   │       │   ├── Körperstelle → {Medikation.approachSiteCode}
✓  │   │       │   ├── Art der Anwendung → {Medikation.routeCode}
✓  │   │       │   ├── Methode der Anwendung → {Medikation.routeCode}
✓  │   │       │   ├── Dosismenge und -einheit → {UVSubordinateadministration.doseQuantity}
✓  │   │       │   └── Kontinuierliche Gabe (Rate) → {UVSubordinateadministration.rateQuantity}
   │   │       └── Grund der Medikation
✓  │   │           ├── Begründungstext → {Medikation.text}
✓  │   │           └── Kodierte Begründung → {Medikation.text}
   │   ├── Isolation
✓  │   │   ├── Isolation → {isolation.negationInd}
✓  │   │   └── Isolation Begründung → {Isolationindication.value}, {ProblemobservationMDRO.observation.value}
   │   └── Wildcard: Therapie
   │       ├── Klinisch relevante Zeitangaben
✓  │       │   ├── Zeitpunkt → {WildcardTherapie.effectiveTime_not_xsi_type}
✓  │       │   └── Zeitraum → {WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width}
✓  │       ├── Code → {WildcardTherapie.code}
✓  │       └── Definitorischer Link → {WildcardTherapie.procedure.reference.externalDocument.text.reference}
   ├── Abschlussdiagnosen
   │   └── Abschlussdiagnose
✓  │       ├── Freitext Abschlussdiagnose → {Problemobservationeddiagnosis.originalText}
✓  │       ├── ICD-10 → {Problemobservationeddiagnosis.observation.value}
=  │       ├── ICD-10 Sekundärdiagnose → — intentionally unmapped [DEC-043]
✓  │       ├── Zusatzkennzeichen → {Certainty.value}, {Problemobservationeddiagnosis.negationInd}
✓  │       ├── Führende Abschlussdiagnose? / Sequenznummer → {Problemconcernacteddiagnoses.sequenceNumber}
✓  │       └── Lateralität → {Laterality.value}
   ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler
✓  │   └── Procedere → {Eddisposition.text}
   ├── Administrative Verlegungs-/Entlassungsinformationen
✓  │   ├── Typ Verlegung → {Referralto.act.code}
✓  │   ├── Typ Entlassung → {CDAEncompassingEncounter.dischargeDispositionCode}
✓  │   ├── Zeitpunkt Entscheidung zur Verlegung / Entlassung → {zeitpunkt_entscheidung_zur_verlegung__entlassung.value}
✓  │   ├── Zeitpunkt Patient verlegungs- / entlassungsfähig → {zeitpunkt_patient_verlegungs__entlassungsfahig.value}, {CDADocumentationOf.documentationOf.serviceEvent.performer.time.high}
✓  │   ├── Zeitpunkt Patient verlegt / entlassen nach → {zeitpunkt_patient_verlegt__entlassen_nach.value}, {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.high}, {CDAEncompassingEncounter.high}
✓  │   └── Aufnehmende Fachabteilung → {Referralto.act.participant.participantRole.code}
   └── Dokumentationsinformationen
       ├── Beginn patientenbezogene Dokumentation
=      │   └── Zeitpunkt Beginn patientenbezogene Dokumentation → — intentionally unmapped [DEC-043]
       ├── Berechnete Zeitintervalle
✓      │   └── Zeit bis zum Export → {addendum-dokumentationsinformationen.text}
       └── Datenbereitstellung
✓          ├── Name des EDIS → {addendum-dokumentationsinformationen.text}
✓          └── Version des EDIS → {addendum-dokumentationsinformationen.text}
```

## Complete CDA coverage tree

`Logical CDA target` ← `dataset datapoint`

```text
   Notaufnahmeregister Transitionsversion (ClinicalDocument)
   ├── Document header
   │   ├── CDA realmCode (CDArealmCode)
○  │   │   └── realmCode {CDArealmCode.realmCode} ← no dataset counterpart
   │   ├── CDA title (CDAtitle)
○  │   │   └── title {CDAtitle.title} ← no dataset counterpart
   │   ├── CDA confidentialityCode (CDAconfidentialityCode)
○◆ │   │   └── confidentialityCode {CDAconfidentialityCode.confidentialityCode} ← site configuration via cda.values; no dataset counterpart
   │   ├── CDA languageCode (CDAlanguageCode)
○◆ │   │   └── languageCode {CDAlanguageCode.languageCode} ← site configuration via cda.values; no dataset counterpart
   │   ├── Patientenidentifikation (PatientIdentifier)
✓  │   │   └── id {PatientIdentifier.id} ← Patienten ID
   │   ├── CDA recordTarget (nnar) (CDArecordTargetnnar)
○  │   │   ├── addr {CDArecordTargetnnar.addr} ← no dataset counterpart
✓  │   │   ├── postalCode {CDArecordTargetnnar.recordTarget.patientRole.addr.postalCode} ← Postleitzahl
○  │   │   ├── telecom {CDArecordTargetnnar.telecom} ← no dataset counterpart
○  │   │   ├── name {CDArecordTargetnnar.name} ← no dataset counterpart
✓  │   │   ├── administrativeGenderCode {CDArecordTargetnnar.administrativeGenderCode} ← Geschlecht
○  │   │   └── birthTime {CDArecordTargetnnar.birthTime} ← no dataset counterpart
   │   ├── CDA Person Elements (PersonElements)
○◆ │   │   ├── name {CDAauthor.assignedPerson::PersonElements.name} ← site configuration via cda.fallback_if_active; no dataset counterpart
○  │   │   ├── name {HeaderInformationRecipient.informationRecipient.intendedRecipient.informationRecipient::PersonElements.name} ← no dataset counterpart
○  │   │   └── name {HeaderParticipantKostentraeger.associatedPerson::PersonElements.name} ← no dataset counterpart
   │   ├── CDA Organization Elements (OrganizationElements)
○  │   │   ├── id {CDAauthor.representedOrganization::OrganizationElements.id} ← no dataset counterpart
○  │   │   ├── name {CDAauthor.representedOrganization::OrganizationElements.name} ← no dataset counterpart
○  │   │   ├── telecom {CDAauthor.representedOrganization::OrganizationElements.telecom} ← no dataset counterpart
○  │   │   ├── addr {CDAauthor.representedOrganization::OrganizationElements.addr} ← no dataset counterpart
○  │   │   ├── telecom {CDAcustodian.representedCustodianOrganization::OrganizationElements.telecom} ← no dataset counterpart
○  │   │   ├── addr {CDAcustodian.representedCustodianOrganization::OrganizationElements.addr} ← no dataset counterpart
○  │   │   ├── id {HeaderInformationRecipient.receivedOrganization::OrganizationElements.id} ← no dataset counterpart
○  │   │   ├── name {HeaderInformationRecipient.receivedOrganization::OrganizationElements.name} ← no dataset counterpart
○  │   │   ├── telecom {HeaderInformationRecipient.receivedOrganization::OrganizationElements.telecom} ← no dataset counterpart
○  │   │   ├── addr {HeaderInformationRecipient.receivedOrganization::OrganizationElements.addr} ← no dataset counterpart
○  │   │   ├── id {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.id} ← no dataset counterpart
✓  │   │   ├── name {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.name} ← Name
○  │   │   ├── telecom {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.telecom} ← no dataset counterpart
○  │   │   └── addr {HeaderParticipantKostentraeger.scopingOrganization::OrganizationElements.addr} ← no dataset counterpart
   │   ├── CDA participant Kostentraeger (HeaderParticipantKostentraeger)
○  │   │   ├── time {HeaderParticipantKostentraeger.time} ← no dataset counterpart
✓  │   │   ├── high {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.time.high} ← Aufnahmezeitpunkt
✓  │   │   ├── id {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.id} ← Identifikation
✓  │   │   ├── code {HeaderParticipantKostentraeger.code} ← Versichertenstatus
✓  │   │   ├── translation {HeaderParticipantKostentraeger.translation_codeSystem_2.16.840.1.113883.3.7.1.1} ← Versichertenstatus GKV
✓  │   │   ├── translation {HeaderParticipantKostentraeger.translation} ← Weitere Versichertenstatuskodierung
○  │   │   ├── addr {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.addr} ← no dataset counterpart
○  │   │   └── telecom {HeaderParticipantKostentraeger.participant_templateId_root_1.2.276.0.76.10.2022.associatedEntity.telecom} ← no dataset counterpart
   │   ├── Hauptkostenträger (hauptkostentrager)
✓  │   │   ├── code {hauptkostentrager.code} ← Als KV-Fall abgerechnet
✓  │   │   └── name {hauptkostentrager.name} ← Name
   │   ├── Dienstleistung/Behandlung (Basis) (CDADocumentationOf)
○  │   │   ├── effectiveTime {CDADocumentationOf.effectiveTime} ← no dataset counterpart
✓  │   │   ├── low {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.low} ← Aufnahmezeitpunkt
✓  │   │   ├── high {CDADocumentationOf.documentationOf.serviceEvent.effectiveTime.high} ← Zeitpunkt Patient verlegt / entlassen nach
○  │   │   ├── time {CDADocumentationOf.time} ← no dataset counterpart
✓  │   │   ├── low {CDADocumentationOf.documentationOf.serviceEvent.performer.time.low} ← Zeitpunkt erster Arztkontakt
✓  │   │   └── high {CDADocumentationOf.documentationOf.serviceEvent.performer.time.high} ← Zeitpunkt Patient verlegungs- / entlassungsfähig
   │   └── CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter)
✓  │       ├── id {CDAEncompassingEncounter.id_1} ← Fallnummer
✓  │       ├── id {CDAEncompassingEncounter.id_2} ← Episodennummer
○  │       ├── effectiveTime {CDAEncompassingEncounter.effectiveTime} ← no dataset counterpart
✓  │       ├── low {CDAEncompassingEncounter.low} ← Aufnahmezeitpunkt
✓  │       ├── high {CDAEncompassingEncounter.high} ← Zeitpunkt Patient verlegt / entlassen nach
✓  │       └── dischargeDispositionCode {CDAEncompassingEncounter.dischargeDispositionCode} ← Typ Entlassung
   ├── Transportmittel (Transportmethod)
   │   ├── Transportmittel (Transportmethod)
○  │   │   └── text {Transportmethod.section.text} ← no dataset counterpart
   │   ├── Transportmethode (Transportmethod)
○  │   │   ├── id {Transportmethod.id} ← no dataset counterpart
○  │   │   ├── text {Transportmethod.observation.text} ← no dataset counterpart
○  │   │   ├── reference {Transportmethod.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Transportmethod.effectiveTime} ← no dataset counterpart
✓  │   │   ├── high {Transportmethod.high} ← Ankunftszeit
✓  │   │   └── value {Transportmethod.value} ← Transportmittel
   │   └── Medizinische Begleitung (medizinische-begleitung)
✓  │       ├── code {medizinische-begleitung.code} ← Medizinische Begleitung
○  │       ├── text {medizinische-begleitung.text} ← no dataset counterpart
○  │       └── reference {medizinische-begleitung.reference} ← no dataset counterpart
   ├── Zuweisung (Typeofreferralsource)
   │   ├── Zuweisung (Typeofreferralsource)
○  │   │   └── text {Typeofreferralsource.text} ← no dataset counterpart
   │   └── Zuweisung mit Zuweiser (Referralfrom)
○  │       ├── text {Referralfrom.text} ← no dataset counterpart
○  │       ├── reference {Referralfrom.reference} ← no dataset counterpart
✓  │       ├── code {Referralfrom.act.participant.participantRole.code} ← Zuweisung
○  │       └── originalText {Referralfrom.originalText} ← no dataset counterpart
   ├── Ersteinschätzung (ersteinschatzung-section)
   │   ├── Ersteinschätzung (ersteinschatzung-section)
○  │   │   └── text {ersteinschatzung-section.text} ← no dataset counterpart
   │   ├── Direkter Arztkontakt (direkter_arztkontakt)
○  │   │   ├── text {direkter_arztkontakt.text} ← no dataset counterpart
○  │   │   ├── reference {direkter_arztkontakt.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {direkter_arztkontakt.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {direkter_arztkontakt.observation.negationInd} ← Direkter Arztkontakt
   │   ├── Ersteinschätzung (ersteinschatzung)
○  │   │   ├── id {ersteinschatzung.id} ← no dataset counterpart
○  │   │   ├── text {ersteinschatzung.text} ← no dataset counterpart
○  │   │   ├── reference {ersteinschatzung.reference} ← no dataset counterpart
✓  │   │   ├── effectiveTime {ersteinschatzung.effectiveTime} ← Zeitpunkt der Ersteinschätzung
✓  │   │   ├── value {ersteinschatzung.value} ← Ergebnis der Ersteinschätzung
✓  │   │   ├── methodCode {ersteinschatzung.methodCode} ← verwendetes Ersteinschätzungssystem
○  │   │   └── @codeSystemVersion {ersteinschatzung.codeSystemVersion} ← no dataset counterpart
   │   ├── Manchester Triage System (manchester-triage-system)
○  │   │   ├── id {manchester-triage-system.id} ← no dataset counterpart
○  │   │   ├── text {manchester-triage-system.text} ← no dataset counterpart
○  │   │   ├── reference {manchester-triage-system.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {manchester-triage-system.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {manchester-triage-system.value} ← no dataset counterpart
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813} ← no dataset counterpart
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632170} ← no dataset counterpart
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632173} ← no dataset counterpart
○  │   │   ├── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632176} ← no dataset counterpart
○  │   │   └── @contextConductionInd {manchester-triage-system.observation.entryRelationship.contextConductionInd@20240813@1632179} ← no dataset counterpart
   │   ├── MTS-Präsentationsdiagramm (mts-prasentationsdiagramm)
○  │   │   ├── text {mts-prasentationsdiagramm.text} ← no dataset counterpart
○  │   │   ├── reference {mts-prasentationsdiagramm.reference} ← no dataset counterpart
✓  │   │   └── value {mts-prasentationsdiagramm.value} ← MTS-Präsentationsdiagramm
   │   ├── MTS-Indikatoren ROT (mts-indikatoren-rot)
○  │   │   ├── text {mts-indikatoren-rot.text} ← no dataset counterpart
○  │   │   ├── reference {mts-indikatoren-rot.reference} ← no dataset counterpart
✓  │   │   └── value {mts-indikatoren-rot.value} ← MTS-Indikatoren ROT
   │   ├── MTS-Indikatoren ORANGE (mts-indikatoren-orange)
○  │   │   ├── text {mts-indikatoren-orange.text} ← no dataset counterpart
○  │   │   ├── reference {mts-indikatoren-orange.reference} ← no dataset counterpart
✓  │   │   └── value {mts-indikatoren-orange.value} ← MTS-Indikatoren ORANGE
   │   ├── MTS-Indikatoren GELB (mts-indikatoren-gelb)
○  │   │   ├── text {mts-indikatoren-gelb.text} ← no dataset counterpart
○  │   │   ├── reference {mts-indikatoren-gelb.reference} ← no dataset counterpart
✓  │   │   └── value {mts-indikatoren-gelb.value} ← MTS-Indikatoren GELB
   │   ├── MTS-Indikatoren GRÜN (mts-indikatoren-grun)
○  │   │   ├── text {mts-indikatoren-grun.text} ← no dataset counterpart
○  │   │   ├── reference {mts-indikatoren-grun.reference} ← no dataset counterpart
✓  │   │   └── value {mts-indikatoren-grun.value} ← MTS-Indikatoren GRÜN
   │   ├── Emergency Severity Index (emergency-severity-index)
○  │   │   ├── id {emergency-severity-index.id} ← no dataset counterpart
○  │   │   ├── text {emergency-severity-index.text} ← no dataset counterpart
○  │   │   ├── reference {emergency-severity-index.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {emergency-severity-index.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {emergency-severity-index.value} ← no dataset counterpart
○  │   │   └── @contextConductionInd {emergency-severity-index.contextConductionInd} ← no dataset counterpart
   │   └── ESI-Triagefaktoren (esi-triage-faktoren)
○  │       ├── text {esi-triage-faktoren.text} ← no dataset counterpart
○  │       ├── reference {esi-triage-faktoren.reference} ← no dataset counterpart
✓  │       └── value {esi-triage-faktoren.value} ← ESI-Triage
   ├── Notfallanamnese (HistoryofPresentIllnessSection)
   │   ├── Notfallanamnese (HistoryofPresentIllnessSection)
○  │   │   └── text {HistoryofPresentIllnessSection.text} ← no dataset counterpart
   │   ├── Unfall-Anamnese (unfall-anamnese)
○  │   │   ├── text {unfall-anamnese.text} ← no dataset counterpart
○  │   │   ├── reference {unfall-anamnese.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {unfall-anamnese.effectiveTime} ← no dataset counterpart
○  │   │   ├── low {unfall-anamnese.low} ← no dataset counterpart
✓  │   │   └── code {unfall-anamnese.act.participant.participantRole.code} ← Fahrzeug des Verunfallten
   │   ├── Unfallursache/-kinetik (unfallursache-kinetik)
✓  │   │   ├── value {unfallursache-kinetik.observation.value} ← Unfallursache
✓  │   │   └── value {unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value} ← Unfallkinetik
   │   ├── Unfallart Traumaregister (unfallart-traumaregister)
✓  │   │   └── value {unfallart-traumaregister.value} ← Unfallart TraumaRegister
   │   └── Substanz-Einfluss (substanz-einfluss)
✓  │       └── value {substanz-einfluss.value} ← Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?
   ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)
   │   ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)
○  │   │   └── text {Chiefcomplaintreasonforvisit.text} ← no dataset counterpart
   │   ├── Problem Concern Act (Text/CEDIS) (Problemconcernactcedis)
○  │   │   ├── statusCode {Problemconcernactcedis.statusCode} ← no dataset counterpart; default value="active"
○  │   │   ├── effectiveTime {Problemconcernactcedis.effectiveTime} ← no dataset counterpart
✓  │   │   ├── low {Problemconcernactcedis.low} ← Ereigniseintritt
○  │   │   └── high {Problemconcernactcedis.high} ← no dataset counterpart
   │   └── Problem Observation (Text/CEDIS) (Problemobservationcedis)
○  │       ├── text {Problemobservationcedis.text} ← no dataset counterpart
○  │       ├── reference {Problemobservationcedis.reference} ← no dataset counterpart
○  │       ├── effectiveTime {Problemobservationcedis.effectiveTime} ← no dataset counterpart
○  │       ├── width {Problemobservationcedis.width} ← no dataset counterpart
✓  │       ├── value {Problemobservationcedis.value} ← Beschwerden bei Vorstellung (CEDIS)
✓  │       └── originalText {Problemobservationcedis.originalText} ← Beschwerden bei Vorstellung (Freitext)
   ├── Klinische Basisinformationen (ClinicalInformation)
   │   ├── Klinische Basisinformationen (ClinicalInformation)
○  │   │   └── text {ClinicalInformation.text} ← no dataset counterpart
   │   ├── Status Schwangerschaft (Pregnancystatus)
○  │   │   ├── id {Pregnancystatus.id} ← no dataset counterpart
○  │   │   ├── text {Pregnancystatus.text} ← no dataset counterpart
○  │   │   ├── reference {Pregnancystatus.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Pregnancystatus.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {Pregnancystatus.value} ← Schwangerschaft
   │   ├── Immunisierung Clostridium tetani (Clostridiumtetaniimmunization)
○  │   │   ├── id {Clostridiumtetaniimmunization.id} ← no dataset counterpart
○  │   │   ├── text {Clostridiumtetaniimmunization.text} ← no dataset counterpart
○  │   │   ├── reference {Clostridiumtetaniimmunization.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Clostridiumtetaniimmunization.effectiveTime} ← no dataset counterpart
✓  │   │   ├── @negationInd {Clostridiumtetaniimmunization.negationInd} ← Tetanusschutz
✓  │   │   └── @nullFlavor {Clostridiumtetaniimmunization.nullFlavor} ← Tetanusschutz
   │   ├── Modified Rankin Scale (Modifiedrankinscale)
○  │   │   ├── text {Modifiedrankinscale.text} ← no dataset counterpart
○  │   │   ├── reference {Modifiedrankinscale.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Modifiedrankinscale.effectiveTime} ← no dataset counterpart
✓  │   │   ├── value {Modifiedrankinscale.observation.value} ← modified Rankin Skala Score
○  │   │   └── @value {Modifiedrankinscale.observation.value.value} ← no dataset counterpart
   │   ├── Problem Concern Act (Multidrug-resistant organism) (ProblemconcernactMDRO)
○  │   │   ├── effectiveTime {ProblemconcernactMDRO.effectiveTime} ← no dataset counterpart
○  │   │   ├── low {ProblemconcernactMDRO.low} ← no dataset counterpart
○  │   │   └── high {ProblemconcernactMDRO.high} ← no dataset counterpart
   │   └── Problem Observation (Multidrug-resistant organism) (ProblemobservationMDRO)
○  │       ├── text {ProblemobservationMDRO.text} ← no dataset counterpart
○  │       ├── reference {ProblemobservationMDRO.reference} ← no dataset counterpart
○  │       ├── effectiveTime {ProblemobservationMDRO.effectiveTime} ← no dataset counterpart
○  │       ├── low {ProblemobservationMDRO.low} ← no dataset counterpart
○  │       ├── high {ProblemobservationMDRO.high} ← no dataset counterpart
✓  │       ├── value {ProblemobservationMDRO.observation.value} ← Isolation Begründung
○  │       ├── value {ProblemobservationMDRO.observation.value.qualifier_name.code_FSTAT.value} ← no dataset counterpart
○  │       └── @negationInd {ProblemobservationMDRO.negationInd} ← no dataset counterpart
   ├── Vitalparameter (VitalSignsSection)
   │   ├── Vitalparameter (VitalSignsSection)
○  │   │   ├── title {VitalSignsSection.title} ← no dataset counterpart
○  │   │   └── text {VitalSignsSection.text} ← no dataset counterpart
   │   ├── Vitalparameter-Container (vitalparametercontainer)
✓  │   │   └── effectiveTime {vitalparametercontainer.effectiveTime} ← Zeitpunkt
   │   ├── Atemfrequenz (RespiratoryRate)
○  │   │   ├── originalText {RespiratoryRate.originalText} ← no dataset counterpart
○  │   │   ├── text {RespiratoryRate.text} ← no dataset counterpart
○  │   │   ├── reference {RespiratoryRate.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {RespiratoryRate.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {RespiratoryRate.value} ← Atemfrequenz
   │   ├── Pulsoximetrische Sauerstoffsättigung (pulsoximetrische_sauerstoffsattigung)
○  │   │   ├── id {pulsoximetrische_sauerstoffsattigung.id} ← no dataset counterpart
○  │   │   ├── text {pulsoximetrische_sauerstoffsattigung.text} ← no dataset counterpart
○  │   │   ├── reference {pulsoximetrische_sauerstoffsattigung.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {pulsoximetrische_sauerstoffsattigung.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {pulsoximetrische_sauerstoffsattigung.value} ← Pulsoximetrische Sauerstoffsättigung
   │   ├── Blutdruck systolisch (Systolicbloodpressure)
○  │   │   ├── text {Systolicbloodpressure.text} ← no dataset counterpart
○  │   │   ├── reference {Systolicbloodpressure.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Systolicbloodpressure.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {Systolicbloodpressure.value} ← Systolischer Blutdruck
   │   ├── Blutdruck diastolisch (blutdruck-diastolisch)
○  │   │   ├── id {blutdruck-diastolisch.id} ← no dataset counterpart
○  │   │   ├── text {blutdruck-diastolisch.text} ← no dataset counterpart
○  │   │   ├── reference {blutdruck-diastolisch.reference} ← no dataset counterpart
✓  │   │   └── value {blutdruck-diastolisch.value} ← Diastolischer Blutdruck
   │   ├── Herzfrequenz (HeartRate)
○  │   │   ├── text {HeartRate.text} ← no dataset counterpart
○  │   │   ├── reference {HeartRate.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {HeartRate.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {HeartRate.value} ← Herzfrequenz
   │   ├── Pulsfrequenz (pulsfrequenz)
○  │   │   ├── id {pulsfrequenz.id} ← no dataset counterpart
○  │   │   ├── text {pulsfrequenz.text} ← no dataset counterpart
○  │   │   ├── reference {pulsfrequenz.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {pulsfrequenz.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {pulsfrequenz.value} ← Pulsfrequenz
   │   ├── Glasgow Coma Scale (GlasgowComaScale)
○  │   │   ├── id {GlasgowComaScale.id} ← no dataset counterpart
○  │   │   ├── text {GlasgowComaScale.text} ← no dataset counterpart
○  │   │   ├── reference {GlasgowComaScale.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {GlasgowComaScale.effectiveTime} ← no dataset counterpart
✓  │   │   ├── value {GlasgowComaScale.observation.value} ← GCS Summe
○  │   │   ├── @value {GlasgowComaScale.observation.value.value} ← no dataset counterpart
✓  │   │   ├── value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value} ← GCS Augenöffnen
○  │   │   ├── @value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value.value} ← no dataset counterpart
✓  │   │   ├── value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value} ← GCS verbale Antwort
○  │   │   ├── @value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value.value} ← no dataset counterpart
✓  │   │   ├── value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value} ← GCS motorische Antwort
○  │   │   └── @value {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value.value} ← no dataset counterpart
   │   ├── Pupillenweite (Pupilsize)
○  │   │   ├── text {Pupilsize.text} ← no dataset counterpart
○  │   │   ├── reference {Pupilsize.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Pupilsize.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Pupilsize.value} ← no dataset counterpart
○  │   │   └── targetSiteCode {Pupilsize.targetSiteCode} ← no dataset counterpart
   │   ├── Pupillenreaktion (Pupilreaction)
○  │   │   ├── text {Pupilreaction.text} ← no dataset counterpart
○  │   │   ├── reference {Pupilreaction.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Pupilreaction.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Pupilreaction.value} ← no dataset counterpart
○  │   │   └── targetSiteCode {Pupilreaction.targetSiteCode} ← no dataset counterpart
   │   ├── Körperkerntemperatur (BodyTemperatureCore)
○  │   │   ├── text {BodyTemperatureCore.text} ← no dataset counterpart
○  │   │   ├── reference {BodyTemperatureCore.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {BodyTemperatureCore.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {BodyTemperatureCore.value} ← Körperkerntemperatur
   │   └── Schmerz (Painseverity)
○  │       ├── text {Painseverity.text} ← no dataset counterpart
○  │       ├── reference {Painseverity.reference} ← no dataset counterpart
○  │       ├── effectiveTime {Painseverity.effectiveTime} ← no dataset counterpart
✓  │       ├── value {Painseverity.observation.value} ← Numerischen Rating Skala
○  │       └── @value {Painseverity.observation.value.value} ← no dataset counterpart
   ├── Diagnostik (Relevantdiagnostictestsorlaboratorydata)
   │   ├── Diagnostik (Relevantdiagnostictestsorlaboratorydata)
✓  │   │   └── text {Relevantdiagnostictestsorlaboratorydata.text} ← Untersuchungsregion, Untersuchungsregion
   │   ├── Röntgen-Thorax angefordert (rontgenthorax_angefordert)
○  │   │   ├── text {rontgenthorax_angefordert.text} ← no dataset counterpart
○  │   │   ├── reference {rontgenthorax_angefordert.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {rontgenthorax_angefordert.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {rontgenthorax_angefordert.negationInd} ← Röntgenthorax angefordert
   │   ├── Röntgen-Thorax durchgeführt (Plainchestxray)
○  │   │   ├── text {Plainchestxray.text} ← no dataset counterpart
○  │   │   ├── reference {Plainchestxray.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Plainchestxray.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Plainchestxray.value} ← no dataset counterpart
✓  │   │   └── @negationInd {Plainchestxray.negationInd} ← Röntgen-Thorax durchgeführt
   │   ├── Röntgen Hals-, Brust- und Lendenwirbelsäule durchgeführt (Radiographyofspine)
○  │   │   ├── text {Radiographyofspine.text} ← no dataset counterpart
○  │   │   ├── reference {Radiographyofspine.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Radiographyofspine.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Radiographyofspine.value} ← no dataset counterpart
✓  │   │   └── @negationInd {Radiographyofspine.negationInd} ← Röntgen-Wirbelsäule durchgeführt
   │   ├── Röntgen-Becken durchgeführt (Pelvisxray)
○  │   │   ├── text {Pelvisxray.text} ← no dataset counterpart
○  │   │   ├── reference {Pelvisxray.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Pelvisxray.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Pelvisxray.value} ← no dataset counterpart
✓  │   │   └── @negationInd {Pelvisxray.negationInd} ← Röntgen-Becken durchgeführt
   │   ├── Röntgen-Extremitäten durchgeführt (Plainradiographylimbstructure)
○  │   │   ├── text {Plainradiographylimbstructure.text} ← no dataset counterpart
○  │   │   ├── reference {Plainradiographylimbstructure.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Plainradiographylimbstructure.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Plainradiographylimbstructure.value} ← no dataset counterpart
○  │   │   └── @negationInd {Plainradiographylimbstructure.negationInd} ← no dataset counterpart
   │   ├── Röntgen o.n.A. durchgeführt (Plainradiography)
○  │   │   ├── text {Plainradiography.text} ← no dataset counterpart
○  │   │   ├── reference {Plainradiography.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Plainradiography.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Plainradiography.value} ← no dataset counterpart
○  │   │   └── @negationInd {Plainradiography.negationInd} ← no dataset counterpart
   │   ├── CT Kopf durchgeführt (Computedtomographyofentirehead)
○  │   │   ├── text {Computedtomographyofentirehead.text} ← no dataset counterpart
○  │   │   ├── reference {Computedtomographyofentirehead.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Computedtomographyofentirehead.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Computedtomographyofentirehead.value} ← no dataset counterpart
✓  │   │   └── @negationInd {Computedtomographyofentirehead.negationInd} ← CT Kopf durchgeführt
   │   ├── CT Ganzkörper durchgeführt (Computedtomographyscanwholebody)
○  │   │   ├── text {Computedtomographyscanwholebody.text} ← no dataset counterpart
○  │   │   ├── reference {Computedtomographyscanwholebody.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Computedtomographyscanwholebody.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Computedtomographyscanwholebody.value} ← no dataset counterpart
○  │   │   └── @negationInd {Computedtomographyscanwholebody.negationInd} ← no dataset counterpart
   │   ├── CT Abdomen durchgeführt (ct_abdomen_durchgefuhrt)
○  │   │   ├── text {ct_abdomen_durchgefuhrt.text} ← no dataset counterpart
○  │   │   ├── reference {ct_abdomen_durchgefuhrt.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {ct_abdomen_durchgefuhrt.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {ct_abdomen_durchgefuhrt.negationInd} ← CT Abdomen durchgeführt
   │   ├── CT Extremitäten durchgeführt (ct_extremitaten_durchgefuhrt)
○  │   │   ├── text {ct_extremitaten_durchgefuhrt.text} ← no dataset counterpart
○  │   │   ├── reference {ct_extremitaten_durchgefuhrt.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {ct_extremitaten_durchgefuhrt.effectiveTime} ← no dataset counterpart
○  │   │   └── @negationInd {ct_extremitaten_durchgefuhrt.negationInd} ← no dataset counterpart
   │   ├── CT HWS durchgeführt (ct_hws_durchgefuhrt)
○  │   │   ├── text {ct_hws_durchgefuhrt.text} ← no dataset counterpart
○  │   │   ├── reference {ct_hws_durchgefuhrt.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {ct_hws_durchgefuhrt.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {ct_hws_durchgefuhrt.negationInd} ← CT HWS durchgeführt
   │   ├── CT Thorax durchgeführt (ct_thorax_durchgefuhrt)
○  │   │   ├── text {ct_thorax_durchgefuhrt.text} ← no dataset counterpart
○  │   │   ├── reference {ct_thorax_durchgefuhrt.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {ct_thorax_durchgefuhrt.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {ct_thorax_durchgefuhrt.negationInd} ← CT Thorax durchgeführt
   │   ├── CT o.n.A. durchgeführt (Computerizedaxialtomography)
○  │   │   ├── text {Computerizedaxialtomography.text} ← no dataset counterpart
○  │   │   ├── reference {Computerizedaxialtomography.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Computerizedaxialtomography.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Computerizedaxialtomography.value} ← no dataset counterpart
○  │   │   └── @negationInd {Computerizedaxialtomography.negationInd} ← no dataset counterpart
   │   ├── MRT durchgeführt (Magneticresonanceimaging)
○  │   │   ├── text {Magneticresonanceimaging.text} ← no dataset counterpart
○  │   │   ├── reference {Magneticresonanceimaging.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Magneticresonanceimaging.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Magneticresonanceimaging.value} ← no dataset counterpart
○  │   │   └── @negationInd {Magneticresonanceimaging.negationInd} ← no dataset counterpart
   │   ├── CT-/MR-/DS-Angiographie (ct-mr-ds-angiographie)
○  │   │   ├── text {ct-mr-ds-angiographie.text} ← no dataset counterpart
○  │   │   ├── reference {ct-mr-ds-angiographie.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {ct-mr-ds-angiographie.effectiveTime} ← no dataset counterpart
✓  │   │   └── value {ct-mr-ds-angiographie.value} ← CT- bzw. MR- bzw. DS-Angiographie
   │   ├── Laboruntersuchung durchgeführt (Laboratorytest)
○  │   │   ├── text {Laboratorytest.text} ← no dataset counterpart
○  │   │   ├── reference {Laboratorytest.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Laboratorytest.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Laboratorytest.value} ← no dataset counterpart
○  │   │   └── @negationInd {Laboratorytest.negationInd} ← no dataset counterpart
   │   ├── Mikrobiologie angefordert (mikrobiologie_angefordert)
○  │   │   ├── text {mikrobiologie_angefordert.text} ← no dataset counterpart
○  │   │   ├── reference {mikrobiologie_angefordert.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {mikrobiologie_angefordert.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {mikrobiologie_angefordert.negationInd} ← Mikrobiologie angefordert
   │   ├── BGA angefordert (bga_angefordert)
○  │   │   ├── text {bga_angefordert.text} ← no dataset counterpart
○  │   │   ├── reference {bga_angefordert.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {bga_angefordert.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {bga_angefordert.negationInd} ← BGA angefordert
   │   ├── BGA durchgeführt (Bloodgasanalysis)
○  │   │   ├── text {Bloodgasanalysis.text} ← no dataset counterpart
○  │   │   ├── reference {Bloodgasanalysis.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Bloodgasanalysis.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Bloodgasanalysis.value} ← no dataset counterpart
○  │   │   └── @negationInd {Bloodgasanalysis.negationInd} ← no dataset counterpart
   │   ├── Urinanalyse, Reagenzstreifen ohne Mikroskopie durchgeführt (Urinalysisreagentstripwithoutmicroscopy)
○  │   │   ├── text {Urinalysisreagentstripwithoutmicroscopy.text} ← no dataset counterpart
○  │   │   ├── reference {Urinalysisreagentstripwithoutmicroscopy.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Urinalysisreagentstripwithoutmicroscopy.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Urinalysisreagentstripwithoutmicroscopy.value} ← no dataset counterpart
○  │   │   └── @negationInd {Urinalysisreagentstripwithoutmicroscopy.negationInd} ← no dataset counterpart
   │   ├── EKG angefordert (ekg_angefordert)
○  │   │   ├── text {ekg_angefordert.text} ← no dataset counterpart
○  │   │   ├── reference {ekg_angefordert.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {ekg_angefordert.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {ekg_angefordert.negationInd} ← EKG angefordert
   │   ├── Zwölfkanal-EKG durchgeführt (Twelveleadelectrocardiogram)
○  │   │   ├── text {Twelveleadelectrocardiogram.text} ← no dataset counterpart
○  │   │   ├── reference {Twelveleadelectrocardiogram.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Twelveleadelectrocardiogram.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Twelveleadelectrocardiogram.value} ← no dataset counterpart
○  │   │   └── @negationInd {Twelveleadelectrocardiogram.negationInd} ← no dataset counterpart
   │   ├── Echokardiographie durchgeführt (Echocardiography)
○  │   │   ├── text {Echocardiography.text} ← no dataset counterpart
○  │   │   ├── reference {Echocardiography.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Echocardiography.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Echocardiography.value} ← no dataset counterpart
○  │   │   └── @negationInd {Echocardiography.negationInd} ← no dataset counterpart
   │   ├── Sonographie angefordert (sonographie_angefordert)
○  │   │   ├── text {sonographie_angefordert.text} ← no dataset counterpart
○  │   │   ├── reference {sonographie_angefordert.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {sonographie_angefordert.effectiveTime} ← no dataset counterpart
✓  │   │   └── @negationInd {sonographie_angefordert.negationInd} ← Sonographie angefordert
   │   ├── Sonographie durchgeführt (Diagnosticultrasonography)
○  │   │   ├── text {Diagnosticultrasonography.text} ← no dataset counterpart
○  │   │   ├── reference {Diagnosticultrasonography.reference} ← no dataset counterpart
○  │   │   ├── effectiveTime {Diagnosticultrasonography.effectiveTime} ← no dataset counterpart
○  │   │   ├── value {Diagnosticultrasonography.value} ← no dataset counterpart
○  │   │   └── @negationInd {Diagnosticultrasonography.negationInd} ← no dataset counterpart
   │   └── Wildcard Diagnostik (WildcardDiagnostik)
✓  │       ├── code {WildcardDiagnostik.code} ← Code
○  │       ├── effectiveTime {WildcardDiagnostik.effectiveTime_xsi_type_IVL_TS} ← no dataset counterpart
○  │       ├── low {WildcardDiagnostik.low} ← no dataset counterpart
○  │       ├── high {WildcardDiagnostik.high} ← no dataset counterpart
✓  │       ├── width {WildcardDiagnostik.observation.effectiveTime_xsi_type_IVL_TS.width} ← Zeitraum
✓  │       ├── effectiveTime {WildcardDiagnostik.effectiveTime_not_xsi_type} ← Zeitpunkt
○  │       ├── value {WildcardDiagnostik.value_as_BL} ← no dataset counterpart
○  │       ├── value {WildcardDiagnostik.value_as_CD} ← no dataset counterpart
○  │       ├── value {WildcardDiagnostik.value_as_II} ← no dataset counterpart
○  │       ├── value {WildcardDiagnostik.value_as_INT} ← no dataset counterpart
○  │       ├── value {WildcardDiagnostik.value_as_PQ} ← no dataset counterpart
✓  │       ├── value {WildcardDiagnostik.value_as_ST} ← Wert
○  │       ├── value {WildcardDiagnostik.value_as_TS} ← no dataset counterpart
○  │       ├── text {WildcardDiagnostik.text} ← no dataset counterpart
✓  │       ├── reference {WildcardDiagnostik.observation.reference.externalDocument.text.reference} ← Definitorischer Link
○  │       └── @negationInd {WildcardDiagnostik.negationInd} ← no dataset counterpart
   ├── Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)
   │   ├── Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)
✓  │   │   └── text {AllergienUnvertraeglichkeiten.text} ← Allergie Beschreibung
   │   ├── Allergy Concern Act (Allergyconcernact)
○  │   │   ├── statusCode {Allergyconcernact.statusCode} ← no dataset counterpart
○  │   │   ├── effectiveTime {Allergyconcernact.effectiveTime} ← no dataset counterpart
✓  │   │   ├── low {Allergyconcernact.low} ← Aufnahmezeitpunkt
○  │   │   └── high {Allergyconcernact.high} ← no dataset counterpart
   │   └── Allergy / Intolerance Observation (Allergyintoleranceobservation)
○  │       ├── statusCode {Allergyintoleranceobservation.statusCode} ← no dataset counterpart; default value="completed"
○  │       ├── effectiveTime {Allergyintoleranceobservation.effectiveTime} ← no dataset counterpart; default nullFlavor="UNK"
○  │       ├── low {Allergyintoleranceobservation.low} ← no dataset counterpart
○  │       ├── high {Allergyintoleranceobservation.high} ← no dataset counterpart
✓  │       ├── code {Allergyintoleranceobservation.observation.participant.participantRole.playingEntity.code} ← Agens
○  │       └── @negationInd {Allergyintoleranceobservation.negationInd} ← no dataset counterpart
   ├── Prozeduren und Maßnahmen (Patientcarenarrative)
   │   ├── Prozeduren und Maßnahmen (Patientcarenarrative)
○  │   │   └── text {Patientcarenarrative.text} ← no dataset counterpart
   │   ├── Isolation (isolation)
○  │   │   ├── id {isolation.id} ← no dataset counterpart
○  │   │   ├── text {isolation.text} ← no dataset counterpart
○  │   │   ├── reference {isolation.reference} ← no dataset counterpart
✓  │   │   └── @negationInd {isolation.negationInd} ← Isolation
   │   ├── Isolation Indication (Isolationindication)
✓  │   │   └── value {Isolationindication.value} ← Isolation Begründung
   │   └── Wildcard Therapie (WildcardTherapie)
✓  │       ├── code {WildcardTherapie.code} ← Code
○  │       ├── effectiveTime {WildcardTherapie.effectiveTime_xsi_type_IVL_TS} ← no dataset counterpart
○  │       ├── low {WildcardTherapie.low} ← no dataset counterpart
○  │       ├── high {WildcardTherapie.high} ← no dataset counterpart
✓  │       ├── width {WildcardTherapie.procedure.effectiveTime_xsi_type_IVL_TS.width} ← Zeitraum
✓  │       ├── effectiveTime {WildcardTherapie.effectiveTime_not_xsi_type} ← Zeitpunkt
○  │       ├── text {WildcardTherapie.text} ← no dataset counterpart
✓  │       ├── reference {WildcardTherapie.procedure.reference.externalDocument.text.reference} ← Definitorischer Link
○  │       └── @negationInd {WildcardTherapie.negationInd} ← no dataset counterpart
   ├── Medikamentöse Therapie (medikamentose-therapie)
   │   ├── Medikamentöse Therapie (medikamentose-therapie)
○  │   │   └── text {medikamentose-therapie.text} ← no dataset counterpart
   │   ├── Medikation
○  │   │   ├── id {Medikation.id} ← no dataset counterpart
✓  │   │   ├── text {Medikation.text} ← Arzneimittel-Name, Darreichungsform, Wirkstoff-Name, Wirkstoff-Code, Arzneilich wirksamer Bestandteil?, Wirkstärke, Freitext, Zusätzliche Hinweise, Anweisungen zur Einnahme, Offset, Einnahme bei Bedarf, Begründungstext, Kodierte Begründung
○  │   │   ├── statusCode {Medikation.statusCode} ← no dataset counterpart
✓  │   │   ├── routeCode {Medikation.routeCode} ← Art der Anwendung, Methode der Anwendung
✓  │   │   ├── approachSiteCode {Medikation.approachSiteCode} ← Körperstelle
✓  │   │   ├── sequenceNumber {Medikation.sequenceNumber} ← Sequenznummer
○◆ │   │   └── @moodCode {Medikation.moodCode} ← site configuration via cda.fallback_if_active; no dataset counterpart
   │   ├── UV Medication Information (simple) (UVMedicationInformationsimple)
✓  │   │   ├── code {UVMedicationInformationsimple.code} ← Arzneimittel-Name, Arzneimittel-Code
○  │   │   ├── translation {UVMedicationInformationsimple.translation} ← no dataset counterpart
✓  │   │   └── lotNumberText {UVMedicationInformationsimple.lotNumberText} ← Chargennummer
   │   ├── CDA Organization (CDAOrganization)
○  │   │   ├── name {CDAOrganization.name} ← no dataset counterpart
○  │   │   ├── telecom {CDAOrganization.telecom} ← no dataset counterpart
○  │   │   ├── addr {CDAOrganization.addr} ← no dataset counterpart
○  │   │   ├── standardIndustryClassCode {CDAOrganization.standardIndustryClassCode} ← no dataset counterpart
○  │   │   ├── id {CDAOrganization.asOrganizationPartOf.id} ← no dataset counterpart
○  │   │   ├── code {CDAOrganization.code} ← no dataset counterpart
○  │   │   ├── statusCode {CDAOrganization.statusCode} ← no dataset counterpart
○  │   │   ├── effectiveTime {CDAOrganization.effectiveTime} ← no dataset counterpart
○  │   │   ├── id {CDAOrganization.asOrganizationPartOf.wholeOrganization.id} ← no dataset counterpart
○  │   │   ├── name {CDAOrganization.asOrganizationPartOf.wholeOrganization.name} ← no dataset counterpart
○  │   │   ├── telecom {CDAOrganization.asOrganizationPartOf.wholeOrganization.telecom} ← no dataset counterpart
○  │   │   ├── addr {CDAOrganization.asOrganizationPartOf.wholeOrganization.addr} ← no dataset counterpart
○  │   │   └── standardIndustryClassCode {CDAOrganization.asOrganizationPartOf.wholeOrganization.standardIndustryClassCode} ← no dataset counterpart
   │   └── UV Subordinate Substance Administration (UVSubordinateadministration)
○◆ │       ├── statusCode {UVSubordinateadministration.statusCode} ← site configuration via cda.fallback_if_active; no dataset counterpart
✓  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_value_or_nullFlavor} ← (Start)zeitpunkt der Anwendung
○  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_xsi_type_PIVL_TS} ← no dataset counterpart
○  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_xsi_type_EIVL_TS} ← no dataset counterpart
○  │       ├── event {UVSubordinateadministration.event} ← no dataset counterpart
○  │       ├── @code {UVSubordinateadministration.code} ← no dataset counterpart
○  │       ├── effectiveTime {UVSubordinateadministration.effectiveTime_xsi_type_SXPR_TS} ← no dataset counterpart
✓  │       ├── doseQuantity {UVSubordinateadministration.doseQuantity} ← Dosismenge und -einheit
○  │       ├── @unit {UVSubordinateadministration.unit} ← no dataset counterpart
✓  │       ├── rateQuantity {UVSubordinateadministration.rateQuantity} ← Kontinuierliche Gabe (Rate)
✓  │       ├── administrationUnitCode {UVSubordinateadministration.administrationUnitCode} ← Darreichungsform
○◆ │       └── @moodCode {UVSubordinateadministration.moodCode} ← site configuration via cda.fallback_if_active; no dataset counterpart
   ├── Abschlussdiagnosen (Basis) (Eddiagnosis)
   │   ├── Abschlussdiagnosen (Basis) (Eddiagnosis)
○  │   │   └── text {Eddiagnosis.text} ← no dataset counterpart
   │   ├── Problem Concern Act (Abschlussdiagnosen) (Problemconcernacteddiagnoses)
○  │   │   ├── statusCode {Problemconcernacteddiagnoses.statusCode} ← no dataset counterpart; default value="active"
○  │   │   ├── effectiveTime {Problemconcernacteddiagnoses.effectiveTime} ← no dataset counterpart
○  │   │   ├── low {Problemconcernacteddiagnoses.low} ← no dataset counterpart; default nullFlavor="UNK"
○  │   │   ├── high {Problemconcernacteddiagnoses.high} ← no dataset counterpart
✓  │   │   └── sequenceNumber {Problemconcernacteddiagnoses.sequenceNumber} ← Führende Abschlussdiagnose? / Sequenznummer
   │   ├── Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis)
○  │   │   ├── code {Problemobservationeddiagnosis.code} ← no dataset counterpart; default value="29308-4"
○  │   │   ├── text {Problemobservationeddiagnosis.text} ← no dataset counterpart
○  │   │   ├── effectiveTime {Problemobservationeddiagnosis.effectiveTime} ← no dataset counterpart
○  │   │   ├── low {Problemobservationeddiagnosis.low} ← no dataset counterpart; default nullFlavor="UNK"
○  │   │   ├── high {Problemobservationeddiagnosis.high} ← no dataset counterpart
✓  │   │   ├── value {Problemobservationeddiagnosis.observation.value} ← ICD-10
✓  │   │   ├── originalText {Problemobservationeddiagnosis.originalText} ← Freitext Abschlussdiagnose
○  │   │   ├── value {Problemobservationeddiagnosis.observation.value.qualifier_name.code_FSTAT.value} ← no dataset counterpart
✓  │   │   └── @negationInd {Problemobservationeddiagnosis.negationInd} ← Zusatzkennzeichen
   │   ├── Diagnosesicherheit (Certainty)
✓  │   │   └── value {Certainty.value} ← Zusatzkennzeichen
   │   └── Lateralität (Laterality)
✓  │       └── value {Laterality.value} ← Lateralität
   ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)
   │   ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)
✓  │   │   └── text {Eddisposition.text} ← Procedere
   │   └── Weiterbehandlung Verlegung (Referralto)
✓  │       ├── code {Referralto.act.code} ← Typ Verlegung
○  │       ├── text {Referralto.text} ← no dataset counterpart
○  │       ├── reference {Referralto.reference} ← no dataset counterpart
✓  │       ├── code {Referralto.act.participant.participantRole.code} ← Aufnehmende Fachabteilung
○  │       └── originalText {Referralto.originalText} ← no dataset counterpart
   ├── Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)
   │   ├── Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)
✓  │   │   └── text {Additionalmodulessection.text} ← Notfallanamnese des Patienten
   │   ├── Zusätzliche externe Dokumentation (Additionalexternalocuments)
○  │   │   ├── text {Additionalexternalocuments.text} ← no dataset counterpart
○  │   │   └── reference {Additionalexternalocuments.act.text.reference} ← no dataset counterpart
   │   └── External Document Reference (ExternalDocumentReference)
○  │       ├── code {ExternalDocumentReference.code} ← no dataset counterpart
○  │       ├── text {ExternalDocumentReference.text} ← no dataset counterpart
○  │       └── reference {ExternalDocumentReference.reference} ← no dataset counterpart
   └── Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen)
       ├── Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen)
✓      │   └── text {addendum-dokumentationsinformationen.text} ← Zeit bis zum Export, Name des EDIS, Version des EDIS
       ├── Zeitpunkt Entscheidung zur Verlegung / Entlassung (zeitpunkt_entscheidung_zur_verlegung__entlassung)
○      │   ├── text {zeitpunkt_entscheidung_zur_verlegung__entlassung.text} ← no dataset counterpart
○      │   ├── reference {zeitpunkt_entscheidung_zur_verlegung__entlassung.reference} ← no dataset counterpart
○      │   ├── effectiveTime {zeitpunkt_entscheidung_zur_verlegung__entlassung.effectiveTime} ← no dataset counterpart
✓      │   └── value {zeitpunkt_entscheidung_zur_verlegung__entlassung.value} ← Zeitpunkt Entscheidung zur Verlegung / Entlassung
       ├── Zeitpunkt Patient verlegungs- / entlassungsfähig (zeitpunkt_patient_verlegungs__entlassungsfahig)
○      │   ├── text {zeitpunkt_patient_verlegungs__entlassungsfahig.text} ← no dataset counterpart
○      │   ├── reference {zeitpunkt_patient_verlegungs__entlassungsfahig.reference} ← no dataset counterpart
○      │   ├── effectiveTime {zeitpunkt_patient_verlegungs__entlassungsfahig.effectiveTime} ← no dataset counterpart
✓      │   └── value {zeitpunkt_patient_verlegungs__entlassungsfahig.value} ← Zeitpunkt Patient verlegungs- / entlassungsfähig
       ├── Zeitpunkt Patient verlegt / entlassen nach (zeitpunkt_patient_verlegt__entlassen_nach)
○      │   ├── text {zeitpunkt_patient_verlegt__entlassen_nach.text} ← no dataset counterpart
○      │   ├── reference {zeitpunkt_patient_verlegt__entlassen_nach.reference} ← no dataset counterpart
○      │   ├── effectiveTime {zeitpunkt_patient_verlegt__entlassen_nach.effectiveTime} ← no dataset counterpart
✓      │   └── value {zeitpunkt_patient_verlegt__entlassen_nach.value} ← Zeitpunkt Patient verlegt / entlassen nach
       ├── Zeit bis zum Export (zeit_bis_zum_export)
○      │   ├── text {zeit_bis_zum_export.text} ← no dataset counterpart
○      │   ├── reference {zeit_bis_zum_export.reference} ← no dataset counterpart
○      │   └── effectiveTime {zeit_bis_zum_export.effectiveTime} ← no dataset counterpart
       ├── Name des EDIS (name_des_edis)
○      │   ├── text {name_des_edis.text} ← no dataset counterpart
○      │   ├── reference {name_des_edis.reference} ← no dataset counterpart
○      │   ├── effectiveTime {name_des_edis.effectiveTime} ← no dataset counterpart
○      │   └── value {name_des_edis.value} ← no dataset counterpart
       └── Version des EDIS (version_des_edis)
○          ├── text {version_des_edis.text} ← no dataset counterpart
○          ├── reference {version_des_edis.reference} ← no dataset counterpart
○          ├── effectiveTime {version_des_edis.effectiveTime} ← no dataset counterpart
○          └── value {version_des_edis.value} ← no dataset counterpart
```
