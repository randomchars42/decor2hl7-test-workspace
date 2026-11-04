# Build diagnostics

**Status:** DEGRADED

The compiler used only downloaded artifacts with their exact requested identity. It did not replace a missing revision with another revision.

## Degraded artifacts (crawl)

| Artifact | Roles | Status | Build effect |
|---|---|---|---|
| `codesystem:1.2.276.0.76.3.1.195.5.53@2019-12-30T00:00:00` | expansion-support | waived | Affected formal code membership or expansion remains incomplete. |
| `valueset:1.2.276.0.76.11.53` | formal-terminology | partial-expansion | Affected formal code membership or expansion remains incomplete. |

## Degraded artifacts affecting this build

| Artifact | Consulted by | Status | Build effect |
|---|---|---|---|
| `valueset:1.2.276.0.76.11.53` | selected-field-or-validator-value-set | partial-expansion | Affected formal code membership or expansion remains incomplete. |
| `codesystem:1.2.276.0.76.3.1.195.5.53@2019-12-30T00:00:00` | selected-value-set-expansion | waived | Affected formal code membership or expansion remains incomplete. |

## Unavailable CDA editor prototypes

These `SPEC` targets are optional comparison evidence. Their absence does not omit executable child-template constraints.

| Relation | Template | Requested revision | Used by |
|---|---|---|---|
| SPEC | `1.2.276.0.76.3.1.195.10.92` | `2025-11-12T00:00:00` | `1.2.276.0.76.3.1.195.10.93@2026-03-25T11:04:07` |
| SPEC | `1.2.276.0.76.10.4095` | `2017-02-01T00:00:00` | `1.2.276.0.76.3.1.195.10.32@2024-08-13T18:37:55` |
| SPEC | `1.2.276.0.76.10.4101` | `2017-02-01T00:00:00` | `1.2.276.0.76.3.1.195.10.95@2026-04-27T15:39:06` |
| SPEC | `1.2.276.0.76.10.4068` | `2015-09-18T00:00:00` | `1.2.276.0.76.3.1.195.10.65@2024-08-14T18:08:14` |
| SPEC | `1.2.276.0.76.10.4095` | `2017-02-01T00:00:00` | `1.2.276.0.76.3.1.195.10.29@2024-08-13T18:37:55` |
| SPEC | `1.2.276.0.76.10.4095` | `2017-02-01T00:00:00` | `1.2.276.0.76.3.1.195.10.30@2024-08-13T18:37:55` |

## CDA constraint diagnostics

| Severity | Code | Template path | Detail |
|---|---|---|---|
| warning | `spec-constraint-weakening` | `hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization` | 1.2.276.0.76.10.2034 weakens SPEC parent 2.16.840.1.113883.10.12.104 at hl7:custodian/hl7:assignedCustodian/hl7:representedCustodianOrganization (minimumMultiplicity 1 -> 0); using the explicit child constraint |
| warning | `spec-constraint-weakening` | `hl7:substanceAdministration/hl7:statusCode` | 1.2.276.0.76.3.1.195.10.67 weakens SPEC parent 2.16.840.1.113883.10.21.4.7 at hl7:substanceAdministration/hl7:statusCode (minimumMultiplicity 1 -> 0, mandatory True -> False); using the explicit child constraint |
| info | `textual-constraint-not-executable` | `hl7:observation/hl7:value/hl7:originalText` | ART-DECOR <constraint> is free-form markup and has no machine test; it is preserved without inferring XPath: Sollte ab Version 2 (2016) immer angegeben werden oder als unbekannt markiert werden. |
| error | `conditional-conformance-condition-missing` | `hl7:section/hl7:entry` | ART-DECOR conformance C requires a stated condition, but none is attached to hl7:entry |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9267-6']` | ART-DECOR conformance C has stated condition evidence (element-name-predicate) but no associated executable assert/report; presence remains input-activated |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9270-0']` | ART-DECOR conformance C has stated condition evidence (element-name-predicate) but no associated executable assert/report; presence remains input-activated |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:observation/hl7:entryRelationship[hl7:observation/hl7:code/@code='9268-4']` | ART-DECOR conformance C has stated condition evidence (element-name-predicate) but no associated executable assert/report; presence remains input-activated |
| warning | `textual-constraint-not-executable` | `hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]` | ART-DECOR <constraint> is free-form markup and has no machine test; it is preserved without inferring XPath: At least one subordinate element SHALL be present unless medications are unknown or known absent. |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:substanceAdministration/hl7:entryRelationship[exists(hl7:substanceAdministration)]` | ART-DECOR conformance C has stated condition evidence (element-name-predicate, textual-constraint) but no associated executable assert/report; presence remains input-activated |
| warning | `textual-constraint-not-executable` | `hl7:substanceAdministration` | ART-DECOR <constraint> is free-form markup and has no machine test; it is preserved without inferring XPath: The moodCode of this subordinate substance administration SHALL be the same of the parent substance administration |
| warning | `textual-constraint-not-executable` | `hl7:substanceAdministration/hl7:statusCode` | ART-DECOR <constraint> is free-form markup and has no machine test; it is preserved without inferring XPath: The statusCode of this subordinate substance administration SHALL be the same of that of the parent substance administration. |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:substanceAdministration/hl7:effectiveTime[@value or @nullFlavor]` | ART-DECOR conformance C has stated condition evidence (element-name-predicate) but no associated executable assert/report; presence remains input-activated |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='PIVL_TS']` | ART-DECOR conformance C has stated condition evidence (element-name-predicate) but no associated executable assert/report; presence remains input-activated |
| warning | `conditional-conformance-not-machine-enforced` | `hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']` | ART-DECOR conformance C has stated condition evidence (element-name-predicate) but no associated executable assert/report; presence remains input-activated |
| error | `conditional-conformance-condition-missing` | `hl7:substanceAdministration/hl7:effectiveTime[@xsi:type='EIVL_TS']/hl7:event` | ART-DECOR conformance C requires a stated condition, but none is attached to hl7:event |
| info | `textual-constraint-not-executable` | `hl7:observation/hl7:value` | ART-DECOR <constraint> is free-form markup and has no machine test; it is preserved without inferring XPath: Internationale statistische Klassifikation der Krankheiten und verwandter Gesundheitsprobleme (ICD), 10. Revision, German Modification, jeweils aktuelle Fassung |
