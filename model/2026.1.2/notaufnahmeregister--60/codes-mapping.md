# Input-value-to-dataset-code mapping

Edit `codes-mapping.json`. Canonical dataset values are accepted unchanged;
the tables therefore show only aliases that require translation and unresolved
input values observed in the CSV files.

## Zuweisung

`administrative_aufnahmeinformationen.zuweisung_zur_notaufnahme.zuweisung` — 8 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `VAP` | `Vertragsarzt/Praxis` |
| `KVNPIK` | `KV-Notfallpraxis am Krankenhaus` |
| `KVNDAK` | `KV-Notdienst ausserhalb des Krankenhauses` |
| `KV-Notdienst außerhalb des Krankenhauses` | `KV-Notdienst ausserhalb des Krankenhauses` |
| `RD` | `Rettungsdienst` |
| `NA` | `Notarzt` |
| `KLINV` | `Klinik/Verlegung` |
| `NPHYS` | `ohne` |
| `Zuweisung nicht durch Arzt` | `ohne` |
| `OTH` | `Andere` |

## Transportmittel

`administrative_aufnahmeinformationen.transport.transportmittel` — 6 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `1` | `KTW` |
| `2` | `RTW` |
| `3` | `NAW/NEF/ITW` |
| `4` | `RTH/ITH` |
| `NA` | `Ohne` |
| `OTH` | `Andere` |

## Medizinische Begleitung

`administrative_aufnahmeinformationen.transport.medizinische_begleitung` — 2 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `715933006` | `ärztlich begleitet` |
| `Provision of medical patient escort (procedure)` | `ärztlich begleitet` |
| `1156336002` | `nicht-ärztlich begleitet` |
| `Escorting subject of care (procedure)` | `nicht-ärztlich begleitet` |

## Ergebnis der Ersteinschätzung

`ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung` — 10 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `1` | `rot` |
| `sofort - rot - 0 Minuten` | `rot` |
| `2` | `orange` |
| `sehr dringend - orange - 10 Minuten` | `orange` |
| `3` | `gelb` |
| `dringend - gelb - 30 Minuten` | `gelb` |
| `4` | `grün` |
| `normal - grün - 90 Minuten` | `grün` |
| `5` | `blau` |
| `nicht dringend - blau - 120 Minuten` | `blau` |
| `Resuscitation` | `LA21538-6` |
| `Emergent` | `LA19759-2` |
| `Urgent` | `LA21544-4` |
| `Less urgent` | `LA21587-3` |
| `Nonurgent` | `LA21545-1` |

## verwendetes Ersteinschätzungssystem

`ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem` — 5 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `713009001` | `MTS` |
| `Manchester Triage System (assessment scale)` | `MTS` |
| `713010006` | `ESI` |
| `Emergency Severity Index (assessment scale)` | `ESI` |
| `smed` | `SmED` |
| `74964007` | `sonstige` |
| `Other (qualifier value)` | `sonstige` |
| `260413007` | `keines` |
| `None (qualifier value)` | `keines` |

## MTS-Präsentationsdiagramm

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsprasentationsdiagramm` — 53 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `1` | `Abdominelle Schmerzen bei Erwachsenen` |
| `2` | `Abdominelle Schmerzen bei Kindern` |
| `3` | `Abszesse und lokale Infektionen` |
| `4` | `Allergie` |
| `5` | `Angriff (Zustand nach)` |
| `6` | `Asthma` |
| `7` | `Atemproblem bei Erwachsenen` |
| `8` | `Atemproblem bei Kindern` |
| `9` | `Auffälliges Verhalten` |
| `10` | `Augenprobleme` |
| `11` | `Besorgte Eltern` |
| `12` | `Betrunkener Eindruck` |
| `13` | `Bisse und Stiche` |
| `14` | `Chemikalienkontakt` |
| `15` | `Diabetes` |
| `16` | `Durchfälle und Erbrechen` |
| `17` | `Extremitätenprobleme` |
| `18` | `Fremdkörper` |
| `19` | `Gastrointestinale Blutung` |
| `20` | `Gesichtsprobleme` |
| `21` | `Halsschmerz` |
| `22` | `Hautausschläge` |
| `23` | `Herzklopfen` |
| `24` | `Hinkendes Kind` |
| `25` | `Hodenschmerz` |
| `26` | `Irritables (erregbares/reizbares) Kind` |
| `27` | `Körperstammverletzung` |
| `28` | `Kollaps` |
| `29` | `Kopfschmerz` |
| `30` | `Kopfverletzung` |
| `31` | `Krampfanfall` |
| `32` | `Nackenschmerz` |
| `33` | `Ohrenprobleme` |
| `34` | `Psychiatrische Erkrankung` |
| `35` | `Rückenschmerz` |
| `36` | `Schreiendes Baby` |
| `37` | `Schwangerschaftsproblem` |
| `38` | `Schweres Trauma` |
| `39` | `Selbstverletzung` |
| `40` | `Sexualinfektion` |
| `41` | `Stürze` |
| `42` | `Thoraxschmerz` |
| `43` | `Überdosierung und Vergiftung` |
| `44` | `Unwohlsein bei Erwachsenen` |
| `45` | `Unwohlsein bei Kindern` |
| `46` | `Unwohlsein bei Neugeborenen` |
| `47` | `Unwohlsein bei Säuglingen` |
| `48` | `Urologische Probleme` |
| `49` | `Vaginale Blutung` |
| `50` | `Verbrennungen und Verbrühungen` |
| `51` | `Wunden` |
| `52` | `Zahnprobleme` |
| `53` | `Generelle Indikatoren` |

## MTS-Indikatoren ROT

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_rot` — 16 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `130` | `Puls unnormal` |
| `117` | `Nicht ansprechbar` |
| `136` | `Rekapillarisierungszeit unnormal` |
| `113` | `Nabelschnurvorfall` |
| `B` | `B-Problem (Atmung)` |
| `A` | `A-Problem (Atemwege)` |
| `118` | `Nicht ansprechbares Kind` |
| `157` | `Speichelfluss` |
| `11` | `Anhaltender Krampfanfall` |
| `162` | `Stridor` |
| `75` | `Hypoglykämie` |
| `172` | `Unnormale Atemfrequenz` |
| `153` | `Sichtbare Körperteile des Fötus` |
| `5` | `Akute Augenverletzung mit Chemikalien` |
| `17` | `Atmet nach Freimachen der Atemwege` |
| `C` | `C-Problem (Zirkulation)` |

## MTS-Indikatoren ORANGE

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange` — 66 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `3` | `Aktive Wehentätigkeit` |
| `91` | `Keine Reaktion auf die Eltern` |
| `159` | `Stärkster Schmerz oder Juckreiz` |
| `46` | `Erschöpfungszustand` |
| `53` | `Gefährdete distale Durchblutung` |
| `183` | `Vaginaler Blutverlust zweite Schwangerschaftshälfte` |
| `6` | `Akuter vollständiger Visusverlust` |
| `44` | `Erbrechen von Blut` |
| `9` | `Akutes neurologisches Defizit` |
| `119` | `Nicht verblassender Ausschlag` |
| `131` | `Purpura` |
| `141` | `Schmerzausstrahlung in den Rücken` |
| `85` | `Kann nicht in ganzen Sätzen sprechen` |
| `8` | `Akutes Einsetzen nach einer Verletzung` |
| `67` | `Hoch letaler Tierbiss` |
| `18` | `Auffällige Allergieanamnese` |
| `112` | `Meningismuszeichen` |
| `150` | `Sehr niedriger Peakflow` |
| `191` | `Zungenödem` |
| `65` | `Hervortreten von Organen` |
| `57` | `Gesichtsödem` |
| `19` | `Auffällige Anamnese mit GI-Blutungen` |
| `10` | `Alter unter 25 Jahren` |
| `16` | `Anzeichen für stärkste Schmerzen` |
| `64` | `Heißer Säugling` |
| `140` | `Schlaffes Kind` |
| `174` | `Unstillbare große Blutung` |
| `177` | `Unterkühlt` |
| `72` | `Hohes Risiko (künftiger) Fremdgefährdung` |
| `77` | `Inhalationstrauma` |
| `181` | `Unzureichende Vorgeschichte (des Alkoholkonsums)` |
| `45` | `Erhöhte Atemarbeit` |
| `26` | `Auffälliger Verletzungsmechanismus` |
| `154` | `Skrotalgangrän` |
| `148` | `Sehr heiß` |
| `190` | `Verringerte Kindsbewegungen 2. SSH` |
| `151` | `Sepsisverdacht` |
| `87` | `Kardialer Schmerz` |
| `127` | `Potentiell gefährlicher Fremdkörper` |
| `114` | `Neuer unnormaler Puls` |
| `74` | `Hyperglykämie mit Ketose` |
| `24` | `Auffällige respiratorische Anamnese` |
| `69` | `Hohe Letalität` |
| `33` | `Bericht über Krampfanfall` |
| `71` | `Hohes Risiko (künftiger) Eigengefährdung` |
| `36` | `Besonderes Infektionsrisiko` |
| `98` | `Kritischer Hautzustand` |
| `125` | `Penetrationstrauma des Auges` |
| `66` | `Hoch letale Chemikalie` |
| `1` | `Abdominalschmerz` |
| `137` | `Risiko anhaltender Kontamination` |
| `152` | `Sichtbare abdominelle Massierung` |
| `164` | `Subkutane Gasansammlung` |
| `2` | `Abruptes Einsetzen` |
| `49` | `Frisch- oder altblutiger Stuhlgang` |
| `135` | `Reagiert nur auf Ansprache oder Schmerz` |
| `128` | `Priapismus` |
| `158` | `Starker vaginaler Blutverlust` |
| `160` | `Stärkster Schmerz` |
| `186` | `Veränderter Bewusstseinszustand` |
| `149` | `Sehr niedrige O2-Sättigung` |
| `4` | `Akute Atemnot` |
| `52` | `Gefährdete (distale) Durchblutung` |
| `34` | `Bericht über Überdosierung oder Vergiftung` |
| `28` | `Bekannte oder vermutete Immunsuppression` |
| `187` | `Veränderter Bewusstseinszustand nicht vollständig durch Alkoholgenuss erklärbar` |

## MTS-Indikatoren GELB

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb` — 68 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `23` | `Auffällige psychiatrische Anamnese` |
| `38` | `Direktes Nackentrauma` |
| `107` | `Mäßige Letalität` |
| `161` | `Störend` |
| `108` | `Mäßiger Schmerz oder Juckreiz` |
| `92` | `Keine Urinausscheidung` |
| `132` | `Rasches Einsetzen` |
| `163` | `Stromunfall` |
| `122` | `Offene Fraktur` |
| `188` | `Veränderter Bewusstseinszustand vollständig durch Alkoholgenuss erklärbar` |
| `156` | `Skrotumschwellung/-rötung` |
| `22` | `Auffällige medizinische Vorgeschichte` |
| `171` | `Unfähig zu Gehen` |
| `182` | `Vaginaler Blutverlust` |
| `29` | `Bericht über akutes Erbrechen von Blut` |
| `32` | `Bericht über Kopfverletzung` |
| `31` | `Bericht über jüngeren Auslandsaufenthalt` |
| `55` | `Gehfähig` |
| `176` | `Unterbauchschmerz` |
| `73` | `Hyperglykämie` |
| `116` | `Nicht ablenkbar` |
| `170` | `Überwärmtes Neugeborenes` |
| `51` | `Frisches neurologisches Defizit` |
| `121` | `Niedriger Peakflow` |
| `42` | `Empfindliche Kopfhaut` |
| `115` | `Neuer Verwirrtheitszustand` |
| `109` | `Mäßiger Schmerz` |
| `62` | `Harnverhalt` |
| `89` | `Keine Nahrungsaufnahme` |
| `21` | `Auffällige kardiale Anamnese` |
| `13` | `Anhaltendes Herzklopfen` |
| `105` | `Mäßig letale Chemikalie` |
| `184` | `Vaginaltrauma` |
| `39` | `Direktes Rückentrauma` |
| `63` | `Heiß` |
| `15` | `Anzeichen für mäßige Schmerzen` |
| `143` | `Schmerzen bei Bewegung im Gelenk` |
| `165` | `Teerstuhl oder frische Blutauflagerung` |
| `37` | `Blutungsneigung` |
| `175` | `Unstillbare kleine Blutung` |
| `25` | `Auffällige Unruhe` |
| `78` | `Jünger reduzierte Sehschärfe` |
| `70` | `Hoher Blutdruck` |
| `90` | `Keine Nahrungsaufnahme möglich` |
| `94` | `Kolikartige Schmerzen` |
| `59` | `Grobe Fehlstellung` |
| `104` | `Makrohämaturie` |
| `120` | `Niedrige O2-Sättigung` |
| `173` | `Unpassende Vorgeschichte` |
| `142` | `Schmerzausstrahlung in die Schulter` |
| `30` | `Bericht über Bewusstlosigkeit` |
| `145` | `Schwangerschaft möglich` |
| `126` | `Pleuraschmerz` |
| `110` | `Mäßiges Risiko (künftiger) Eigengefährdung` |
| `133` | `Rauchexposition` |
| `99` | `Langanhaltendes oder ununterbrochenes Schreien` |
| `88` | `Kein Ansprechen auf eigene Asthmamedikation` |
| `68` | `Hodenschmerz` |
| `111` | `Mäßiges Risiko (künftiger) Fremdgefährdung` |
| `60` | `Großflächige Absonderungen oder Bläschenbildungen` |
| `35` | `Bericht über Unfall` |
| `7` | `Akuter Zahnverlust` |
| `178` | `Untröstbar durch die Eltern` |
| `169` | `Überwärmtes Gelenk` |
| `14` | `Anzeichen für Dehydration` |
| `12` | `Anhaltendes Erbrechen` |
| `20` | `Auffällige hämatologische oder metabolische Anamnese` |
| `106` | `Mäßig letaler Tierbiss` |

## MTS-Indikatoren GRÜN

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun` — 28 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `43` | `Erbrechen` |
| `84` | `Jüngeres Problem` |
| `155` | `Skrotaltrauma` |
| `58` | `Gesichtsschwellung` |
| `95` | `Kopfhauthämatom` |
| `81` | `Jüngerer Hörverlust` |
| `80` | `Jüngere Verletzung` |
| `129` | `Produktiver Husten` |
| `146` | `Schwellung` |
| `168` | `Überwärmt` |
| `103` | `Lokale Inflammation` |
| `147` | `Schwindel` |
| `102` | `Lokale Infektion` |
| `41` | `Dysurie` |
| `27` | `Ausfluss` |
| `48` | `Fremdkörpergefühl` |
| `96` | `Kopfschmerzen` |
| `93` | `Keuchen` |
| `166` | `Thoraxverletzung` |
| `56` | `Gerötetes Auge` |
| `82` | `Jüngerer leichter Schmerz oder Juckreiz` |
| `47` | `Fehlstellung` |
| `76` | `Ikterus` |
| `83` | `Jüngerer leichter Schmerz` |
| `179` | `Untypisches Verhalten` |
| `185` | `Veränderte Sensibilität im Gesicht` |
| `40` | `Doppelbilder` |
| `123` | `Ohrmuschelhämatom` |

## ESI-Triage

`ersteinschatzung.parameter_der_ersteinschatzung.esitriage` — 13 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `Rot` | `sofortige lebensrettende Maßnahme notwendig` |
| `Orange` | `Hochrisikosituation` |
| `Gelb` | `Vitalzeichen nicht in der Gefahrenzone` |
| `Grün` | `eine Ressource benötigt` |
| `Blau` | `keine Ressourcen benötigt` |

## Beschwerden bei Vorstellung (CEDIS)

`notfallanamnese.beschwerden_bei_vorstellung.beschwerden_bei_vorstellung_cedis` — 189 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `CV` | `Kardiovaskulär` |
| `001` | `Herzstillstand (nicht traumatisch)` |
| `002` | `Herzstillstand (traumatisch)` |
| `003` | `Brustschmerz (kardial)` |
| `004` | `Brustschmerz (nicht kardial)` |
| `005` | `Palpitationen/unregelmäßiger Herzschlag` |
| `006` | `Hypertonie` |
| `007` | `Allgemeine Schwäche` |
| `008` | `Synkope/Präsynkope` |
| `009` | `Ödem, generalisiert` |
| `010` | `Beinschwellung/Ödem` |
| `011` | `Kühle, pulslose Extremität` |
| `012` | `Eine Extremität gerötet, überwärmt` |
| `HNE` | `HNO (Ohren)` |
| `051` | `Ohrenschmerzen` |
| `052` | `Fremdkörper im Ohr` |
| `053` | `Hörverlust` |
| `054` | `Tinnitus` |
| `055` | `Ausfluss aus dem Ohr` |
| `056` | `Ohrverletzung` |
| `HNM` | `HNO (Mund, Rachen, Hals)` |
| `101` | `Zahn-/Zahnfleischprobleme` |
| `102` | `Trauma Gesicht` |
| `103` | `Halsschmerzen (wunder Rachen)` |
| `104` | `Halsschwellung/-schmerzen` |
| `105` | `Trauma Hals` |
| `106` | `Schluckbeschwerden/Dysphagie` |
| `107` | `Schmerzen im Gesicht (nicht traumatisch, nicht dental)` |
| `HNN` | `HNO (Nase)` |
| `151` | `Nasenbluten` |
| `152` | `Verstopfte Nase/Heuschnupfen` |
| `153` | `Fremdkörper in der Nase` |
| `154` | `Beschwerden eines Infektes der oberen Luftwege` |
| `155` | `Trauma Nase` |
| `EV` | `Umweltbedingt` |
| `201` | `Erfrierung/Kälteverletzung` |
| `202` | `Schädliche Inhalation` |
| `203` | `Stromunfall` |
| `204` | `Exposition gegenüber Chemikalien` |
| `205` | `Unterkühlung` |
| `206` | `Beinahe-Ertrinken` |
| `GI` | `Gastrointestinal` |
| `251` | `Bauchschmerzen` |
| `252` | `Appetitlosigkeit` |
| `253` | `Verstopfung` |
| `254` | `Durchfall` |
| `255` | `Fremdkörper im Rektum` |
| `256` | `Leistenschmerzen/-schwellung` |
| `257` | `Übelkeit und/oder Erbrechen` |
| `258` | `Rektale/perineale Schmerzen` |
| `259` | `Bluterbrechen` |
| `260` | `Peranaler Blutabgang/Teerstuhl` |
| `261` | `Ikterus` |
| `262` | `Schluckauf` |
| `263` | `Abdominelle Raumforderung/gespanntes Abdomen` |
| `264` | `Trauma anal/rektal` |
| `265` | `Fremdkörper oral/ösophageal` |
| `266` | `Trinkstörung des Neugeborenen` |
| `267` | `Neugeborenenikterus` |
| `GU` | `Urogenital` |
| `301` | `Flankenschmerz` |
| `302` | `Hämaturie` |
| `303` | `Genitaler Ausfluss/Läsion` |
| `304` | `Penisschwellung` |
| `305` | `Skrotale Schmerzen und/oder Schwellung` |
| `306` | `Harnverhalt` |
| `307` | `Beschwerden eines Harnwegsinfektes` |
| `308` | `Oligurie` |
| `309` | `Polyurie` |
| `310` | `Trauma genital` |
| `MH` | `Psychische Verfassung` |
| `351` | `Depression/Suizidalität/absichtliche Selbstschädigung` |
| `352` | `Angst/situationsbezogene Krise` |
| `353` | `Halluzinationen/Wahnvorstellungen` |
| `354` | `Schlafstörung` |
| `355` | `Gewalttätiges Verhalten/Fremdgefährdung` |
| `356` | `Soziales Problem` |
| `358` | `Sonderbares Verhalten` |
| `359` | `Sorge um das Wohlergehen des Patienten` |
| `360` | `Kindliche Verhaltensauffälligkeit` |
| `NC` | `Neurologisch` |
| `401` | `Veränderter Bewußtseinszustand` |
| `402` | `Verwirrtheit` |
| `403` | `Schwindel` |
| `404` | `Kopfschmerz` |
| `405` | `Krampfanfall` |
| `406` | `Gangstörung/Ataxie` |
| `407` | `Kopfverletzung` |
| `408` | `Zittern` |
| `409` | `Schwäche in den Extremitäten/Symptome eines Schlaganfalls oder TIA` |
| `410` | `Sensibilitätsstörung/Parästhesie` |
| `411` | `Schlaffes Kind` |
| `OGY` | `Geburtshilfe/Gynäkologie` |
| `451` | `Menstruationsbeschwerden` |
| `452` | `Fremdkörper in der Vagina` |
| `453` | `Vaginaler Ausfluss` |
| `454` | `Sexueller Übergriff` |
| `455` | `Vaginale Blutung` |
| `456` | `Schamlippenschwellung` |
| `457` | `Schwangerschaftsprobleme ≤ 20. SSW` |
| `Schwangerschaftsprobleme ≤ 20. SSW` | `Schwangerschaftsprobleme ≤ 20. SSW` |
| `458` | `Schwangerschaftsprobleme > 20. SSW` |
| `Schwangerschaftsprobleme > 20. SSW` | `Schwangerschaftsprobleme > 20. SSW` |
| `460` | `Vaginale Schmerzen/Schmerzen beim Geschlechtsverkehr` |
| `EC` | `Augenheilkunde` |
| `502` | `Exposition des Auges gegenüber Chemikalien` |
| `503` | `Fremdkörper im Auge` |
| `504` | `Sehstörung` |
| `505` | `Augenschmerzen` |
| `506` | `Rote Augen, Ausfluss aus dem Auge` |
| `507` | `Lichtscheu` |
| `508` | `Doppelbilder` |
| `509` | `Periorbitale Schwellung` |
| `510` | `Trauma Auge` |
| `511` | `Kontrolluntersuchung der Augen` |
| `OC` | `Orthopädisch/Unfall-chirurgisch` |
| `551` | `Rückenschmerzen` |
| `552` | `Traumatische Rücken-/Wirbelsäulenverletzung` |
| `553` | `Amputation` |
| `554` | `Schmerzen obere Extremität` |
| `555` | `Schmerzen untere Extremität` |
| `556` | `Verletzung obere Extremität` |
| `557` | `Verletzung untere Extremität` |
| `558` | `Gelenkschwellung` |
| `559` | `Kindliche Gangstörung/Schmerzen beim Gehen` |
| `RC` | `Respiratorisch` |
| `651` | `Luftnot` |
| `652` | `Atemstillstand` |
| `653` | `Husten/Verschleimung` |
| `654` | `Hyperventilation` |
| `655` | `Bluthusten` |
| `656` | `Fremdkörper in den Atemwegen` |
| `657` | `Allergische Reaktion` |
| `658` | `Stridor` |
| `659` | `Giemen ohne weitere Beschwerden` |
| `660` | `Apnoeanfälle bei Säuglingen` |
| `661` | `Grippeähnliche Erkrankung` |
| `SK` | `Haut` |
| `701` | `Biss` |
| `702` | `Insektenstich` |
| `703` | `Abschürfung` |
| `704` | `Riss-/Quetsch-/Schnitt-/Stichwunde` |
| `705` | `Verbrennung` |
| `706` | `Kontakt mit Blut oder Körperflüssigkeiten` |
| `707` | `Juckreiz` |
| `708` | `Hautausschlag` |
| `709` | `Lokalisierte Schwellung/Rötung` |
| `710` | `Wundkontrolle` |
| `711` | `Sonstige Hautprobleme` |
| `712` | `Schwellung/Beule/Schwiele` |
| `713` | `Rötung/Spannungsgefühl in der Brust` |
| `714` | `Ausschluß eines Parasitenbefalls` |
| `715` | `Zyanose` |
| `716` | `Spontane Hauteinblutungen` |
| `717` | `Fremdkörper in der Haut` |
| `718` | `Nagelprobleme` |
| `SA` | `Substanzmissbrauch` |
| `751` | `Substanzmissbrauch/Intoxikation` |
| `752` | `Einnahme einer Überdosierung` |
| `753` | `Substanzentzug` |
| `TR` | `Trauma` |
| `801` | `Schweres Trauma - penetrierend` |
| `802` | `Schweres Trauma - stumpf` |
| `803` | `Isoliertes Thoraxtrauma - penetrierend` |
| `804` | `Isoliertes Thoraxtrauma - stumpf` |
| `805` | `Isoliertes Abdominaltrauma - penetrierend` |
| `806` | `Isoliertes Abdominaltrauma - stumpf` |
| `MC` | `Allgemeine und sonstige Beschwerden` |
| `851` | `Exposition gegenüber einer übertragbaren Krankheit` |
| `852` | `Fieber` |
| `853` | `Hyperglykämie` |
| `854` | `Hypoglykämie` |
| `855` | `Direkte Überweisung/Weiterleitung` |
| `856` | `Verbandswechsel` |
| `857` | `Entfernung von Klammern/Nähten` |
| `858` | `Gipskontrolle` |
| `859` | `Bildgebung/Blutuntersuchung` |
| `860` | `Problem mit Medizinprodukt` |
| `861` | `Verschreibung/Bedarf an Medikamenten` |
| `862` | `Entfernung Ring` |
| `863` | `Auffällige Ergebnisse Labor/Bildgebung` |
| `864` | `Blässe/Anämie` |
| `865` | `Postoperative Komplikationen` |
| `866` | `Geringfügige unspezifische Beschwerden` |
| `867` | `Unstillbares Schreien` |
| `868` | `Angeborene Probleme bei Kindern` |
| `869` | `Neugeborenes` |
| `870` | `Intravenöse Therapie` |
| `998` | `Patient aufgenommen und vor Ersteinschätzung wieder gegangen` |
| `OTH` | `Sonstiges` |
| `UNK` | `Unbekannt` |

## Unfallursache

`notfallanamnese.unfallanamnese.unfallursache` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `418019003` | `Accidental event (event)` |
| `68023007` | `Undetermined manner of death, suicide suspected (event)` |
| `SCTPOCC-52684005` | `V. a. Gewaltverbrechen` |
| `Verdacht auf Gewaltverbrechen` | `V. a. Gewaltverbrechen` |
| `74964007` | `andere` |
| `Other (qualifier value)` | `andere` |

## Fahrzeug des Verunfallten

`notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten` — 14 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `V09.3` | `kein Fahrzeug - als Fußgänger angefahren` |
| `Pedestrian injured in unspecified traffic accident` | `kein Fahrzeug - als Fußgänger angefahren` |
| `71783008` | `PKW` |
| `Automobile, device (physical object)` | `PKW` |
| `12247004` | `LKW` |
| `Truck, device (physical object)` | `LKW` |
| `22674006` | `Bus` |
| `Motor bus, device (physical object)` | `Bus` |
| `90748009` | `Motorrad` |
| `Motorcycle, device (physical object)` | `Motorrad` |
| `303973000` | `Traktor` |
| `Agricultural vehicle (physical object)` | `Traktor` |
| `31493009` | `Fahrrad` |
| `Pedal cycle, device (physical object)` | `Fahrrad` |
| `705415002` | `unterstütztes Fahrrad` |
| `Assistive cycle (physical object)` | `unterstütztes Fahrrad` |
| `465073007` | `E-Scooter` |
| `Assistive scooter, electric-motor-driven (physical object)` | `E-Scooter` |
| `38548008` | `Straßenbahn` |
| `Streetcar, device (physical object)` | `Straßenbahn` |
| `62193008` | `Zug` |
| `Railway train, device (physical object)` | `Zug` |
| `21753002` | `Flugzeug` |
| `Aircraft, device (physical object)` | `Flugzeug` |
| `12561005` | `Schiff` |
| `Watercraft, device (physical object)` | `Schiff` |
| `74964007` | `Anderes` |
| `Other (qualifier value)` | `Anderes` |

## Unfallkinetik

`notfallanamnese.unfallanamnese.unfallkinetik` — 13 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `LA28131-3` | `Sturz mit Fallhöhe < 3 m` |
| `Height range of fall - Less than 3 meters` | `Sturz mit Fallhöhe < 3 m` |
| `LA28130-5` | `Sturz mit Fallhöhe >= 3 m` |
| `Height range of fall - Greater than 3 meters` | `Sturz mit Fallhöhe >= 3 m` |
| `33036003` | `Ebenerdiger Sturz` |
| `Fall on same level (event)` | `Ebenerdiger Sturz` |
| `269796009` | `Schuss` |
| `Shotgun accident (event)` | `Schuss` |
| `274923000` | `Stich` |
| `Accident caused by edge tool (event)` | `Stich` |
| `429061003` | `Fahrzeug gegen (fest)stehendes Objekt` |
| `Injury due to impact of moving subject with the stationary object (disorder)` | `Fahrzeug gegen (fest)stehendes Objekt` |
| `39826003` | `Explosion` |
| `Struck by explosion (event)` | `Explosion` |
| `33980000` | `Verpuffung` |
| `Deflagration (physical force)` | `Verpuffung` |
| `219236005` | `Schlag` |
| `Assault by striking with blunt object (event)` | `Schlag` |
| `242984003` | `Fahrzeug gegen sich bewegendes Objekt` |
| `Injury of unknown intent due to impact with moving vehicle (disorder)` | `Fahrzeug gegen sich bewegendes Objekt` |
| `242023009` | `Verschüttung` |
| `Asphyxia by burial under powder or solid matter (event)` | `Verschüttung` |
| `242559006` | `Lawine` |
| `Accident caused by surface earth or water movement (event)` | `Lawine` |
| `74964007` | `Andere` |
| `Other (qualifier value)` | `Andere` |

## Unfallart TraumaRegister

`notfallanamnese.unfallanamnese.unfallart_trauma_register` — 18 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `V49` | `Verkehr - PKW-Insasse` |
| `Car occupant injured in other and unspecified transport accidents` | `Verkehr - PKW-Insasse` |
| `V69` | `Verkehr - LKW-Insasse` |
| `Occupant of heavy transport vehicle injured in other and unspecified transport accidents` | `Verkehr - LKW-Insasse` |
| `V79` | `Verkehr - Bus-Insasse` |
| `Bus occupant injured in other and unspecified transport accidents` | `Verkehr - Bus-Insasse` |
| `X59.9` | `Sonstige - andere Unfallarten` |
| `Exposure to unspecified factor causing other and unspecified injury` | `Sonstige - andere Unfallarten` |
| `W20` | `Sonstige - Verschüttung` |
| `Struck by thrown, projected or falling object` | `Sonstige - Verschüttung` |
| `Y00` | `Sonstige - Schlagverletzung` |
| `Assault by blunt object` | `Sonstige - Schlagverletzung` |
| `X96` | `Sonstige - Explosion/Verpuffung` |
| `Assault by explosive material` | `Sonstige - Explosion/Verpuffung` |
| `X99` | `Sonstige - Stichverletzung` |
| `Assault by sharp object` | `Sonstige - Stichverletzung` |
| `X93` | `Sonstige - Schussverletzung` |
| `Assault by handgun discharge` | `Sonstige - Schussverletzung` |
| `V99` | `Verkehr - Sonstiger Verkehrsunfall` |
| `Unspecified transport accident` | `Verkehr - Sonstiger Verkehrsunfall` |
| `V09` | `Verkehr - Fußgänger angefahren` |
| `Pedestrian injured in other and unspecified transport accidents` | `Verkehr - Fußgänger angefahren` |
| `V29.91` | `Verkehr – unterstütztes Fahrrad` |
| `Electric (assisted) bicycle rider (driver) (passenger) injured in unspecified traffic accident` | `Verkehr – unterstütztes Fahrrad` |
| `33036003` | `Sturz - ebenerdiger Sturz` |
| `Fall on same level (event)` | `Sturz - ebenerdiger Sturz` |
| `LA28130-5` | `Height range of fall - Greater than 3 meters` |
| `LA28131-3` | `Sturz - Sturz mit Fallhöhe < 3m` |
| `Height range of fall - Less than 3 meters` | `Sturz - Sturz mit Fallhöhe < 3m` |
| `1264045009` | `Verkehr - E-Scooter` |
| `Electric scooter accident (event)` | `Verkehr - E-Scooter` |
| `V19` | `Verkehr – Fahrrad` |
| `Pedal cycle rider injured in other and unspecified transport accidents` | `Verkehr – Fahrrad` |
| `V29.99` | `Verkehr – Motorradfahrer/-sozius` |
| `Rider (driver) (passenger) of other motorcycle injured in unspecified traffic accident` | `Verkehr – Motorradfahrer/-sozius` |

## Verdacht auf Alkohol-, Drogen-, Medikamenteneinfluss?

`notfallanamnese.verdacht_auf_alkohol_drogen_medikamenteneinflussq` — 7 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `LA28145-3` | `Patient is not influenced by substance use` |
| `LA28144-6` | `Unknown substance` |
| `LA28139-6` | `Alcohol` |
| `LA22650-8` | `Medication` |
| `LA28141-2` | `Illegal drug` |
| `LA28142-0` | `Multiple substances` |
| `LA46-8` | `Other` |

## Schwangerschaft

`klinische_basisdaten_patient.schwangerschaft` — 3 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `1` | `Patient ist schwanger` |
| `0` | `Patient ist nicht schwanger` |
| `UNK` | `Information nicht erhebbar` |
| `Unbekannt` | `Information nicht erhebbar` |

## Tetanusschutz

`klinische_basisdaten_patient.tetanusschutz` — 3 canonical values accepted directly; 0/0 observed input values mapped.

No aliases require configuration.

## Pupillenweite (rechts)

`vitalparameter.pupillenweite.pupillenweite_rechts` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `D` | `weit` |
| `M` | `mittel` |
| `C` | `eng` |
| `UNK` | `nicht ausgefüllt` |
| `Unbekannt` | `nicht ausgefüllt` |

## Pupillenweite (links)

`vitalparameter.pupillenweite.pupillenweite_links` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `D` | `weit` |
| `M` | `mittel` |
| `C` | `eng` |
| `UNK` | `nicht ausgefüllt` |
| `Unbekannt` | `nicht ausgefüllt` |

## Pupillenreaktion (rechts)

`vitalparameter.pupillenreaktion.pupillenreaktion_rechts` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `B` | `prompt` |
| `D` | `träge` |
| `A` | `keine` |
| `UNK` | `nicht ausgefüllt` |
| `Unbekannt` | `nicht ausgefüllt` |

## Pupillenreaktion (links)

`vitalparameter.pupillenreaktion.pupillenreaktion_links` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `B` | `prompt` |
| `D` | `träge` |
| `A` | `keine` |
| `UNK` | `nicht ausgefüllt` |
| `Unbekannt` | `nicht ausgefüllt` |

## GCS Augenöffnen

`scores.glasgow_coma_scale_gcs.gcs_augenoffnen` — 4 canonical values accepted directly; 0/0 observed input values mapped.

No aliases require configuration.

## GCS verbale Antwort

`scores.glasgow_coma_scale_gcs.gcs_verbale_antwort` — 5 canonical values accepted directly; 0/0 observed input values mapped.

No aliases require configuration.

## GCS motorische Antwort

`scores.glasgow_coma_scale_gcs.gcs_motorische_antwort` — 6 canonical values accepted directly; 0/0 observed input values mapped.

No aliases require configuration.

## modified Rankin Skala Score

`scores.modified_rankin_skala_score` — 7 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `Rankin 0` | `keine Symptome` |
| `Rankin 1` | `keine wesentliche Funktionseinschränkung` |
| `Rankin 2` | `geringgradige Funktionseinschränkung` |
| `Rankin 3` | `mäßiggradige Funktionseinschränkung` |
| `Rankin 4` | `mittelschwere Funktionseinschränkung` |
| `Rankin 5` | `schwere Funktionseinschränkung` |
| `Rankin 6` | `Tod` |

## Untersuchungsregion

`diagnostik.bildgebende_diagnostik.magnetresonanztomographie.untersuchungsregion` — 15 canonical values accepted directly; 0/0 observed input values mapped.

No aliases require configuration.

## Untersuchungsregion

`diagnostik.bildgebende_diagnostik.rontgen.untersuchungsregion` — 13 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `30745-4` | `Thorax` |
| `38008-9` | `Gesamte Wirbelsäule` |
| `28561-9` | `Becken` |

## CT- bzw. MR- bzw. DS-Angiographie

`diagnostik.abgeleitete_informationen_uber_diagnostik_zur_weitergabe.ct_bzw_mr_bzw_dsangiographie` — 5 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `0` | `nein` |
| `1` | `vor Aufnahme` |
| `2` | `direkt im Anschluss an native Bildgebung` |
| `3` | `nicht direkt im Anschluss an native Bildgebung aber ≤ 24 h` |
| `4` | `nicht direkt im Anschluss an native Bildgebung aber > 24 h` |

## Isolation

`masnahmen.isolation.isolation` — 2 canonical values accepted directly; 0/0 observed input values mapped.

No aliases require configuration.

## Isolation Begründung

`masnahmen.isolation.isolation_begrundung` — 10 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `32811000119109` | `multiresistenter Keim` |
| `Infection caused by multi antimicrobial drug resistant bacteria (disorder)` | `multiresistenter Keim` |
| `25374005` | `Gastroenteritis` |
| `Inflammation of stomach and intestine (disorder)` | `Gastroenteritis` |
| `56717001` | `Tuberkulose` |
| `Tuberculosis (disorder)` | `Tuberkulose` |
| `7180009` | `Meningitis` |
| `Meningitis (disorder)` | `Meningitis` |
| `6142004` | `Influenza` |
| `Influenza (disorder)` | `Influenza` |
| `840539006` | `COVID-19` |
| `Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)` | `COVID-19` |
| `303011007` | `Neutropenie` |
| `Neutropenic disorder (disorder)` | `Neutropenie` |
| `409522005` | `Prophylaktische Isolation auf Basis RKI-Empfehlung` |
| `Standard precautions (procedure)` | `Prophylaktische Isolation auf Basis RKI-Empfehlung` |
| `6415009` | `Human respiratory syncytial virus (organism)` |
| `74964007` | `Andere` |
| `Other (qualifier value)` | `Andere` |

## Zusatzkennzeichen

`abschlussdiagnosen.abschlussdiagnose.zusatzkennzeichen` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `V` | `Verdachtsdiagnose` |
| `A` | `ausgeschlossene Diagnose` |
| `Z` | `Zustand nach der Diagnose` |
| `G` | `gesicherte Diagnose` |

## Typ Entlassung

`administrative_verlegungsentlassungsinformationen.typ_entlassung` — 7 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `1` | `Tod` |
| `2` | `Entlassung gegen ärztlichen Rat` |
| `3` | `Behandlung durch Pat. abgebrochen` |
| `4` | `Entlassung nach Hause` |
| `5` | `Entlassung zu weiterbehandelnden Arzt` |
| `6` | `kein Arztkontakt` |
| `OTH` | `Sonstige Entlassung` |
| `Sonstiges` | `Sonstige Entlassung` |

