<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <title>Schematron file for transaction Notaufnahmeregister Transitionsversion 2026 (2.16.840.1.113883.2.6.60.3.4.60 2026-03-25T00:00:00)</title>
   <ns uri="urn:hl7-org:v3" prefix="hl7"/>
   <ns uri="urn:hl7-org:v3" prefix="cda"/>
   <ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
   <!-- Add extra namespaces -->
   <ns uri="http://www.json.org" prefix="ns0"/>
   <ns uri="urn:art-decor:example" prefix="ns3"/>
   <ns uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
   <!-- Include realm specific schematron -->
   <!-- Include scenario label -->
   <let name="scenariolabel" value="'nartrv2026-2'"/>
   <!-- Include datatype abstract schematrons -->
   <pattern>
      <include href="include/DTr1_AD.sch"/>
      <include href="include/DTr1_AD.CA.sch"/>
      <include href="include/DTr1_AD.CA.BASIC.sch"/>
      <include href="include/DTr1_AD.DE.sch"/>
      <include href="include/DTr1_AD.EPSOS.sch"/>
      <include href="include/DTr1_AD.IPS.sch"/>
      <include href="include/DTr1_AD.NL.sch"/>
      <include href="include/DTr1_ADXP.sch"/>
      <include href="include/DTr1_ANY.sch"/>
      <include href="include/DTr1_BIN.sch"/>
      <include href="include/DTr1_BL.sch"/>
      <include href="include/DTr1_BN.sch"/>
      <include href="include/DTr1_BXIT_IVL_PQ.sch"/>
      <include href="include/DTr1_CD.sch"/>
      <include href="include/DTr1_CD.EPSOS.sch"/>
      <include href="include/DTr1_CD.IPS.sch"/>
      <include href="include/DTr1_CD.SDTC.sch"/>
      <include href="include/DTr1_CE.sch"/>
      <include href="include/DTr1_CE.EPSOS.sch"/>
      <include href="include/DTr1_CE.IPS.sch"/>
      <include href="include/DTr1_CO.sch"/>
      <include href="include/DTr1_CO.EPSOS.sch"/>
      <include href="include/DTr1_CR.sch"/>
      <include href="include/DTr1_CS.sch"/>
      <include href="include/DTr1_CS.LANG.sch"/>
      <include href="include/DTr1_CV.sch"/>
      <include href="include/DTr1_CV.EPSOS.sch"/>
      <include href="include/DTr1_CV.IPS.sch"/>
      <include href="include/DTr1_ED.sch"/>
      <include href="include/DTr1_EIVL.event.sch"/>
      <include href="include/DTr1_EIVL_TS.sch"/>
      <include href="include/DTr1_EN.sch"/>
      <include href="include/DTr1_ENXP.sch"/>
      <include href="include/DTr1_GLIST.sch"/>
      <include href="include/DTr1_GLIST_PQ.sch"/>
      <include href="include/DTr1_GLIST_TS.sch"/>
      <include href="include/DTr1_hl7nl-INT.sch"/>
      <include href="include/DTr1_hl7nl-IVL_QTY.sch"/>
      <include href="include/DTr1_hl7nl-IVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PIVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PQ.sch"/>
      <include href="include/DTr1_hl7nl-QSET_QTY.sch"/>
      <include href="include/DTr1_hl7nl-RTO.sch"/>
      <include href="include/DTr1_hl7nl-TS.sch"/>
      <include href="include/DTr1_II.sch"/>
      <include href="include/DTr1_II.AT.ATU.sch"/>
      <include href="include/DTr1_II.AT.BLZ.sch"/>
      <include href="include/DTr1_II.AT.DVR.sch"/>
      <include href="include/DTr1_II.AT.KTONR.sch"/>
      <include href="include/DTr1_II.EPSOS.sch"/>
      <include href="include/DTr1_II.NL.AGB.sch"/>
      <include href="include/DTr1_II.NL.BIG.sch"/>
      <include href="include/DTr1_II.NL.BSN.sch"/>
      <include href="include/DTr1_II.NL.URA.sch"/>
      <include href="include/DTr1_II.NL.UZI.sch"/>
      <include href="include/DTr1_INT.sch"/>
      <include href="include/DTr1_INT.NONNEG.sch"/>
      <include href="include/DTr1_INT.POS.sch"/>
      <include href="include/DTr1_IVL_INT.sch"/>
      <include href="include/DTr1_IVL_MO.sch"/>
      <include href="include/DTr1_IVL_PQ.sch"/>
      <include href="include/DTr1_IVL_REAL.sch"/>
      <include href="include/DTr1_IVL_TS.sch"/>
      <include href="include/DTr1_IVL_TS.CH.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_IVL_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_IVXB_INT.sch"/>
      <include href="include/DTr1_IVXB_MO.sch"/>
      <include href="include/DTr1_IVXB_PQ.sch"/>
      <include href="include/DTr1_IVXB_REAL.sch"/>
      <include href="include/DTr1_IVXB_TS.sch"/>
      <include href="include/DTr1_list_int.sch"/>
      <include href="include/DTr1_MO.sch"/>
      <include href="include/DTr1_ON.sch"/>
      <include href="include/DTr1_PIVL_TS.sch"/>
      <include href="include/DTr1_PN.sch"/>
      <include href="include/DTr1_PN.CA.sch"/>
      <include href="include/DTr1_PN.NL.sch"/>
      <include href="include/DTr1_PQ.sch"/>
      <include href="include/DTr1_PQR.sch"/>
      <include href="include/DTr1_QTY.sch"/>
      <include href="include/DTr1_REAL.sch"/>
      <include href="include/DTr1_REAL.NONNEG.sch"/>
      <include href="include/DTr1_REAL.POS.sch"/>
      <include href="include/DTr1_RTO.sch"/>
      <include href="include/DTr1_RTO_PQ_PQ.sch"/>
      <include href="include/DTr1_RTO_QTY_QTY.sch"/>
      <include href="include/DTr1_SC.sch"/>
      <include href="include/DTr1_SD.TEXT.sch"/>
      <include href="include/DTr1_SLIST.sch"/>
      <include href="include/DTr1_SLIST_PQ.sch"/>
      <include href="include/DTr1_SLIST_TS.sch"/>
      <include href="include/DTr1_ST.sch"/>
      <include href="include/DTr1_SXCM_INT.sch"/>
      <include href="include/DTr1_SXCM_MO.sch"/>
      <include href="include/DTr1_SXCM_PQ.sch"/>
      <include href="include/DTr1_SXCM_REAL.sch"/>
      <include href="include/DTr1_SXCM_TS.sch"/>
      <include href="include/DTr1_SXPR_TS.sch"/>
      <include href="include/DTr1_TEL.sch"/>
      <include href="include/DTr1_TEL.AT.sch"/>
      <include href="include/DTr1_TEL.CA.EMAIL.sch"/>
      <include href="include/DTr1_TEL.CA.PHONE.sch"/>
      <include href="include/DTr1_TEL.EPSOS.sch"/>
      <include href="include/DTr1_TEL.IPS.sch"/>
      <include href="include/DTr1_TEL.NL.EXTENDED.sch"/>
      <include href="include/DTr1_thumbnail.sch"/>
      <include href="include/DTr1_TN.sch"/>
      <include href="include/DTr1_TS.sch"/>
      <include href="include/DTr1_TS.AT.TZ.sch"/>
      <include href="include/DTr1_TS.AT.VAR.sch"/>
      <include href="include/DTr1_TS.CH.TZ.sch"/>
      <include href="include/DTr1_TS.DATE.sch"/>
      <include href="include/DTr1_TS.DATE.FULL.sch"/>
      <include href="include/DTr1_TS.DATE.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIME.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIMETZ.MIN.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_URL.sch"/>
      <include href="include/DTr1_URL.NL.EXTENDED.sch"/>
   </pattern>
   <!-- Include the project schematrons related to scenario nartrv2026-2 -->
   <!-- NotaufnahmeregisterTransitionsversion -->
   <pattern>
      <title>Notaufnahmeregister Transitionsversion</title>
      <rule fpi="RUL-EXPEL" context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]"
                 see="generated/documentation/tmp-1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.html">(Notaufnahmeregister Transitionsversion): Instance is expected to have the following element: descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.276.0.76.3.1.195.10.93']]</assert>
      </rule>
   </pattern>
   <include href="include/1.2.276.0.76.3.1.195.10.93-2026-03-25T110407.sch"/>
   <include href="include/1.2.276.0.76.3.1.195.10.93-2026-03-25T110407-closed.sch"/>
   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->
   <!-- Transportmethod -->
   <include href="include/1.2.276.0.76.10.3045-2025-12-01T000000.sch"/>
   <!-- Typeofreferralsource -->
   <include href="include/1.2.276.0.76.10.3046-2015-01-10T000000.sch"/>
   <!-- ClinicalInformation -->
   <include href="include/1.2.276.0.76.10.3047-2016-08-02T000000.sch"/>
   <!-- Chiefcomplaintreasonforvisit -->
   <include href="include/1.2.276.0.76.10.3048-2015-01-10T000000.sch"/>
   <!-- Relevantdiagnostictestsorlaboratorydata -->
   <include href="include/1.2.276.0.76.10.3050-2025-12-01T000000.sch"/>
   <!-- AllergienUnvertraeglichkeiten -->
   <include href="include/1.2.276.0.76.10.3051-2015-03-26T000000.sch"/>
   <!-- HistoryofPresentIllnessSection -->
   <include href="include/1.2.276.0.76.10.3053-2025-12-01T000000.sch"/>
   <!-- Patientcarenarrative -->
   <include href="include/1.2.276.0.76.10.3054-2025-12-01T000000.sch"/>
   <!-- Eddiagnosis -->
   <include href="include/1.2.276.0.76.10.3055-2016-06-22T000000.sch"/>
   <!-- Eddisposition -->
   <include href="include/1.2.276.0.76.10.3056-2015-01-10T000000.sch"/>
   <!-- Additionalmodulessection -->
   <include href="include/1.2.276.0.76.10.3057-2015-03-30T000000.sch"/>
   <!-- RespiratoryRate -->
   <include href="include/1.2.276.0.76.10.4030-2014-09-16T000000.sch"/>
   <!-- Systolicbloodpressure -->
   <include href="include/1.2.276.0.76.10.4032-2014-09-16T000000.sch"/>
   <!-- HeartRate -->
   <include href="include/1.2.276.0.76.10.4033-2014-09-16T000000.sch"/>
   <!-- GlasgowComaScale -->
   <include href="include/1.2.276.0.76.10.4034-2014-09-16T000000.sch"/>
   <!-- BodyTemperatureCore -->
   <include href="include/1.2.276.0.76.10.4035-2014-09-16T000000.sch"/>
   <!-- Painseverity -->
   <include href="include/1.2.276.0.76.10.4036-2014-09-16T000000.sch"/>
   <!-- Transportmethod -->
   <include href="include/1.2.276.0.76.10.4037-2015-03-03T000000.sch"/>
   <!-- Referralfrom -->
   <include href="include/1.2.276.0.76.10.4038-2015-09-18T000000.sch"/>
   <!-- Problemconcernactcedis -->
   <include href="include/1.2.276.0.76.10.4039-2015-03-03T000000.sch"/>
   <!-- Problemobservationcedis -->
   <include href="include/1.2.276.0.76.10.4040-2015-09-18T000000.sch"/>
   <!-- Pregnancystatus -->
   <include href="include/1.2.276.0.76.10.4043-2015-03-03T000000.sch"/>
   <!-- Clostridiumtetaniimmunization -->
   <include href="include/1.2.276.0.76.10.4044-2015-09-18T000000.sch"/>
   <!-- Modifiedrankinscale -->
   <include href="include/1.2.276.0.76.10.4045-2015-03-03T000000.sch"/>
   <!-- Pupilsize -->
   <include href="include/1.2.276.0.76.10.4046-2015-09-18T000000.sch"/>
   <!-- Pupilreaction -->
   <include href="include/1.2.276.0.76.10.4047-2015-09-18T000000.sch"/>
   <!-- Problemconcernacteddiagnoses -->
   <include href="include/1.2.276.0.76.10.4048-2016-06-22T000000.sch"/>
   <!-- Problemobservationeddiagnosis -->
   <include href="include/1.2.276.0.76.10.4049-2017-02-13T000000.sch"/>
   <!-- Plainchestxray -->
   <include href="include/1.2.276.0.76.10.4050-2015-09-18T000000.sch"/>
   <!-- Radiographyofspine -->
   <include href="include/1.2.276.0.76.10.4051-2015-09-18T000000.sch"/>
   <!-- Pelvisxray -->
   <include href="include/1.2.276.0.76.10.4052-2015-09-18T000000.sch"/>
   <!-- Plainradiographylimbstructure -->
   <include href="include/1.2.276.0.76.10.4053-2015-09-18T000000.sch"/>
   <!-- Plainradiography -->
   <include href="include/1.2.276.0.76.10.4054-2015-09-18T000000.sch"/>
   <!-- Computedtomographyofentirehead -->
   <include href="include/1.2.276.0.76.10.4055-2015-09-18T000000.sch"/>
   <!-- Computedtomographyscanwholebody -->
   <include href="include/1.2.276.0.76.10.4056-2015-09-18T000000.sch"/>
   <!-- Laboratorytest -->
   <include href="include/1.2.276.0.76.10.4057-2015-09-18T000000.sch"/>
   <!-- Magneticresonanceimaging -->
   <include href="include/1.2.276.0.76.10.4058-2015-09-18T000000.sch"/>
   <!-- Bloodgasanalysis -->
   <include href="include/1.2.276.0.76.10.4059-2015-09-18T000000.sch"/>
   <!-- Urinalysisreagentstripwithoutmicroscopy -->
   <include href="include/1.2.276.0.76.10.4060-2015-09-18T000000.sch"/>
   <!-- Twelveleadelectrocardiogram -->
   <include href="include/1.2.276.0.76.10.4061-2015-09-18T000000.sch"/>
   <!-- Diagnosticultrasonography -->
   <include href="include/1.2.276.0.76.10.4062-2015-09-18T000000.sch"/>
   <!-- Computerizedaxialtomography -->
   <include href="include/1.2.276.0.76.10.4063-2015-09-18T000000.sch"/>
   <!-- Echocardiography -->
   <include href="include/1.2.276.0.76.10.4064-2015-09-18T000000.sch"/>
   <!-- Allergyconcernact -->
   <include href="include/1.2.276.0.76.10.4065-2015-03-27T000000.sch"/>
   <!-- Allergyintoleranceobservation -->
   <include href="include/1.2.276.0.76.10.4066-2015-09-18T000000.sch"/>
   <!-- Referralto -->
   <include href="include/1.2.276.0.76.10.4067-2025-12-01T000000.sch"/>
   <!-- Additionalexternalocuments -->
   <include href="include/1.2.276.0.76.10.4070-2015-03-30T000000.sch"/>
   <!-- ExternalDocumentReference -->
   <include href="include/1.2.276.0.76.10.4071-2015-03-30T000000.sch"/>
   <!-- ProblemconcernactMDRO -->
   <include href="include/1.2.276.0.76.10.4072-2017-03-01T000000.sch"/>
   <!-- ProblemobservationMDRO -->
   <include href="include/1.2.276.0.76.10.4073-2017-03-01T000000.sch"/>
   <!-- medizinische-begleitung -->
   <include href="include/1.2.276.0.76.3.1.195.10.12-2024-08-13T125659.sch"/>
   <!-- ersteinschatzung-section -->
   <include href="include/1.2.276.0.76.3.1.195.10.16-2024-08-13T132558.sch"/>
   <!-- direkter_arztkontakt -->
   <include href="include/1.2.276.0.76.3.1.195.10.17-2024-05-24T000000.sch"/>
   <!-- ersteinschatzung -->
   <include href="include/1.2.276.0.76.3.1.195.10.18-2024-08-13T141750.sch"/>
   <!-- manchester-triage-system -->
   <include href="include/1.2.276.0.76.3.1.195.10.19-2024-08-13T143845.sch"/>
   <!-- emergency-severity-index -->
   <include href="include/1.2.276.0.76.3.1.195.10.20-2024-08-13T143845.sch"/>
   <!-- mts-prasentationsdiagramm -->
   <include href="include/1.2.276.0.76.3.1.195.10.21-2024-08-13T105015.sch"/>
   <!-- mts-indikatoren-rot -->
   <include href="include/1.2.276.0.76.3.1.195.10.22-2024-08-13T105015.sch"/>
   <!-- mts-indikatoren-orange -->
   <include href="include/1.2.276.0.76.3.1.195.10.23-2024-08-13T105015.sch"/>
   <!-- mts-indikatoren-gelb -->
   <include href="include/1.2.276.0.76.3.1.195.10.24-2024-08-13T105015.sch"/>
   <!-- mts-indikatoren-grun -->
   <include href="include/1.2.276.0.76.3.1.195.10.25-2024-08-13T105015.sch"/>
   <!-- esi-triage-faktoren -->
   <include href="include/1.2.276.0.76.3.1.195.10.26-2024-08-13T105015.sch"/>
   <!-- unfall-anamnese -->
   <include href="include/1.2.276.0.76.3.1.195.10.28-2024-08-13T183456.sch"/>
   <!-- unfallursache-kinetik -->
   <include href="include/1.2.276.0.76.3.1.195.10.29-2024-08-13T183755.sch"/>
   <!-- unfallart-traumaregister -->
   <include href="include/1.2.276.0.76.3.1.195.10.30-2024-08-13T183755.sch"/>
   <!-- substanz-einfluss -->
   <include href="include/1.2.276.0.76.3.1.195.10.32-2024-08-13T183755.sch"/>
   <!-- pulsoximetrische_sauerstoffsattigung -->
   <include href="include/1.2.276.0.76.3.1.195.10.35-2024-08-14T101356.sch"/>
   <!-- blutdruck-diastolisch -->
   <include href="include/1.2.276.0.76.3.1.195.10.38-2024-08-14T101356.sch"/>
   <!-- pulsfrequenz -->
   <include href="include/1.2.276.0.76.3.1.195.10.40-2024-08-14T101356.sch"/>
   <!-- mikrobiologie_angefordert -->
   <include href="include/1.2.276.0.76.3.1.195.10.47-2024-05-24T000000.sch"/>
   <!-- bga_angefordert -->
   <include href="include/1.2.276.0.76.3.1.195.10.48-2024-05-24T000000.sch"/>
   <!-- ekg_angefordert -->
   <include href="include/1.2.276.0.76.3.1.195.10.49-2024-05-24T000000.sch"/>
   <!-- sonographie_angefordert -->
   <include href="include/1.2.276.0.76.3.1.195.10.50-2024-05-24T000000.sch"/>
   <!-- rontgenthorax_angefordert -->
   <include href="include/1.2.276.0.76.3.1.195.10.51-2024-05-24T000000.sch"/>
   <!-- ct_hws_durchgefuhrt -->
   <include href="include/1.2.276.0.76.3.1.195.10.57-2024-05-24T000000.sch"/>
   <!-- ct_thorax_durchgefuhrt -->
   <include href="include/1.2.276.0.76.3.1.195.10.58-2024-05-24T000000.sch"/>
   <!-- ct_abdomen_durchgefuhrt -->
   <include href="include/1.2.276.0.76.3.1.195.10.59-2024-05-24T000000.sch"/>
   <!-- ct_extremitaten_durchgefuhrt -->
   <include href="include/1.2.276.0.76.3.1.195.10.60-2024-05-24T000000.sch"/>
   <!-- isolation -->
   <include href="include/1.2.276.0.76.3.1.195.10.65-2024-08-14T180814.sch"/>
   <!-- Isolationindication -->
   <include href="include/1.2.276.0.76.3.1.195.10.66-2024-08-14T181444.sch"/>
   <!-- Medikation -->
   <include href="include/1.2.276.0.76.3.1.195.10.67-2023-12-03T000000.sch"/>
   <!-- addendum-dokumentationsinformationen -->
   <include href="include/1.2.276.0.76.3.1.195.10.73-2024-08-15T110815.sch"/>
   <!-- zeitpunkt_entscheidung_zur_verlegung__entlassung -->
   <include href="include/1.2.276.0.76.3.1.195.10.75-2024-05-24T000000.sch"/>
   <!-- zeitpunkt_patient_verlegungs__entlassungsfahig -->
   <include href="include/1.2.276.0.76.3.1.195.10.76-2024-05-24T000000.sch"/>
   <!-- zeitpunkt_patient_verlegt__entlassen_nach -->
   <include href="include/1.2.276.0.76.3.1.195.10.77-2024-05-24T000000.sch"/>
   <!-- zeit_bis_zum_export -->
   <include href="include/1.2.276.0.76.3.1.195.10.85-2024-05-24T000000.sch"/>
   <!-- name_des_edis -->
   <include href="include/1.2.276.0.76.3.1.195.10.86-2024-05-24T000000.sch"/>
   <!-- version_des_edis -->
   <include href="include/1.2.276.0.76.3.1.195.10.87-2024-05-24T000000.sch"/>
   <!-- WildcardDiagnostik -->
   <include href="include/1.2.276.0.76.3.1.195.10.89-2024-08-18T215030.sch"/>
   <!-- WildcardTherapie -->
   <include href="include/1.2.276.0.76.3.1.195.10.90-2024-08-18T215030.sch"/>
   <!-- ct-mr-ds-angiographie -->
   <include href="include/1.2.276.0.76.3.1.195.10.91-2024-05-24T000000.sch"/>
   <!-- vitalparametercontainer -->
   <include href="include/1.2.276.0.76.3.1.195.10.95-2026-04-27T153906.sch"/>
   <!-- VitalSignsSection -->
   <include href="include/1.2.276.0.76.3.1.195.10.96-2025-12-01T000000.sch"/>
   <!-- UVMedicationInformationsimple -->
   <include href="include/2.16.840.1.113883.10.21.4.10-2021-09-29T191516.sch"/>
   <!-- UVSubordinateadministration -->
   <include href="include/2.16.840.1.113883.10.21.4.6-2023-01-30T093600.sch"/>
</schema>
