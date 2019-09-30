# Wikidata (für Archive)

#### AK Archive der Leibniz-Gemeinschaft<br />Bonn, 1.10.2019

[Joachim Neubert](http://zbw.eu/labs/en/user/joachim-neubert)

<!--
ZBW - Leibniz-Informationszentrum Wirtschaft, Kiel/Hamburg
ZBW - Leibniz Information Centre for Economics, Kiel/Hamburg (Germany)
-->

<a href="https://zbw.eu"><img src="images/zbw_logo.png" width="33%" alt="ZBW - Leibniz Information Centre for Economics" /></a><br />

<small>https://jneubert.github.io/slides/wd-ak-archive-2019/<br />
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="images/cc-by.png" class="plain" width="25%" /></a></small>

Note: Wer hat schon
- von Wikidata gehört?
- Abfragen an Wikidata formuliert?
- zu Wikidata beigetragen?

---

## Agenda

1. Was ist und wie funktioniert Wikidata?
2. Wie können Archive
  - es nutzen?
  - sich verlinken?
  - beitragen?

<!--
3. Wie sichert Wikidata die Qualität?
-->

---

## Wikidata ist ...

... eine freie, kollaborative und vielsprachige Wissensdatenbank.

- Daten für alle Zwecke frei verfügbar (CC0-Lizenz)
- jede/r kann ändern (wie in Wikipedia)
- Inhalte für alle Sprachen verfügbar

Note: Aus Wikipedia entstanden
- Information an einer Stelle
- Verknüpfung Sprachversionen

explizit auch für andere Nutzungen

---

## Strukturierte Daten

<img src="images/Wikidata_statement_with_ids.svg" style="background-color:white" />

Note: Wikidata besteht im wesentlichen aus
- Items
  - eindeutig identifiziert durch Qids
  - mit einem Label pro Sprache
- Statements mit
  - Property
    - eindeutig identifiziert durch Pids
    - ebenfalls ein Label pro Sprache
  - Wert (String, Datum, Item, etc)
    - optional Qualifier und Referenzen

---

### Beispiel-Item

[![aagarwal](images/agarwal_sqid.jpg)](https://tools.wmflabs.org/sqid/#/view?id=Q4913801&lang=de)

Note: Englische / deutsche Fassung (Link)
- nicht nur Text zu dem Item selbst, sondern auch die Bezeichnungen verlinkter Items und der Properties folgen der bevorzugten Sprache
- Referenzen
- Items nicht nur zu Personen, sondern auch zu Orten, Organisationen, Werken, abstrakten Konzepten ...

---

## Nutzung - Schnittstellen

- [Website](https://www.wikidata.org) / Wikipedia verlinkt auf Items
- Abfragen über http://query.wikidata.org/ (SPARQL)
- Gesamt-Datendumps
- API (JSON)
- Applikationen auf Grundlage der API

---

### Verlinkung zu externen Daten - Beispiel

[![aagarwal](images/agarwal_sqid.jpg)](https://tools.wmflabs.org/sqid/#/view?id=Q4913801&lang=de)

Note: Sektion Identifier / Bezeichner
- Link zu RePEc - direkter Zugriff auf Working Papers der Autorin

---

## Verlinkungs-Mechanismus

- ca. 4000 Properies vom Datentyp "external-id"
- große Vielfalt, z.B.:
  - GND / VIAF / Geonames IDs
  - Proteine
  - afrikanische Pflanzen
  - schwedische Kulturerbe-Objekte
- funktionsfähige Links (in Verbindung mit einem URL-Template)
- die Einrichtung von neuen Properties kann jede/r beantragen [(Beispiel)](https://www.wikidata.org/wiki/Wikidata:Property_proposal/STW_Thesaurus_for_Economics_ID)
- Toolunterstützung, insbesondere [Mix-n-Match](https://tools.wmflabs.org/mix-n-match/)

---

## Wie können Archive beitragen?

- Links zu ihren Beständen
- fehlende Werte für Properties ergänzen (mit Tools wie [QuickStatements](https://tools.wmflabs.org/quickstatements/))
- fehlende Items ergänzen (dito)

---

### z.B. Pressemappe 20. Jahrhundert

- alle 5.266 Personenmappen verlinkt (346 neue Items)
- zusätzliche Daten (z.B. Berufsangaben für Wirtschaftswissenschaftler/innen)
- zusätzliche Verknüpfungen (z.B. Famile Warburg)
- in Abfragen und Anwendungen nutzbar
  - z.B. Karte von Wirtschaftswissenschaftler/innen der Pressemappe per [Wikidata-Abfrage](https://w.wiki/3uX)

Note: Vorbereitung einer Data Donation an Wikidata
- konkret die Metadaten
- ZBW bleibt in der Verantwortung (Wikidata als sekundäre Datenbank)

---

## Agieren in der Wikidata-Community

- Beteilung mit individuellem User (tunlichst unter Offenlegung der beruflichen Einbindung - [Beispiel](https://www.wikidata.org/wiki/User:Jneubert))
- keine zentrale Entscheidungsstruktur
- Konsensbildung, mit dem [Project Chat](https://www.wikidata.org/wiki/Wikidata:Project_chat) als wichtigstem Forum
- WikiProjects, um Themen zu fokussieren (oft auch gute Anlaufstelle für Datenstrukturierung)

---

### z.B.

[![wikiproject pm20](images/wikiproject_pm20.png)](https://www.wikidata.org/wiki/Wikidata:WikiProject_20th_Century_Press_Archives)

---

## Wikidata für Archive

- erhöhte Sichtbarkeit (zusätzlicher Discovery-Kanal)
- Kontextualisierung für die eigenen Bestände, ohne die Daten selbst erheben/speichern zu müssen
- Crowdsourcing für eine erweiterte Erschließung?
- Einstieg in Linked Open Data

---

## Vielen Dank -<br />Fragen willkommen!

[Joachim Neubert](http://zbw.eu/labs/en/user/joachim-neubert)<br />
j.neubert@zbw.eu<br />
auf Wikidata: [Jneubert](https://www.wikidata.org/wiki/User:Jneubert)<br />
![zbw logo](images/zbw_logo.png)

---

# _zusätzliches Material_

---


