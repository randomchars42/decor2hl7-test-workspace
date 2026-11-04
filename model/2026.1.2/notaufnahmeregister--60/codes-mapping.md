# Input-value-to-dataset-code mapping

Edit `codes-mapping.json`. Canonical dataset values are accepted unchanged;
the tables therefore show only aliases that require translation and unresolved
input values observed in the CSV files. An unresolved value in a finite domain
is an input error; source normalization does not choose an HL7 missing-data code.

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
| `715933006` | `Provision of medical patient escort (procedure)` |
| `1156336002` | `Escorting subject of care (procedure)` |
| `ärztlich begleitet` | `Provision of medical patient escort (procedure)` |
| `nicht-ärztlich begleitet` | `Escorting subject of care (procedure)` |

## Ergebnis der Ersteinschätzung

`ersteinschatzung.parameter_der_ersteinschatzung.ergebnis_der_ersteinschatzung` — 15 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `LA21538-6` | `Resuscitation` |
| `LA19759-2` | `Emergent` |
| `LA21544-4` | `Urgent` |
| `LA21587-3` | `Less urgent` |
| `LA21545-1` | `Nonurgent` |

## verwendetes Ersteinschätzungssystem

`ersteinschatzung.parameter_der_ersteinschatzung.verwendetes_ersteinschatzungssystem` — 5 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `713009001` | `Manchester Triage System (assessment scale)` |
| `713010006` | `Emergency Severity Index (assessment scale)` |
| `smed` | `SmED` |
| `74964007` | `Other (qualifier value)` |
| `260413007` | `None (qualifier value)` |
| `MTS` | `Manchester Triage System (assessment scale)` |
| `ESI` | `Emergency Severity Index (assessment scale)` |
| `sonstige` | `Other (qualifier value)` |
| `keines` | `None (qualifier value)` |

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
| `17` | `Atmet nach Freimachen der Atemwege` |
| `118` | `Nicht ansprechbares Kind` |
| `5` | `Akute Augenverletzung mit Chemikalien` |
| `157` | `Speichelfluss` |
| `172` | `Unnormale Atemfrequenz` |
| `113` | `Nabelschnurvorfall` |
| `136` | `Rekapillarisierungszeit unnormal` |
| `C` | `C-Problem (Zirkulation)` |
| `117` | `Nicht ansprechbar` |
| `11` | `Anhaltender Krampfanfall` |
| `75` | `Hypoglykämie` |
| `A` | `A-Problem (Atemwege)` |
| `153` | `Sichtbare Körperteile des Fötus` |
| `B` | `B-Problem (Atmung)` |
| `130` | `Puls unnormal` |
| `162` | `Stridor` |

## MTS-Indikatoren ORANGE

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_orange` — 66 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `24` | `Auffällige respiratorische Anamnese` |
| `33` | `Bericht über Krampfanfall` |
| `152` | `Sichtbare abdominelle Massierung` |
| `4` | `Akute Atemnot` |
| `159` | `Stärkster Schmerz oder Juckreiz` |
| `186` | `Veränderter Bewusstseinszustand` |
| `57` | `Gesichtsödem` |
| `150` | `Sehr niedriger Peakflow` |
| `46` | `Erschöpfungszustand` |
| `148` | `Sehr heiß` |
| `71` | `Hohes Risiko (künftiger) Eigengefährdung` |
| `2` | `Abruptes Einsetzen` |
| `77` | `Inhalationstrauma` |
| `65` | `Hervortreten von Organen` |
| `10` | `Alter unter 25 Jahren` |
| `64` | `Heißer Säugling` |
| `128` | `Priapismus` |
| `187` | `Veränderter Bewusstseinszustand nicht vollständig durch Alkoholgenuss erklärbar` |
| `149` | `Sehr niedrige O2-Sättigung` |
| `16` | `Anzeichen für stärkste Schmerzen` |
| `91` | `Keine Reaktion auf die Eltern` |
| `127` | `Potentiell gefährlicher Fremdkörper` |
| `137` | `Risiko anhaltender Kontamination` |
| `141` | `Schmerzausstrahlung in den Rücken` |
| `72` | `Hohes Risiko (künftiger) Fremdgefährdung` |
| `183` | `Vaginaler Blutverlust zweite Schwangerschaftshälfte` |
| `6` | `Akuter vollständiger Visusverlust` |
| `112` | `Meningismuszeichen` |
| `45` | `Erhöhte Atemarbeit` |
| `74` | `Hyperglykämie mit Ketose` |
| `125` | `Penetrationstrauma des Auges` |
| `131` | `Purpura` |
| `177` | `Unterkühlt` |
| `3` | `Aktive Wehentätigkeit` |
| `158` | `Starker vaginaler Blutverlust` |
| `151` | `Sepsisverdacht` |
| `140` | `Schlaffes Kind` |
| `1` | `Abdominalschmerz` |
| `66` | `Hoch letale Chemikalie` |
| `191` | `Zungenödem` |
| `18` | `Auffällige Allergieanamnese` |
| `69` | `Hohe Letalität` |
| `160` | `Stärkster Schmerz` |
| `26` | `Auffälliger Verletzungsmechanismus` |
| `52` | `Gefährdete (distale) Durchblutung` |
| `154` | `Skrotalgangrän` |
| `34` | `Bericht über Überdosierung oder Vergiftung` |
| `98` | `Kritischer Hautzustand` |
| `114` | `Neuer unnormaler Puls` |
| `181` | `Unzureichende Vorgeschichte (des Alkoholkonsums)` |
| `67` | `Hoch letaler Tierbiss` |
| `85` | `Kann nicht in ganzen Sätzen sprechen` |
| `8` | `Akutes Einsetzen nach einer Verletzung` |
| `9` | `Akutes neurologisches Defizit` |
| `19` | `Auffällige Anamnese mit GI-Blutungen` |
| `135` | `Reagiert nur auf Ansprache oder Schmerz` |
| `36` | `Besonderes Infektionsrisiko` |
| `49` | `Frisch- oder altblutiger Stuhlgang` |
| `87` | `Kardialer Schmerz` |
| `119` | `Nicht verblassender Ausschlag` |
| `174` | `Unstillbare große Blutung` |
| `190` | `Verringerte Kindsbewegungen 2. SSH` |
| `164` | `Subkutane Gasansammlung` |
| `44` | `Erbrechen von Blut` |
| `53` | `Gefährdete distale Durchblutung` |
| `28` | `Bekannte oder vermutete Immunsuppression` |

## MTS-Indikatoren GELB

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_gelb` — 68 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `15` | `Anzeichen für mäßige Schmerzen` |
| `184` | `Vaginaltrauma` |
| `110` | `Mäßiges Risiko (künftiger) Eigengefährdung` |
| `22` | `Auffällige medizinische Vorgeschichte` |
| `39` | `Direktes Rückentrauma` |
| `108` | `Mäßiger Schmerz oder Juckreiz` |
| `188` | `Veränderter Bewusstseinszustand vollständig durch Alkoholgenuss erklärbar` |
| `73` | `Hyperglykämie` |
| `143` | `Schmerzen bei Bewegung im Gelenk` |
| `20` | `Auffällige hämatologische oder metabolische Anamnese` |
| `21` | `Auffällige kardiale Anamnese` |
| `165` | `Teerstuhl oder frische Blutauflagerung` |
| `78` | `Jünger reduzierte Sehschärfe` |
| `171` | `Unfähig zu Gehen` |
| `145` | `Schwangerschaft möglich` |
| `176` | `Unterbauchschmerz` |
| `90` | `Keine Nahrungsaufnahme möglich` |
| `51` | `Frisches neurologisches Defizit` |
| `38` | `Direktes Nackentrauma` |
| `55` | `Gehfähig` |
| `156` | `Skrotumschwellung/-rötung` |
| `175` | `Unstillbare kleine Blutung` |
| `132` | `Rasches Einsetzen` |
| `142` | `Schmerzausstrahlung in die Schulter` |
| `120` | `Niedrige O2-Sättigung` |
| `60` | `Großflächige Absonderungen oder Bläschenbildungen` |
| `37` | `Blutungsneigung` |
| `182` | `Vaginaler Blutverlust` |
| `109` | `Mäßiger Schmerz` |
| `68` | `Hodenschmerz` |
| `133` | `Rauchexposition` |
| `13` | `Anhaltendes Herzklopfen` |
| `12` | `Anhaltendes Erbrechen` |
| `104` | `Makrohämaturie` |
| `32` | `Bericht über Kopfverletzung` |
| `107` | `Mäßige Letalität` |
| `7` | `Akuter Zahnverlust` |
| `59` | `Grobe Fehlstellung` |
| `92` | `Keine Urinausscheidung` |
| `29` | `Bericht über akutes Erbrechen von Blut` |
| `116` | `Nicht ablenkbar` |
| `178` | `Untröstbar durch die Eltern` |
| `126` | `Pleuraschmerz` |
| `115` | `Neuer Verwirrtheitszustand` |
| `14` | `Anzeichen für Dehydration` |
| `170` | `Überwärmtes Neugeborenes` |
| `99` | `Langanhaltendes oder ununterbrochenes Schreien` |
| `106` | `Mäßig letaler Tierbiss` |
| `23` | `Auffällige psychiatrische Anamnese` |
| `35` | `Bericht über Unfall` |
| `89` | `Keine Nahrungsaufnahme` |
| `122` | `Offene Fraktur` |
| `121` | `Niedriger Peakflow` |
| `94` | `Kolikartige Schmerzen` |
| `30` | `Bericht über Bewusstlosigkeit` |
| `105` | `Mäßig letale Chemikalie` |
| `163` | `Stromunfall` |
| `169` | `Überwärmtes Gelenk` |
| `31` | `Bericht über jüngeren Auslandsaufenthalt` |
| `62` | `Harnverhalt` |
| `173` | `Unpassende Vorgeschichte` |
| `63` | `Heiß` |
| `70` | `Hoher Blutdruck` |
| `25` | `Auffällige Unruhe` |
| `42` | `Empfindliche Kopfhaut` |
| `111` | `Mäßiges Risiko (künftiger) Fremdgefährdung` |
| `161` | `Störend` |
| `88` | `Kein Ansprechen auf eigene Asthmamedikation` |

## MTS-Indikatoren GRÜN

`ersteinschatzung.parameter_der_ersteinschatzung.manchester_triage_system.mtsindikator.mtsindikatoren_grun` — 28 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `43` | `Erbrechen` |
| `48` | `Fremdkörpergefühl` |
| `56` | `Gerötetes Auge` |
| `129` | `Produktiver Husten` |
| `96` | `Kopfschmerzen` |
| `155` | `Skrotaltrauma` |
| `80` | `Jüngere Verletzung` |
| `82` | `Jüngerer leichter Schmerz oder Juckreiz` |
| `58` | `Gesichtsschwellung` |
| `168` | `Überwärmt` |
| `76` | `Ikterus` |
| `102` | `Lokale Infektion` |
| `166` | `Thoraxverletzung` |
| `147` | `Schwindel` |
| `185` | `Veränderte Sensibilität im Gesicht` |
| `146` | `Schwellung` |
| `41` | `Dysurie` |
| `95` | `Kopfhauthämatom` |
| `93` | `Keuchen` |
| `179` | `Untypisches Verhalten` |
| `40` | `Doppelbilder` |
| `123` | `Ohrmuschelhämatom` |
| `81` | `Jüngerer Hörverlust` |
| `47` | `Fehlstellung` |
| `84` | `Jüngeres Problem` |
| `83` | `Jüngerer leichter Schmerz` |
| `27` | `Ausfluss` |
| `103` | `Lokale Inflammation` |

## ESI-Triage

`ersteinschatzung.parameter_der_ersteinschatzung.esitriage` — 12 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `Rot` | `sofortige lebensrettende Maßnahme notwendig` |
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
| `SCTPOCC-52684005` | `Verdacht auf Gewaltverbrechen` |
| `74964007` | `Other (qualifier value)` |
| `V. a. Gewaltverbrechen` | `Verdacht auf Gewaltverbrechen` |
| `andere` | `Other (qualifier value)` |

## Fahrzeug des Verunfallten

`notfallanamnese.unfallanamnese.fahrzeug_des_verunfallten` — 14 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `V09.3` | `Pedestrian injured in unspecified traffic accident` |
| `71783008` | `Automobile, device (physical object)` |
| `12247004` | `Truck, device (physical object)` |
| `22674006` | `Motor bus, device (physical object)` |
| `90748009` | `Motorcycle, device (physical object)` |
| `303973000` | `Agricultural vehicle (physical object)` |
| `31493009` | `Pedal cycle, device (physical object)` |
| `705415002` | `Assistive cycle (physical object)` |
| `465073007` | `Assistive scooter, electric-motor-driven (physical object)` |
| `38548008` | `Streetcar, device (physical object)` |
| `62193008` | `Railway train, device (physical object)` |
| `21753002` | `Aircraft, device (physical object)` |
| `12561005` | `Watercraft, device (physical object)` |
| `74964007` | `Other (qualifier value)` |
| `kein Fahrzeug - als Fußgänger angefahren` | `Pedestrian injured in unspecified traffic accident` |
| `PKW` | `Automobile, device (physical object)` |
| `LKW` | `Truck, device (physical object)` |
| `Bus` | `Motor bus, device (physical object)` |
| `Motorrad` | `Motorcycle, device (physical object)` |
| `Traktor` | `Agricultural vehicle (physical object)` |
| `Fahrrad` | `Pedal cycle, device (physical object)` |
| `unterstütztes Fahrrad` | `Assistive cycle (physical object)` |
| `Pedelec` | `Assistive cycle (physical object)` |
| `E-Bike` | `Assistive cycle (physical object)` |
| `E-Scooter` | `Assistive scooter, electric-motor-driven (physical object)` |
| `Straßenbahn` | `Streetcar, device (physical object)` |
| `Zug` | `Railway train, device (physical object)` |
| `Flugzeug` | `Aircraft, device (physical object)` |
| `Schiff` | `Watercraft, device (physical object)` |
| `Anderes` | `Other (qualifier value)` |

## Unfallkinetik

`notfallanamnese.unfallanamnese.unfallkinetik` — 13 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `LA28131-3` | `Height range of fall - Less than 3 meters` |
| `LA28130-5` | `Height range of fall - Greater than 3 meters` |
| `33036003` | `Fall on same level (event)` |
| `269796009` | `Shotgun accident (event)` |
| `274923000` | `Accident caused by edge tool (event)` |
| `429061003` | `Injury due to impact of moving subject with the stationary object (disorder)` |
| `39826003` | `Struck by explosion (event)` |
| `33980000` | `Deflagration (physical force)` |
| `219236005` | `Assault by striking with blunt object (event)` |
| `242984003` | `Injury of unknown intent due to impact with moving vehicle (disorder)` |
| `242023009` | `Asphyxia by burial under powder or solid matter (event)` |
| `242559006` | `Accident caused by surface earth or water movement (event)` |
| `74964007` | `Other (qualifier value)` |
| `Sturz mit Fallhöhe >= 3 m` | `Height range of fall - Greater than 3 meters` |
| `Sturz mit Fallhöhe < 3 m` | `Height range of fall - Less than 3 meters` |
| `Ebenerdiger Sturz` | `Fall on same level (event)` |
| `Fahrzeug gegen (fest)stehendes Objekt` | `Injury due to impact of moving subject with the stationary object (disorder)` |
| `Fahrzeug gegen sich bewegendes Objekt` | `Injury of unknown intent due to impact with moving vehicle (disorder)` |
| `Schlag` | `Assault by striking with blunt object (event)` |
| `Schuss` | `Shotgun accident (event)` |
| `Stich` | `Accident caused by edge tool (event)` |
| `Explosion` | `Struck by explosion (event)` |
| `Verpuffung` | `Deflagration (physical force)` |
| `Verschüttung` | `Asphyxia by burial under powder or solid matter (event)` |
| `Lawine` | `Accident caused by surface earth or water movement (event)` |
| `Andere` | `Other (qualifier value)` |

## Unfallart TraumaRegister

`notfallanamnese.unfallanamnese.unfallart_trauma_register` — 18 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `V49` | `Car occupant injured in other and unspecified transport accidents` |
| `V69` | `Occupant of heavy transport vehicle injured in other and unspecified transport accidents` |
| `V79` | `Bus occupant injured in other and unspecified transport accidents` |
| `X59.9` | `Exposure to unspecified factor causing other and unspecified injury` |
| `W20` | `Struck by thrown, projected or falling object` |
| `Y00` | `Assault by blunt object` |
| `X96` | `Assault by explosive material` |
| `X99` | `Assault by sharp object` |
| `X93` | `Assault by handgun discharge` |
| `V99` | `Unspecified transport accident` |
| `V09` | `Pedestrian injured in other and unspecified transport accidents` |
| `V29.91` | `Electric (assisted) bicycle rider (driver) (passenger) injured in unspecified traffic accident` |
| `33036003` | `Fall on same level (event)` |
| `LA28130-5` | `Height range of fall - Greater than 3 meters` |
| `LA28131-3` | `Height range of fall - Less than 3 meters` |
| `1264045009` | `Electric scooter accident (event)` |
| `V19` | `Pedal cycle rider injured in other and unspecified transport accidents` |
| `V29.99` | `Rider (driver) (passenger) of other motorcycle injured in unspecified traffic accident` |
| `Verkehr - PKW-Insasse` | `Car occupant injured in other and unspecified transport accidents` |
| `Verkehr - LKW-Insasse` | `Occupant of heavy transport vehicle injured in other and unspecified transport accidents` |
| `Verkehr - Bus-Insasse` | `Bus occupant injured in other and unspecified transport accidents` |
| `Verkehr – Motorradfahrer/-sozius` | `Rider (driver) (passenger) of other motorcycle injured in unspecified traffic accident` |
| `Verkehr – Fahrrad` | `Pedal cycle rider injured in other and unspecified transport accidents` |
| `Verkehr – unterstütztes Fahrrad` | `Electric (assisted) bicycle rider (driver) (passenger) injured in unspecified traffic accident` |
| `Verkehr - E-Scooter` | `Electric scooter accident (event)` |
| `Verkehr - Fußgänger angefahren` | `Pedestrian injured in other and unspecified transport accidents` |
| `Verkehr - Sonstiger Verkehrsunfall` | `Unspecified transport accident` |
| `Sturz - Sturz mit Fallhöhe < 3m` | `Height range of fall - Less than 3 meters` |
| `Sturz - ebenerdiger Sturz` | `Fall on same level (event)` |
| `Sonstige - Schlagverletzung` | `Assault by blunt object` |
| `Sonstige - Schussverletzung` | `Assault by handgun discharge` |
| `Sonstige - Stichverletzung` | `Assault by sharp object` |
| `Sonstige - Explosion/Verpuffung` | `Assault by explosive material` |
| `Thermomechanische Kombinationsverletzung` | `Assault by explosive material` |
| `Sonstige - Verschüttung` | `Struck by thrown, projected or falling object` |
| `Sonstige - andere Unfallarten` | `Exposure to unspecified factor causing other and unspecified injury` |

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
| `UNK` | `Unbekannt` |
| `Information nicht erhebbar` | `Unbekannt` |

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
| `UNK` | `Unbekannt` |
| `nicht ausgefüllt` | `Unbekannt` |

## Pupillenweite (links)

`vitalparameter.pupillenweite.pupillenweite_links` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `D` | `weit` |
| `M` | `mittel` |
| `C` | `eng` |
| `UNK` | `Unbekannt` |
| `nicht ausgefüllt` | `Unbekannt` |

## Pupillenreaktion (rechts)

`vitalparameter.pupillenreaktion.pupillenreaktion_rechts` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `B` | `prompt` |
| `D` | `träge` |
| `A` | `keine` |
| `UNK` | `Unbekannt` |
| `nicht ausgefüllt` | `Unbekannt` |

## Pupillenreaktion (links)

`vitalparameter.pupillenreaktion.pupillenreaktion_links` — 4 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `B` | `prompt` |
| `D` | `träge` |
| `A` | `keine` |
| `UNK` | `Unbekannt` |
| `nicht ausgefüllt` | `Unbekannt` |

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
| `32811000119109` | `Infection caused by multi antimicrobial drug resistant bacteria (disorder)` |
| `25374005` | `Inflammation of stomach and intestine (disorder)` |
| `56717001` | `Tuberculosis (disorder)` |
| `7180009` | `Meningitis (disorder)` |
| `6142004` | `Influenza (disorder)` |
| `840539006` | `Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)` |
| `303011007` | `Neutropenic disorder (disorder)` |
| `409522005` | `Standard precautions (procedure)` |
| `6415009` | `Human respiratory syncytial virus (organism)` |
| `74964007` | `Other (qualifier value)` |
| `multiresistenter Keim` | `Infection caused by multi antimicrobial drug resistant bacteria (disorder)` |
| `Gastroenteritis` | `Inflammation of stomach and intestine (disorder)` |
| `Tuberkulose` | `Tuberculosis (disorder)` |
| `Meningitis` | `Meningitis (disorder)` |
| `Influenza` | `Influenza (disorder)` |
| `COVID-19` | `Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)` |
| `Neutropenie` | `Neutropenic disorder (disorder)` |
| `Prophylaktische Isolation auf Basis RKI-Empfehlung` | `Standard precautions (procedure)` |
| `Andere` | `Other (qualifier value)` |

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

## Geschlecht

`patient.geschlecht` — 3 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `F` | `Female` |
| `M` | `Male` |
| `UN` | `Undifferentiated` |

## Versichertenstatus

`hauptkostentrager.versicherungsverhaltnis.versichertenstatus` — 2 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `FAMDEP` | `family dependent` |
| `SELF` | `self` |

## Versichertenstatus GKV

`hauptkostentrager.versicherungsverhaltnis.versichertenstatus_gkv` — 3 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `1` | `Mitglied` |
| `3` | `Familienangehörige` |
| `5` | `Rentner` |

## Als KV-Fall abgerechnet

`hauptkostentrager.versicherungsverhaltnis.kv_fall` — 2 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `AKV` | `KV-Fall` |
| `AOTH` | `kein KV-Fall` |

## Lateralität

`abschlussdiagnosen.abschlussdiagnose.lateralitat` — 6 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `L` | `Left` |
| `R` | `Right` |
| `B` | `Bilateral` |
| `U` | `Unilateral` |
| `A` | `Atypical` |
| `UNK` | `Unbekannt` |

## Aufnehmende Fachabteilung

`administrative_verlegungsentlassungsinformationen.aufnehmende_fachabteilung` — 39 canonical values accepted directly; 0/0 observed input values mapped.

| Input value | Dataset value |
|---|---|
| `0100` | `Innere Medizin` |
| `0200` | `Geriatrie` |
| `0300` | `Kardiologie` |
| `0400` | `Nephrologie` |
| `0500` | `Hämatologie und internistische Onkologie` |
| `0600` | `Endokrinologie` |
| `0700` | `Gastroenterologie` |
| `0800` | `Pneumologie` |
| `0900` | `Rheumatologie` |
| `1000` | `Pädiatrie` |
| `1100` | `Kinderkardiologie` |
| `1200` | `Neonatologie` |
| `1300` | `Kinderchirurgie` |
| `1400` | `Lungen- und Bronchialheilkunde` |
| `1500` | `Allgemeine Chirurgie` |
| `1600` | `Unfallchirurgie` |
| `1700` | `Neurochirurgie` |
| `1800` | `Gefäßchirurgie` |
| `1900` | `Plastische Chirurgie` |
| `2000` | `Thoraxchirurgie` |
| `2100` | `Herzchirurgie` |
| `2200` | `Urologie` |
| `2300` | `Orthopädie` |
| `2400` | `Frauenheilkunde und Geburtshilfe` |
| `2500` | `davon Geburtshilfe` |
| `2600` | `Hals-, Nasen-, Ohrenheilkunde` |
| `2700` | `Augenheilkunde` |
| `2800` | `Neurologie` |
| `2900` | `Allgemeine Psychiatrie` |
| `3000` | `Kinder- und Jugendpsychiatrie` |
| `3100` | `Psychosomatik/Psychotherapie` |
| `3200` | `Nuklearmedizin` |
| `3300` | `Strahlenheilkunde` |
| `3400` | `Dermatologie` |
| `3500` | `Zahn- und Kieferheilkunde, Mund- und Kieferchirurgie` |
| `3600` | `Intensivmedizin` |
| `2316` | `Orthopädie und Unfallchirurgie` |
| `2425` | `Frauenheilkunde` |
| `3700` | `Sonstige Fachabteilung` |

