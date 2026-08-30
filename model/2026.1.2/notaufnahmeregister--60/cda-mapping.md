# Dataset-to-CDA mapping

Template: **Notaufnahmeregister Transitionsversion** (`1.2.276.0.76.3.1.195.10.93` @ `2026-03-25T11:04:07`)

Selected dataset fields: **62**; target assignments: **64**; unresolved fields: **5**.

Edit `cda-mapping.json`; do not edit the XML examples in this report. The
mapping table explicitly connects the dataset model, the editable JSON
assignment, and the CDA template. XML excerpts are read-only previews of
what the JSON configuration produces.
A required CDA leaf that remains deliberately unmapped is emitted with `nullFlavor="NI"`; an unmapped optional element is omitted.

## Document outline

`Dataset name` → `{logical CDA target datapoint}`

```text
Notaufnahmeregister Transitionsversion (ClinicalDocument)
├── Document header
│   ├── Patientenidentifikation (PatientIdentifier)
│   │   └── Patienten ID → {PatientIdentifier.id}
│   ├── CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter)
│   │   ├── Aufnahmezeitpunkt
│   │   │   → {CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601}
│   │   ├── Fallnummer → {CDAEncompassingEncounter.id_2}
│   │   ├── Episodennummer → {CDAEncompassingEncounter.id_1}
│   │   ├── Zeitpunkt Patient verlegt / entlassen nach
│   │   │   → {CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601}
│   │   └── Zeitpunkt Beginn patientenbezogene Dokumentation
│   │       → {CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601}
│   └── Dienstleistung/Behandlung (Basis) (CDADocumentationOf)
│       └── Zeitpunkt erster Arztkontakt
│           → {CDADocumentationOf.documentationOf.serviceEvent.performer.time.low}
└── Document body (structuredBody)
    ├── Transportmittel (Transportmethod) — dataset: Administrative Aufnahmeinformationen
    │   └── Transportmethode (Transportmethod)
    │       └── Transportmittel → {Transportmethod.value}
    ├── Zuweisung (Typeofreferralsource) — no selected dataset mapping
    ├── Ersteinschätzung (ersteinschatzung-section) — dataset: Ersteinschätzung
    │   ├── Ersteinschätzung (ersteinschatzung)
    │   │   ├── Ergebnis der Ersteinschätzung → {ersteinschatzung.value}
    │   │   └── Zeitpunkt der Ersteinschätzung → {ersteinschatzung.effectiveTime}
    │   ├── MTS-Präsentationsdiagramm (mts-prasentationsdiagramm)
    │   │   └── MTS-Präsentationsdiagramm → {mts-prasentationsdiagramm.value}
    │   ├── MTS-Indikatoren ROT (mts-indikatoren-rot)
    │   │   └── MTS-Indikatoren ROT → {mts-indikatoren-rot.value}
    │   ├── MTS-Indikatoren ORANGE (mts-indikatoren-orange)
    │   │   └── MTS-Indikatoren ORANGE → {mts-indikatoren-orange.value}
    │   ├── MTS-Indikatoren GELB (mts-indikatoren-gelb)
    │   │   └── MTS-Indikatoren GELB → {mts-indikatoren-gelb.value}
    │   ├── MTS-Indikatoren GRÜN (mts-indikatoren-grun)
    │   │   └── MTS-Indikatoren GRÜN → {mts-indikatoren-grun.value}
    │   └── ESI-Triagefaktoren (esi-triage-faktoren)
    │       └── ESI-Triage → {esi-triage-faktoren.value}
    ├── Notfallanamnese (HistoryofPresentIllnessSection) — dataset: Notfallanamnese
    │   ├── Unfallursache/-kinetik (unfallursache-kinetik)
    │   │   ├── Unfallursache → {unfallursache-kinetik.observation.value}
    │   │   └── Unfallkinetik
    │   │       → {unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value}
    │   ├── Unfallart Traumaregister (unfallart-traumaregister)
    │   │   └── Unfallart TraumaRegister → {unfallart-traumaregister.value}
    │   └── Substanz-Einfluss (substanz-einfluss)
    │       └── Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?
    │           → {substanz-einfluss.value}
    ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit) — dataset: Notfallanamnese
    │   ├── Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)
    │   │   └── Beschwerden bei Vorstellung (Freitext) → {Chiefcomplaintreasonforvisit.text}
    │   └── Problem Observation (Text/CEDIS) (Problemobservationcedis)
    │       └── Beschwerden bei Vorstellung (CEDIS) → {Problemobservationcedis.value}
    ├── Klinische Basisinformationen (ClinicalInformation) — dataset: Klinische Basisdaten Patient, Scores
    │   ├── Status Schwangerschaft (Pregnancystatus)
    │   │   └── Schwangerschaft → {Pregnancystatus.value}
    │   ├── Immunisierung Clostridium tetani (Clostridiumtetaniimmunization)
    │   │   ├── Tetanusschutz → {Clostridiumtetaniimmunization.negationInd}
    │   │   └── Tetanusschutz → {Clostridiumtetaniimmunization.nullFlavor}
    │   └── Modified Rankin Scale (Modifiedrankinscale)
    │       └── modified Rankin Skala Score → {Modifiedrankinscale.observation.value}
    ├── Vitalparameter (VitalSignsSection) — dataset: Vitalparameter, Scores
    │   ├── Atemfrequenz (RespiratoryRate)
    │   │   └── Atemfrequenz → {RespiratoryRate.value}
    │   ├── Pulsoximetrische Sauerstoffsättigung (pulsoximetrische_sauerstoffsattigung)
    │   │   └── Pulsoximetrische Sauerstoffsättigung
    │   │       → {pulsoximetrische_sauerstoffsattigung.value}
    │   ├── Blutdruck systolisch (Systolicbloodpressure)
    │   │   └── Systolischer Blutdruck → {Systolicbloodpressure.value}
    │   ├── Blutdruck diastolisch (blutdruck-diastolisch)
    │   │   └── Diastolischer Blutdruck → {blutdruck-diastolisch.value}
    │   ├── Herzfrequenz (HeartRate)
    │   │   └── Herzfrequenz → {HeartRate.value}
    │   ├── Pulsfrequenz (pulsfrequenz)
    │   │   └── Pulsfrequenz → {pulsfrequenz.value}
    │   ├── Pupillenweite (Pupilsize)
    │   │   ├── Pupillenweite (rechts) → {Pupilsize_right.value}
    │   │   └── Pupillenweite (links) → {Pupilsize_left.value}
    │   ├── Pupillenreaktion (Pupilreaction)
    │   │   ├── Pupillenreaktion (rechts) → {Pupilreaction_right.value}
    │   │   └── Pupillenreaktion (links) → {Pupilreaction_left.value}
    │   ├── Körperkerntemperatur (BodyTemperatureCore)
    │   │   └── Körperkerntemperatur → {BodyTemperatureCore.value}
    │   ├── Glasgow Coma Scale (GlasgowComaScale)
    │   │   ├── GCS Augenöffnen
    │   │   │   → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value}
    │   │   ├── GCS verbale Antwort
    │   │   │   → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value}
    │   │   ├── GCS motorische Antwort
    │   │   │   → {GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value}
    │   │   └── GCS Summe → {GlasgowComaScale.observation.value}
    │   └── Schmerz (Painseverity)
    │       └── Numerischen Rating Skala → {Painseverity.observation.value}
    ├── Diagnostik (Relevantdiagnostictestsorlaboratorydata) — dataset: Diagnostik
    │   ├── Mikrobiologie angefordert (mikrobiologie_angefordert)
    │   │   └── Mikrobiologie angefordert → {mikrobiologie_angefordert.negationInd}
    │   ├── BGA angefordert (bga_angefordert)
    │   │   └── BGA angefordert → {bga_angefordert.negationInd}
    │   ├── EKG angefordert (ekg_angefordert)
    │   │   └── EKG angefordert → {ekg_angefordert.negationInd}
    │   ├── Sonographie angefordert (sonographie_angefordert)
    │   │   └── Sonographie angefordert → {sonographie_angefordert.negationInd}
    │   ├── Röntgen-Thorax angefordert (rontgenthorax_angefordert)
    │   │   └── Röntgenthorax angefordert → {rontgenthorax_angefordert.negationInd}
    │   ├── Röntgen-Thorax durchgeführt (Plainchestxray)
    │   │   └── Röntgen-Thorax durchgeführt → {Plainchestxray.negationInd}
    │   ├── Röntgen-Becken durchgeführt (Pelvisxray)
    │   │   └── Röntgen-Becken durchgeführt → {Pelvisxray.negationInd}
    │   ├── CT Kopf durchgeführt (Computedtomographyofentirehead)
    │   │   └── CT Kopf durchgeführt → {Computedtomographyofentirehead.negationInd}
    │   ├── CT HWS durchgeführt (ct_hws_durchgefuhrt)
    │   │   └── CT HWS durchgeführt → {ct_hws_durchgefuhrt.negationInd}
    │   ├── CT Thorax durchgeführt (ct_thorax_durchgefuhrt)
    │   │   └── CT Thorax durchgeführt → {ct_thorax_durchgefuhrt.negationInd}
    │   ├── CT Abdomen durchgeführt (ct_abdomen_durchgefuhrt)
    │   │   └── CT Abdomen durchgeführt → {ct_abdomen_durchgefuhrt.negationInd}
    │   └── CT-/MR-/DS-Angiographie (ct-mr-ds-angiographie)
    │       └── CT- bzw. MR- bzw. DS-Angiographie → {ct-mr-ds-angiographie.value}
    ├── Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten) — no selected dataset mapping
    ├── Prozeduren und Maßnahmen (Patientcarenarrative) — dataset: Maßnahmen
    │   ├── Isolation (isolation)
    │   │   └── Isolation → {isolation.negationInd}
    │   └── Isolation Indication (Isolationindication)
    │       └── Isolation Begründung → {Isolationindication.observation.value@20240814}
    ├── Medikamentöse Therapie (medikamentose-therapie) — no selected dataset mapping
    ├── Abschlussdiagnosen (Basis) (Eddiagnosis) — dataset: Abschlussdiagnosen
    │   ├── Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis)
    │   │   ├── Freitext Abschlussdiagnose
    │   │   │   → {Problemobservationeddiagnosis.observation.value.originalText@20170213}
    │   │   ├── ICD-10 → {Problemobservationeddiagnosis.observation.value@20170213}
    │   │   └── Zusatzkennzeichen
    │   │       → {Problemobservationeddiagnosis.observation.negationInd@20170213}
    │   ├── Diagnosesicherheit (Certainty)
    │   │   └── Zusatzkennzeichen → {Certainty.value}
    │   └── Problem Concern Act (Abschlussdiagnosen) (Problemconcernacteddiagnoses)
    │       └── Führende Abschlussdiagnose? / Sequenznummer
    │           → {Problemconcernacteddiagnoses.act.entryRelationship.sequenceNumber@20160622}
    ├── Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition) — no selected dataset mapping
    ├── Zusatzmodule (weitere Dokumentation) (Additionalmodulessection) — dataset: Notfallanamnese
    │   └── Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)
    │       └── Notfallanamnese des Patienten → {Additionalmodulessection.text}
    └── Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen) — dataset: Administrative Verlegungs-/Entlassungsinformationen
        ├── Zeitpunkt Entscheidung zur Verlegung / Entlassung (zeitpunkt_entscheidung_zur_verlegung__entlassung)
        │   └── Zeitpunkt Entscheidung zur Verlegung / Entlassung
        │       → {zeitpunkt_entscheidung_zur_verlegung__entlassung.value}
        └── Zeitpunkt Patient verlegungs- / entlassungsfähig (zeitpunkt_patient_verlegungs__entlassungsfahig)
            └── Zeitpunkt Patient verlegungs- / entlassungsfähig
                → {zeitpunkt_patient_verlegungs__entlassungsfahig.value}
```

## Sections and entities

### Document header

#### Patientenidentifikation (PatientIdentifier)

Template: `1.2.276.0.76.10.90024` @ `2014-12-17T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Patienten ID | `patient.identifikatoren.patienten_id` | `PatientIdentifier.id` | id (`II`) | Mapped |

In `cda-mapping.json`, map **Patienten ID** by setting `fields["patient.identifikatoren.patienten_id"]` to `"PatientIdentifier.id"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "patient.identifikatoren.patienten_id": "PatientIdentifier.id"
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<recordTarget typeCode="RCT" contextControlCode="OP">
  <patientRole classCode="PAT">
    <id extension="{PatientIdentifier.id}"/>
  </patientRole>
</recordTarget>
```

#### CDA encompassingEncounter Patientenkontakt (Basis) (CDAEncompassingEncounter)

Template: `1.2.276.0.76.10.2036` @ `2016-06-01T00:00:00`

Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Aufnahmezeitpunkt | `administrative_aufnahmeinformationen.aufnahmezeitpunkt` | `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute (`TS.DATE.MIN`) | Structural rule |
| Fallnummer | `administrative_aufnahmeinformationen.fallnummer` | `CDAEncompassingEncounter.id_2` | Abrechnungs-Fallnummer für das Zuordnen von §21-Daten (optional) als zweite Id (`II`) | Mapped |
| Episodennummer | `administrative_aufnahmeinformationen.episodennummer` | `CDAEncompassingEncounter.id_1` | Identifikationselement (verpflichtend) zur Aufnahme der Aufenthalts-Identifikation als erste Id (`II`) | Mapped |
| Zeitpunkt Patient verlegt / entlassen nach | `administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach` | `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601` | Ende Patientenkontakt = Zeitpunkt der Verlegung/Entlassung (`TS.DATE.MIN`) | Mapped |
| Zeitpunkt Beginn patientenbezogene Dokumentation | `dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation` | `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute (`TS.DATE.MIN`) | Structural rule |

In `cda-mapping.json`, review the rule stored at `fields["administrative_aufnahmeinformationen.aufnahmezeitpunkt"]`; it writes **Aufnahmezeitpunkt** to `"CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601"`.
In `cda-mapping.json`, map **Fallnummer** by setting `fields["administrative_aufnahmeinformationen.fallnummer"]` to `"CDAEncompassingEncounter.id_2"`.
In `cda-mapping.json`, map **Episodennummer** by setting `fields["administrative_aufnahmeinformationen.episodennummer"]` to `"CDAEncompassingEncounter.id_1"`.
In `cda-mapping.json`, map **Zeitpunkt Patient verlegt / entlassen nach** by setting `fields["administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach"]` to `"CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601"`.
In `cda-mapping.json`, review the rule stored at `fields["dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation"]`; it writes **Zeitpunkt Beginn patientenbezogene Dokumentation** to `"CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "administrative_aufnahmeinformationen.aufnahmezeitpunkt": {
      "target": "CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601",
      "cda_target": "CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601",
      "structure": "coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601"
    },
    "administrative_aufnahmeinformationen.fallnummer": "CDAEncompassingEncounter.id_2",
    "administrative_aufnahmeinformationen.episodennummer": "CDAEncompassingEncounter.id_1",
    "administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegt_entlassen_nach": "CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601",
    "dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation": {
      "target": "CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601",
      "cda_target": "CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601",
      "structure": "coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601"
    }
  },
  "structures": {
    "coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601": {
      "type": "coalesce",
      "target": "CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601",
      "policy": "equal_or_error",
      "sources": [
        "administrative_aufnahmeinformationen.aufnahmezeitpunkt",
        "dokumentationsinformationen.beginn_patientenbezogene_dokumentation.zeitpunkt_beginn_patientenbezogene_dokumentation"
      ]
    }
  }
}
```

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<componentOf typeCode="COMP">
  <encompassingEncounter classCode="ENC" moodCode="EVN">
    <id extension="{CDAEncompassingEncounter.id_1}"/>
    <id extension="{CDAEncompassingEncounter.id_2}"/>
    <effectiveTime>
      <low value="{CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601}"/>
      <high value="{CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.high@20160601}"/>
    </effectiveTime>
  </encompassingEncounter>
</componentOf>
```

#### Dienstleistung/Behandlung (Basis) (CDADocumentationOf)

Template: `1.2.276.0.76.10.2035` @ `2014-09-17T00:00:00`

Begin des Arztkontaktes

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt erster Arztkontakt | `notfallanamnese.zeitpunkt_erster_arztkontakt` | `CDADocumentationOf.documentationOf.serviceEvent.performer.time.low` | Begin des Arztkontaktes (`TS`) | Mapped |

### Transportmittel (Transportmethod)

#### Transportmethode (Transportmethod)

Template: `1.2.276.0.76.10.4037` @ `2015-03-03T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Transportmittel | `administrative_aufnahmeinformationen.transport.transportmittel` | `Transportmethod.value` | value (`CV`) | Mapped |

### Zuweisung (Typeofreferralsource)

No dataset mapping is selected for this area. **1** unresolved dataset datapoint(s) have CDA candidate or contextual evidence in this area; review their candidate cards under **Review required**.

### Ersteinschätzung (ersteinschatzung-section)

#### Ersteinschätzung (ersteinschatzung)

Template: `1.2.276.0.76.3.1.195.10.18` @ `2024-08-13T14:17:50`

Ersteinschätzung, kodiert

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Ergebnis der Ersteinschätzung | `ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung` | `ersteinschatzung.value` | Ersteinschätzung, kodiert (`CE`) | Mapped |
| Zeitpunkt der Ersteinschätzung | `ersteinschatzung.parameter_der_ersteinschatzung.zeitpunkt_der_ersteinschatzung` | `ersteinschatzung.effectiveTime` | Zeitpunkt der Ersteinschätzung (`TS`) | Mapped |

#### MTS-Präsentationsdiagramm (mts-prasentationsdiagramm)

Template: `1.2.276.0.76.3.1.195.10.21` @ `2024-08-13T10:50:15`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Präsentationsdiagramm | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm` | `mts-prasentationsdiagramm.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren ROT (mts-indikatoren-rot)

Template: `1.2.276.0.76.3.1.195.10.22` @ `2024-08-13T10:50:15`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren ROT | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot` | `mts-indikatoren-rot.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren ORANGE (mts-indikatoren-orange)

Template: `1.2.276.0.76.3.1.195.10.23` @ `2024-08-13T10:50:15`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren ORANGE | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange` | `mts-indikatoren-orange.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren GELB (mts-indikatoren-gelb)

Template: `1.2.276.0.76.3.1.195.10.24` @ `2024-08-13T10:50:15`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren GELB | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb` | `mts-indikatoren-gelb.value` | value (`CE`) | Mapped |

#### MTS-Indikatoren GRÜN (mts-indikatoren-grun)

Template: `1.2.276.0.76.3.1.195.10.25` @ `2024-08-13T10:50:15`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| MTS-Indikatoren GRÜN | `ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun` | `mts-indikatoren-grun.value` | value (`CE`) | Mapped |

#### ESI-Triagefaktoren (esi-triage-faktoren)

Template: `1.2.276.0.76.3.1.195.10.26` @ `2024-08-13T10:50:15`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| ESI-Triage | `ersteinschatzung.parameter_der_ersteinschatzung.esitriage` | `esi-triage-faktoren.value` | value (`CE`) | Mapped |

### Notfallanamnese (HistoryofPresentIllnessSection)

#### Unfallursache/-kinetik (unfallursache-kinetik)

Template: `1.2.276.0.76.3.1.195.10.29` @ `2024-08-13T18:37:55`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Unfallursache | `notfallanamnese.unfallanamnese.unfallursache` | `unfallursache-kinetik.observation.value` | value (`CD`) | Mapped |
| Unfallkinetik | `notfallanamnese.unfallanamnese.unfallkinetik` | `unfallursache-kinetik.observation.value.qualifier_name.code_67496-0.value` | value (`CV`) | Mapped |

#### Unfallart Traumaregister (unfallart-traumaregister)

Template: `1.2.276.0.76.3.1.195.10.30` @ `2024-08-13T18:37:55`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Unfallart TraumaRegister | `notfallanamnese.unfallanamnese.unfallart_trauma_register` | `unfallart-traumaregister.value` | value (`CE`) | Mapped |

#### Substanz-Einfluss (substanz-einfluss)

Template: `1.2.276.0.76.3.1.195.10.32` @ `2024-08-13T18:37:55`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss? | `notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq` | `substanz-einfluss.value` | value (`CE`) | Mapped |

### Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)

#### Beschwerden bei Vorstellung (Chiefcomplaintreasonforvisit)

Template: `1.2.276.0.76.10.3048` @ `2015-01-10T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Beschwerden bei Vorstellung (Freitext) | `notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_freitext` | `Chiefcomplaintreasonforvisit.text` | text (`SD.TEXT`) | Mapped |

#### Problem Observation (Text/CEDIS) (Problemobservationcedis)

Template: `1.2.276.0.76.10.4040` @ `2015-09-18T00:00:00`

CEDIS Kode

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Beschwerden bei Vorstellung (CEDIS) | `notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis` | `Problemobservationcedis.value` | CEDIS Kode (`CE`) | Mapped |

### Klinische Basisinformationen (ClinicalInformation)

#### Status Schwangerschaft (Pregnancystatus)

Template: `1.2.276.0.76.10.4043` @ `2015-03-03T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Schwangerschaft | `klinische_basisdaten_patient.schwangerschaft` | `Pregnancystatus.value` | value (`CV`) | Mapped |

#### Immunisierung Clostridium tetani (Clostridiumtetaniimmunization)

Template: `1.2.276.0.76.10.4044` @ `2015-09-18T00:00:00`

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
    <substanceAdministration classCode="SBADM" moodCode="EVN" negationInd="{Clostridiumtetaniimmunization.negationInd}" nullFlavor="{Clostridiumtetaniimmunization.nullFlavor}"/>
  </entry>
</section>
```

#### Modified Rankin Scale (Modifiedrankinscale)

Template: `1.2.276.0.76.10.4045` @ `2015-03-03T00:00:00`

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

#### Atemfrequenz (RespiratoryRate)

Template: `1.2.276.0.76.10.4030` @ `2014-09-16T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Atemfrequenz | `vitalparameter.atemfrequenz` | `RespiratoryRate.value` | value (`PQ`) | Mapped |

#### Pulsoximetrische Sauerstoffsättigung (pulsoximetrische_sauerstoffsattigung)

Template: `1.2.276.0.76.3.1.195.10.35` @ `2024-08-14T10:13:56`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Pulsoximetrische Sauerstoffsättigung | `vitalparameter.pulsoximetrische_sauerstoffsattigung` | `pulsoximetrische_sauerstoffsattigung.value` | value (`PQ`) | Mapped |

#### Blutdruck systolisch (Systolicbloodpressure)

Template: `1.2.276.0.76.10.4032` @ `2014-09-16T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Systolischer Blutdruck | `vitalparameter.blutdruck.systolischer_blutdruck` | `Systolicbloodpressure.value` | value (`PQ`) | Mapped |

#### Blutdruck diastolisch (blutdruck-diastolisch)

Template: `1.2.276.0.76.3.1.195.10.38` @ `2024-08-14T10:13:56`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Diastolischer Blutdruck | `vitalparameter.blutdruck.diastolischer_blutdruck` | `blutdruck-diastolisch.value` | value (`PQ`) | Mapped |

#### Herzfrequenz (HeartRate)

Template: `1.2.276.0.76.10.4033` @ `2014-09-16T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Herzfrequenz | `vitalparameter.herzfrequenz` | `HeartRate.value` | value (`PQ`) | Mapped |

#### Pulsfrequenz (pulsfrequenz)

Template: `1.2.276.0.76.3.1.195.10.40` @ `2024-08-14T10:13:56`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Pulsfrequenz | `vitalparameter.puls.pulsfrequenz` | `pulsfrequenz.value` | value (`PQ`) | Mapped |

#### Pupillenweite (Pupilsize)

Template: `1.2.276.0.76.10.4046` @ `2015-09-18T00:00:00`

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
      "structure": "fan-out-pupilsize-value",
      "branch": "right"
    },
    "vitalparameter.pupillenweite.pupillenweite_links": {
      "target": "Pupilsize_left.value",
      "cda_target": "Pupilsize.value",
      "structure": "fan-out-pupilsize-value",
      "branch": "left"
    }
  },
  "structures": {
    "fan-out-pupilsize-value": {
      "type": "fan_out",
      "branches": [
        {
          "source": "vitalparameter.pupillenweite.pupillenweite_rechts",
          "target": "Pupilsize_right.value",
          "cda_target": "Pupilsize.value",
          "branch": "right",
          "constants": {
            "Pupilsize.targetSiteCode": {
              "code": "362502000",
              "codeSystem": "2.16.840.1.113883.6.96",
              "displayName": "Entire right eye (body structure)"
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
              "code": "362503005",
              "codeSystem": "2.16.840.1.113883.6.96",
              "displayName": "Entire left eye (body structure)"
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
  <targetSiteCode code="362503005" codeSystem="2.16.840.1.113883.6.96" displayName="Entire left eye (body structure)"/>
</observation>
```

#### Pupillenreaktion (Pupilreaction)

Template: `1.2.276.0.76.10.4047` @ `2015-09-18T00:00:00`

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
      "structure": "fan-out-pupilreaction-value",
      "branch": "right"
    },
    "vitalparameter.pupillenreaktion.pupillenreaktion_links": {
      "target": "Pupilreaction_left.value",
      "cda_target": "Pupilreaction.value",
      "structure": "fan-out-pupilreaction-value",
      "branch": "left"
    }
  },
  "structures": {
    "fan-out-pupilreaction-value": {
      "type": "fan_out",
      "branches": [
        {
          "source": "vitalparameter.pupillenreaktion.pupillenreaktion_rechts",
          "target": "Pupilreaction_right.value",
          "cda_target": "Pupilreaction.value",
          "branch": "right",
          "constants": {
            "Pupilreaction.targetSiteCode": {
              "code": "362502000",
              "codeSystem": "2.16.840.1.113883.6.96",
              "displayName": "Entire right eye (body structure)"
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
              "code": "362503005",
              "codeSystem": "2.16.840.1.113883.6.96",
              "displayName": "Entire left eye (body structure)"
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
  <targetSiteCode code="362503005" codeSystem="2.16.840.1.113883.6.96" displayName="Entire left eye (body structure)"/>
</observation>
```

#### Körperkerntemperatur (BodyTemperatureCore)

Template: `1.2.276.0.76.10.4035` @ `2014-09-16T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Körperkerntemperatur | `vitalparameter.korperkerntemperatur.korperkerntemperatur` | `BodyTemperatureCore.value` | value (`PQ`) | Mapped |

#### Glasgow Coma Scale (GlasgowComaScale)

Template: `1.2.276.0.76.10.4034` @ `2014-09-16T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| GCS Augenöffnen | `scores.glasgow_coma_scale_gcs.gcs_augenoffnen` | `GlasgowComaScale.observation.entryRelationship_observation.code.code_9267-6.observation.value` | value (`PQ`) | Mapped |
| GCS verbale Antwort | `scores.glasgow_coma_scale_gcs.gcs_verbale_antwort` | `GlasgowComaScale.observation.entryRelationship_observation.code.code_9270-0.observation.value` | value (`PQ`) | Mapped |
| GCS motorische Antwort | `scores.glasgow_coma_scale_gcs.gcs_motorische_antwort` | `GlasgowComaScale.observation.entryRelationship_observation.code.code_9268-4.observation.value` | value (`PQ`) | Mapped |
| GCS Summe | `scores.glasgow_coma_scale_gcs.gcs_summe` | `GlasgowComaScale.observation.value` | value (`PQ`) | Mapped |

#### Schmerz (Painseverity)

Template: `1.2.276.0.76.10.4036` @ `2014-09-16T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Numerischen Rating Skala | `scores.schmerzmessung.numerischen_rating_skala` | `Painseverity.observation.value` | value (`PQ`) | Mapped |

### Diagnostik (Relevantdiagnostictestsorlaboratorydata)

#### Mikrobiologie angefordert (mikrobiologie_angefordert)

Template: `1.2.276.0.76.3.1.195.10.47` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Mikrobiologie angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.mikrobiologie_angefordert` | `mikrobiologie_angefordert.negationInd` | @negationInd (`bl`) | Mapped |

#### BGA angefordert (bga_angefordert)

Template: `1.2.276.0.76.3.1.195.10.48` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| BGA angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.bga_angefordert` | `bga_angefordert.negationInd` | @negationInd (`bl`) | Mapped |

#### EKG angefordert (ekg_angefordert)

Template: `1.2.276.0.76.3.1.195.10.49` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| EKG angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ekg_angefordert` | `ekg_angefordert.negationInd` | @negationInd (`bl`) | Mapped |

#### Sonographie angefordert (sonographie_angefordert)

Template: `1.2.276.0.76.3.1.195.10.50` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Sonographie angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.sonographie_angefordert` | `sonographie_angefordert.negationInd` | @negationInd (`bl`) | Mapped |

#### Röntgen-Thorax angefordert (rontgenthorax_angefordert)

Template: `1.2.276.0.76.3.1.195.10.51` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgenthorax angefordert | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_angefordert` | `rontgenthorax_angefordert.negationInd` | @negationInd (`bl`) | Mapped |

#### Röntgen-Thorax durchgeführt (Plainchestxray)

Template: `1.2.276.0.76.10.4050` @ `2015-09-18T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgen-Thorax durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenthorax_durchgefuhrt` | `Plainchestxray.negationInd` | @negationInd (`bl`) | Mapped |

#### Röntgen-Becken durchgeführt (Pelvisxray)

Template: `1.2.276.0.76.10.4052` @ `2015-09-18T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Röntgen-Becken durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenbecken_durchgefuhrt` | `Pelvisxray.negationInd` | @negationInd (`bl`) | Mapped |

#### CT Kopf durchgeführt (Computedtomographyofentirehead)

Template: `1.2.276.0.76.10.4055` @ `2015-09-18T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT Kopf durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_kopf_durchgefuhrt` | `Computedtomographyofentirehead.negationInd` | @negationInd (`bl`) | Mapped |

#### CT HWS durchgeführt (ct_hws_durchgefuhrt)

Template: `1.2.276.0.76.3.1.195.10.57` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT HWS durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_hws_durchgefuhrt` | `ct_hws_durchgefuhrt.negationInd` | @negationInd (`bl`) | Mapped |

#### CT Thorax durchgeführt (ct_thorax_durchgefuhrt)

Template: `1.2.276.0.76.3.1.195.10.58` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT Thorax durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_thorax_durchgefuhrt` | `ct_thorax_durchgefuhrt.negationInd` | @negationInd (`bl`) | Mapped |

#### CT Abdomen durchgeführt (ct_abdomen_durchgefuhrt)

Template: `1.2.276.0.76.3.1.195.10.59` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT Abdomen durchgeführt | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_abdomen_durchgefuhrt` | `ct_abdomen_durchgefuhrt.negationInd` | @negationInd (`bl`) | Mapped |

#### CT-/MR-/DS-Angiographie (ct-mr-ds-angiographie)

Template: `1.2.276.0.76.3.1.195.10.91` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| CT- bzw. MR- bzw. DS-Angiographie | `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie` | `ct-mr-ds-angiographie.value` | value (`CV`) | Mapped |

### Allergien und Unverträglichkeiten (AllergienUnvertraeglichkeiten)

No dataset mapping is selected for this area, and the analysis found no candidate that can be assigned uniquely to it. This can mean that the transaction has no corresponding datapoint, or that the available evidence is too weak or ambiguous to place here.

### Prozeduren und Maßnahmen (Patientcarenarrative)

#### Isolation (isolation)

Template: `1.2.276.0.76.3.1.195.10.65` @ `2024-08-14T18:08:14`

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
| Isolation Begründung | `masnahmen.isolation.isolation_begrundung` | `Isolationindication.observation.value@20240814` | value (`CV`) | Mapped |

### Medikamentöse Therapie (medikamentose-therapie)

No dataset mapping is selected for this area. **25** unresolved dataset datapoint(s) have CDA candidate or contextual evidence in this area; review their candidate cards under **Review required**.

### Abschlussdiagnosen (Basis) (Eddiagnosis)

#### Problem Observation (Abschlussdiagnose) (Problemobservationeddiagnosis)

Template: `1.2.276.0.76.10.4049` @ `2017-02-13T00:00:00`

Abschlussdiagnose (Freitext)

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Freitext Abschlussdiagnose | `abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose` | `Problemobservationeddiagnosis.observation.value.originalText@20170213` | Abschlussdiagnose (Freitext) (`ST`) | Mapped |
| ICD-10 | `abschlussdiagnosen.abschlussdiagnose.icd10` | `Problemobservationeddiagnosis.observation.value@20170213` | ICD-10 Kode (`CD`) | Mapped |
| Zusatzkennzeichen | `abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen` | `Problemobservationeddiagnosis.observation.negationInd@20170213` | @negationInd (`bl`) | Transform |

In `cda-mapping.json`, map **Freitext Abschlussdiagnose** by setting `fields["abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose"]` to `"Problemobservationeddiagnosis.observation.value.originalText@20170213"`.
In `cda-mapping.json`, map **ICD-10** by setting `fields["abschlussdiagnosen.abschlussdiagnose.icd10"]` to `"Problemobservationeddiagnosis.observation.value@20170213"`.
In `cda-mapping.json`, review the rule stored at `fields["abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen"]`; it writes **Zusatzkennzeichen** to `"Problemobservationeddiagnosis.observation.negationInd@20170213"`.

Abridged configuration excerpt — edit the corresponding entry in the full JSON file:

```json
{
  "fields": {
    "abschlussdiagnosen.abschlussdiagnose.freitext_abschlussdiagnose": "Problemobservationeddiagnosis.observation.value.originalText@20170213",
    "abschlussdiagnosen.abschlussdiagnose.icd10": "Problemobservationeddiagnosis.observation.value@20170213",
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
        "target": "Problemobservationeddiagnosis.observation.negationInd@20170213",
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
<observation classCode="OBS" moodCode="EVN">
  <value xsi:type="CD" code="{Problemobservationeddiagnosis.observation.value@20170213}">
    <originalText>{Problemobservationeddiagnosis.observation.value.originalText@20170213}</originalText>
  </value>
</observation>
<act classCode="ACT" moodCode="EVN">
  <entryRelationship typeCode="SUBJ">
    <observation classCode="OBS" moodCode="EVN" negationInd="{Problemobservationeddiagnosis.observation.negationInd@20170213}"/>
  </entryRelationship>
</act>
```

#### Diagnosesicherheit (Certainty)

Template: `1.2.276.0.76.10.90027` @ `2017-03-02T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zusatzkennzeichen | `abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen` | `Certainty.value` | value (`CV`) | Transform |

Resulting CDA placement — read-only consequence of the JSON configuration:

Text in `{braces}` names a generated CDA datapoint. It is an explanatory placeholder, not XML to enter manually.

```xml
<!-- Read-only illustration; do not copy this into cda-mapping.json. -->
<name code='8']="{Certainty.value}"/>
```

#### Problem Concern Act (Abschlussdiagnosen) (Problemconcernacteddiagnoses)

Template: `1.2.276.0.76.10.4048` @ `2016-06-22T00:00:00`

Sequenznummer wird weggelassen bei ungeordneten/gleichwertigen Diagnosen ohne führende Diagnose; zur Andeutung einer führenden Diagnose wird die Sequenznummer "1" verwendet (maxim…

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Führende Abschlussdiagnose? / Sequenznummer | `abschlussdiagnosen.abschlussdiagnose.fuhrende_abschlussdiagnoseq_sequenznummer` | `Problemconcernacteddiagnoses.act.entryRelationship.sequenceNumber@20160622` | sequenceNumber (`INT.POS`) | Mapped |

### Weiteres Procedere / Therapieempfehlung / Weiterbehandler (Eddisposition)

No dataset mapping is selected for this area. **1** unresolved dataset datapoint(s) have CDA candidate or contextual evidence in this area; review their candidate cards under **Review required**.

### Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)

#### Zusatzmodule (weitere Dokumentation) (Additionalmodulessection)

Template: `1.2.276.0.76.10.3057` @ `2015-03-30T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Notfallanamnese des Patienten | `notfallanamnese.notfallanamnese_des_patienten` | `Additionalmodulessection.text` | text (`SD.TEXT`) | Mapped |

### Addendum Dokumentationsinformationen (addendum-dokumentationsinformationen)

#### Zeitpunkt Entscheidung zur Verlegung / Entlassung (zeitpunkt_entscheidung_zur_verlegung__entlassung)

Template: `1.2.276.0.76.3.1.195.10.75` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt Entscheidung zur Verlegung / Entlassung | `administrative_verlegungsentlassungsinformationen.zeitpunkt_entscheidung_zur_verlegung_entlassung` | `zeitpunkt_entscheidung_zur_verlegung__entlassung.value` | value (`TS`) | Mapped |

#### Zeitpunkt Patient verlegungs- / entlassungsfähig (zeitpunkt_patient_verlegungs__entlassungsfahig)

Template: `1.2.276.0.76.3.1.195.10.76` @ `2024-05-24T00:00:00`

| Name in dataset | `model.json` datapoint | `cda-mapping.json` target | Name in CDA template | Status |
|---|---|---|---|---|
| Zeitpunkt Patient verlegungs- / entlassungsfähig | `administrative_verlegungsentlassungsinformationen.zeitpunkt_patient_verlegungs_entlassungsfahig` | `zeitpunkt_patient_verlegungs__entlassungsfahig.value` | value (`TS`) | Mapped |

## Review required

These dataset datapoints are explicitly `null` in `cda-mapping.json`.
That does not invalidate the mapping; it records that no executable target has been approved yet.
Each card distinguishes selectable targets from evidence that is useful only for navigation. Choose at most one selectable target unless the card says that a transform or structural rule is required.

### Postleitzahl

Dataset datapoint: `patient.anschrift.postleitzahl`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDArecordTargetnnar.recordTarget` | recordTarget | `—` | CONTEXT | CTX[20119] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Name

Dataset datapoint: `hauptkostentrager.kostentrager.name`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4` | templateId | `—` | CONTEXT | CTX[21578] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Identifikation

Dataset datapoint: `hauptkostentrager.versicherungsverhaltnis.identifikation`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `hauptkostentrager.participant_templateId_root_1.2.276.0.76.3.1.195.10.4` | templateId | `—` | CONTEXT | CTX[21581] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zuweisung

Dataset datapoint: `administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Referralfrom.act.participant.participantRole.code` | code | `CE` | STRONG | SPEC → TA | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Medizinische Begleitung

Dataset datapoint: `administrative_aufnahmeinformationen.transport.medizinische_begleitung`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `medizinische-begleitung.code` | code | `CV` | WEAK | VS(1.2.276.0.76.3.1.195.11.2) | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Direkter Arztkontakt

Dataset datapoint: `ersteinschatzung.direkter_arztkontakt`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `direkter_arztkontakt.code` | code | `CE` | WEAK | TERM(FLN-13) | evidence only |
| `direkter_arztkontakt.value` | value | `CE` | WEAK | TERM(305660003) | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### verwendetes Ersteinschätzungssystem

Dataset datapoint: `ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `ersteinschatzung.methodCode` | verwendetes Ersteinschätzungssystem | `CD` | WEAK | VS(1.2.276.0.76.3.1.195.11.12) | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Ereigniseintritt

Dataset datapoint: `notfallanamnese.beschwerden_bei_vorstellung.ereigniseintritt`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Chiefcomplaintreasonforvisit.section` | section | `—` | CONTEXT | CTX[10034] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Fahrzeug des Verunfallten

Dataset datapoint: `notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `unfall-anamnese.act.participant.participantRole.code` | code | `CE` | WEAK | VS(1.2.276.0.76.3.1.195.11.8) | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Allergie Beschreibung

Dataset datapoint: `klinische_basisdaten_patient.allergien.allergie_beschreibung`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `AllergienUnvertraeglichkeiten.section` | section | `—` | CONTEXT | CTX[10009] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Agens

Dataset datapoint: `klinische_basisdaten_patient.allergien.agens`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `AllergienUnvertraeglichkeiten.section` | section | `—` | CONTEXT | CTX[10009] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Antibiotikaallergie

Dataset datapoint: `klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.antibiotikaallergie`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `AllergienUnvertraeglichkeiten.section` | section | `—` | CONTEXT | CTX[29219] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Kontrastmittelallergie

Dataset datapoint: `klinische_basisdaten_patient.allergien.abgeleitete_informationen_zur_weitergabe.kontrastmittelallergie`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `AllergienUnvertraeglichkeiten.section` | section | `—` | CONTEXT | CTX[29219] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeitpunkt

Dataset datapoint: `vitalparameter.zeitpunkt`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `VitalSignsSection.section@20251201` | section | `—` | CONTEXT | CTX[10006] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Untersuchungsregion

Dataset datapoint: `diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Relevantdiagnostictestsorlaboratorydata.section@20251201` | section | `—` | CONTEXT | CTX[20727] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Untersuchungsregion

Dataset datapoint: `diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Relevantdiagnostictestsorlaboratorydata.section@20251201` | section | `—` | CONTEXT | CTX[20728] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Röntgen-Wirbelsäule durchgeführt

Dataset datapoint: `diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.rontgenwirbelsaule_durchgefuhrt`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Relevantdiagnostictestsorlaboratorydata.section@20251201` | section | `—` | CONTEXT | CTX[21762] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeitpunkt

Dataset datapoint: `diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitpunkt`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardDiagnostik.observation` | observation | `—` | CONTEXT | CTX[29608] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeitraum

Dataset datapoint: `diagnostik.wildcard_diagnostik.klinisch_relevante_zeitangaben.zeitraum`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardDiagnostik.observation` | observation | `—` | CONTEXT | CTX[29608] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Code

Dataset datapoint: `diagnostik.wildcard_diagnostik.code`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardDiagnostik.observation` | observation | `—` | CONTEXT | CTX[29601] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Wert

Dataset datapoint: `diagnostik.wildcard_diagnostik.wert`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardDiagnostik.observation` | observation | `—` | CONTEXT | CTX[29601] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Definitorischer Link

Dataset datapoint: `diagnostik.wildcard_diagnostik.definitorischer_link`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardDiagnostik.observation` | observation | `—` | CONTEXT | CTX[29601] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeitpunkt

Dataset datapoint: `masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitpunkt`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardTherapie.procedure` | procedure | `—` | CONTEXT | CTX[29613] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeitraum

Dataset datapoint: `masnahmen.wildcard_therapie.klinisch_relevante_zeitangaben.zeitraum`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardTherapie.procedure` | procedure | `—` | CONTEXT | CTX[29613] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Code

Dataset datapoint: `masnahmen.wildcard_therapie.code`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardTherapie.procedure` | procedure | `—` | CONTEXT | CTX[29610] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Definitorischer Link

Dataset datapoint: `masnahmen.wildcard_therapie.definitorischer_link`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `WildcardTherapie.procedure` | procedure | `—` | CONTEXT | CTX[29610] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### ICD-10 Sekundärdiagnose

Dataset datapoint: `abschlussdiagnosen.abschlussdiagnose.icd10_sekundardiagnose`

**Why review is required:** The best-supported CDA target is shared with another dataset field. A repetition, fan-out, or merge rule is required before it is executable.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Problemobservationeddiagnosis.observation.value@20170213` | ICD-10 Kode | `CD` | WEAK | ADAPT → SPEC → TA_VERSION | rule required |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Define the required repetition or merge rule.

### Procedere

Dataset datapoint: `weiteres_procedere_therapieempfehlung_weiterbehandler.procedere`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Eddisposition.section` | section | `—` | CONTEXT | CTX[10014] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Typ Verlegung

Dataset datapoint: `administrative_verlegungsentlassungsinformationen.typ_verlegung`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Referralto.act.code@20251201` | code | `CE` | STRONG | SPEC → TA | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Typ Entlassung

Dataset datapoint: `administrative_verlegungsentlassungsinformationen.typ_entlassung`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.dischargeDispositionCode@20160601` | dischargeDispositionCode | `CV` | STRONG | SPEC → TA | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeit bis zum Export

Dataset datapoint: `dokumentationsinformationen.berechnete_zeitintervalle.zeit_bis_zum_export`

**Why review is required:** Related CDA evidence exists, but none of it is safe enough to select as an executable target automatically.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` | Aufnahmezeitpunkt (Datum und Zeit), Zeitangabe genau bis auf die Minute | `TS.DATE.MIN` | WEAK | ADAPT → ADAPT → SPEC → INHERIT^-1 → TA | evidence only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Name des EDIS

Dataset datapoint: `dokumentationsinformationen.datenbereitstellung.name_des_edis`

**Why review is required:** No usable CDA target evidence was found for this dataset datapoint.

No CDA candidates were found. There is therefore no generated target to choose from; keep the value `null` unless manual template review identifies a suitable representation.

**Action:** Find a representation manually, or retain `null`.

### Version des EDIS

Dataset datapoint: `dokumentationsinformationen.datenbereitstellung.version_des_edis`

**Why review is required:** No usable CDA target evidence was found for this dataset datapoint.

No CDA candidates were found. There is therefore no generated target to choose from; keep the value `null` unless manual template review identifies a suitable representation.

**Action:** Find a representation manually, or retain `null`.

### Arzneimittel-Name

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelname`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[487] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Arzneimittel-Code

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.arzneimittel.arzneimittelcode`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[487] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Darreichungsform

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.darreichungsform`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[483] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Wirkstoff-Name

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffname`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[484] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Wirkstoff-Code

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstoffcode`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[484] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Arzneilich wirksamer Bestandteil?

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.arzneilich_wirksamer_bestandteilq`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[484] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Wirkstärke

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.wirkstoff.wirkstarke`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[484] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Chargennummer

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.medikament.chargennummer`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[483] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### (Start)zeitpunkt der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.startzeitpunkt_der_anwendung`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[496] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Stoppzeitpunkt der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.anwendungszeiten.stoppzeitpunkt_der_anwendung`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[496] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Sequenznummer

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.sequenznummer`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Freitext

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.freitext`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zusätzliche Hinweise

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zusatzliche_hinweise`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Anweisungen zur Einnahme

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.anweisungen_zur_einnahme`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Zeitpunkt

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.zeitpunkt`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[525] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Ereignis

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.ereignis`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[527] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Offset

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.zeitangabe.ereignisbezogene_wiederholung.offset`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[527] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Einnahme bei Bedarf

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.einnahme_bei_bedarf`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Körperstelle

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.korperstelle`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Art der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.art_der_anwendung`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Methode der Anwendung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.methode_der_anwendung`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Dosismenge und -einheit

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.dosismenge_und_einheit`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Kontinuierliche Gabe (Rate)

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.dosierung.kontinuierliche_gabe_rate`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[522] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Begründungstext

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.grund_der_medikation.begrundungstext`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[520] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

### Kodierte Begründung

Dataset datapoint: `masnahmen.medikamentose_therapie.medikation.grund_der_medikation.kodierte_begrundung`

**Why review is required:** The evidence reaches this CDA structure, but not a writable value-bearing element. The context is shown for navigation only.

| CDA target | Name / explanation in CDA template | Datatype | Confidence | Evidence | Result |
|---|---|---|---|---|---|
| `Medikation.substanceAdministration` | substanceAdministration | `—` | CONTEXT | CTX[520] | context only |

None of these rows is directly selectable. Do not copy a context-only or evidence-only target into the JSON; use it to investigate the template, or leave this datapoint `null`.

**Action:** Use the evidence to find a value-bearing target, or retain `null`.

## Structural rules

These rules create or coordinate CDA occurrences; they are configuration, not XML edits.

- `coalesce-cdaencompassingencounter-componentof-encompassingencounter-effectivetime-low-20160601`: Assign `CDAEncompassingEncounter.componentOf.encompassingEncounter.effectiveTime.low@20160601` from the configured sources using `equal_or_error`.

- `fan-out-pupilsize-value`: Create one discriminated CDA occurrence for each present branch: `vitalparameter.pupillenweite.pupillenweite_rechts` → `{Pupilsize_right.value}`; `vitalparameter.pupillenweite.pupillenweite_links` → `{Pupilsize_left.value}`.

- `fan-out-pupilreaction-value`: Create one discriminated CDA occurrence for each present branch: `vitalparameter.pupillenreaktion.pupillenreaktion_rechts` → `{Pupilreaction_right.value}`; `vitalparameter.pupillenreaktion.pupillenreaktion_links` → `{Pupilreaction_left.value}`.

- `for-each-vitalparameter`: Create one `VitalSignsSection.section.entry@20251201` occurrence for every `vitalparameter` occurrence.

- `for-each-abschlussdiagnosen-abschlussdiagnose`: Create one `Problemconcernacteddiagnoses.act.entryRelationship@20160622` occurrence for every `abschlussdiagnosen.abschlussdiagnose` occurrence.

## Required CDA completion

General rule: an active required leaf without a mapped value receives `nullFlavor="NI"`. A real mapped value always takes precedence.

The following reviewed targets use a more specific default:

| CDA template value | Default | Reason |
|---|---|---|
| Problem Observation (Abschlussdiagnose) → low `{Problemobservationeddiagnosis.observation.effectiveTime.low@20170213}` | `nullFlavor="UNK"` | The transaction contains no diagnosis-onset datapoint; the required onset therefore exists with an unknown value. |

## Detailed evidence

Candidate scores, rejected alternatives, evidence chains and unresolved mappings are
kept in `cda-mapping-details.md` and `mapping-audit.json` so this guide remains concise.
