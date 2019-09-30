<!--
title: Wikidata as authority linking hub
lang: en
slideOptions:
  README: https://github.com/hakimel/reveal.js/#configuration
  slideNumber: false
  showNotes: false
  theme: white
-->

<!-- Adjust the default reveal.js style -->
<style type="text/css">
@import "https://hackmd.io/build/reveal.js/css/theme/white.css";
.reveal h1, .reveal h2, .reveal h3 { text-align: left; text-transform: none }
.reveal p, .reveal ul, .reveal ol { text-align: left; display: block; }
.reveal section img { border: none; box-shadow: none; }
</style>

<!--
Unter https://hackmd.io/p/S1YmXWC0e werden die Slides im Präsentationsmodus mit reveal.js angezeigt. Mit "S" werden die Speaker-Notes angezeigt.
-->

# Wikidata as authority linking hub

*Joachim Neubert (ZBW)*
*Jakob Voß (VZG)*

DINI AG KIM Workshop
Mannheim, 4. Mai 2017

---

# Introduction

---

## Authority files

Consistently refer to entities

* Via identifier ("things, not strings")
* GND, MeSH, STW, ISIL, RePEc-Authors...

---

## Linking hubs

Connect identifiers among authority files

* `owl:sameAs`, `skos:exactMatch`, `skos:closeMatch`...
* [VIAF](http://viaf.org), sameAs.org, [Wikidata](https://wikidata.org)...

![](https://i.imgur.com/dgRaN33.png)


Note: * VIAF - Libraries / algorithmically generated clusters
* samAs - Semantic Web / harvested coreference links from the web
* wikidata - Community / curated content
---

## Wikidata

* Knowledge base of Wikimedia projects
* All kinds of entities
    * concepts, places, people, works...

---

## Wikidata Usage

* Editable by anyone
    * via Website and API
    * via apps that use the API
* Data available
    * http://query.wikidata.org/ (SPARQL)
    * JSON API & database dumps

---

## Wikidata Statements

![](https://upload.wikimedia.org/wikipedia/commons/c/ce/Wikidata_statement_with_ids.svg)

Note:

Wikidata consists of 
* Items
    * uniquely identified by an item-id (Q...)
    * having a label in each language
* Statements
    * each with a property
        * uniquely identified with a property-id (P...)
      * and a value (string, date, item, external identifier...)
    * and optional qualifiers and references

---

## Wikidata item example

![](https://i.imgur.com/05SpqBX.jpg)

Note: 

* This is a more condense display of a Wikidata item, based on the "SQID" Wikidata browser. 
* Note the list of identifiers for this item/person, linking to other authority files

---

## Authority file identifiers in Wikidata

More than half of all Wikidata properties

* Datatype external identifier (~1,750)
* [Properties for authority control](https://www.wikidata.org/wiki/Q18614948) (~1,500)
* Properties with corresponding KOS (~220)

Note: The total number is hard to measure because of the "organic" organization of Wikidata

---

# Wikidata---ISIL (organizations)

Example:

*Neuschwanstein Castle* ([Q4152](https://www.wikidata.org/wiki/Q4152))
ISIL ([P791](https://www.wikidata.org/wiki/Property:P791)): *DE-MUS-051612*

Current state:

* lobid.org: ~15,000 ISIL (DACH only)
* Wikidata: ~6,500 ISIL

---

## Tool: *Mix'n'match*

* Web application mapping tool 
* Helps to add 1-to-1-mappings

https://tools.wmflabs.org/mix-n-match/

---

## Step 1: Upload ISIL list with names

![](https://i.imgur.com/Sh89f3l.png)


---

## Step 2: Confirm match candidates

![Automatically matched](https://i.imgur.com/st847ta.png)

---

![Visual Mode](https://i.imgur.com/9WWCrCa.png)


Note: The visual mode is even more handy to confirm mappings

---

# GND---RePEc Authors

* In [EconBiz](http://www.econbiz.de) economics search portal authors are identified differently:
    * by **GND ID** in data from ZBW's Econis catalog (and from others)
    * by **RePEc Author ID** in data from *Research Papers for Economics*
* Large volumes: 450,000 vs. 50,000 distinct persons
* ~3,000 pairs of IDs discovered in a previous project

Note: 
* GND = well known and interlinked
* RAS = high qualitiy data, curated by the authors themselves, incented by rankings - but: linked to nothing else in the world

Maintaining a custom mapping environment would require
* custom software, database, operations
* access limited to ZBW staff

---

## Utilizing Wikidata as Linking Hub

* Wikidata-Properties for both identifier systems
    * GND ID ([P227](https://www.wikidata.org/wiki/Property:P227)): ~375,000 items which are humans
    * RePEc Short-ID ([P2428](https://www.wikidata.org/wiki/Property:P2428)): ~2,200 items
* Since every identifier should identify exactly one person, we can derive
    *  GND ID  ⟶ Wikidata ID  ⟶ RePEc ID
    *  RePEc ID ⟶ Wikidata ID ⟶ GND ID

    where both properties have values (~760 items)

Note: I describe the process in 6 steps, which should be portable to other similar mappings. All numbers as of April 25th 2017

---

## Step 1: Supplement WD items with RePEc Short-IDs

* 77 WD items with GND ID without RePEc Short-ID

* Transform to quickstatements input file ([SPARQL query](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/repec/query&queryRef=https://api.github.com/repos/zbw/repec-ras/contents/sparql/missing_ids_in_wikidata_from_mapping.rq), [script](https://github.com/zbw/repec-ras/blob/master/bin/create_missing_ids_in_wikidata_from_mapping.pl))

* Copy & paste to *[QuickStatements2](https://tools.wmflabs.org/quickstatements/)*

---

### Bulk editing with Quickstatements2

![](https://i.imgur.com/yYx3Vxn.png)

Further simplification with upcoming release of *wdmapper* command line tool

---

## Step 2: Supplement WD items with GND IDs

* 384 WD items with RePEc Short-ID without GND ID
* *same process as other direction*

---

## Step 3: Add "most important" authors with RePEc identifiers

* Scraped from ranking pages ([Top 10% economists](https://ideas.repec.org/top/top.person.all.html), [Top 10% female economists](https://ideas.repec.org/top/top.women.html))
* Transform and load into *Mix'n'match*
* *same process as ISIL use case*
    * Confirm match candidates (1,600 of 4,600)

---

## Step 4: Add "most important" authors with GND identifiers

* 18,000 authors with >30 publications in EconBiz
* loaded as *Mix'n'match* set *GND economists (de)*
* order by publication count (descending)
* 25% matched automatically with Wikidata items

⇒ *Work to do*

---

## Step 5: Rinse and repeat

* Repeat *Mix'n'match* "sync" operation before starting to work manually
    * often, people are adding data at fast rate!
* Repeat bulk adding of missing identifiers to make use of complementing identifiers added meanwhile

---

## Step 6: Add missing Wikidata items

* Verify missing authors indeed are not in Wikidata
* Generate Wikidata items from from existing mappings or lists, e.g. top female economists

![Using Wikidata's QuickStatements tool](https://i.imgur.com/h95sTQl.png)

---

## Result

The mapping, currently (2017-05-02) consisting of 

* 1233 matching GND - RePEc short IDs
    * 769 matches from ZBW's mapping
    * 464 matches contributed by non-ZBW staff
* Finally all 3,000 pairs from ZBW's mapping


---

### Further Results

* Identifiers and items inserted by individual Wikidata contributors add up continuously
* Mapping steps can be repeated with additional input data (e.g., [top economists from Latin America](https://ideas.repec.org/top/top.lamerica.html#authors), "all authors affiliated to Leibniz institutions in economics"...
* Further identifiers (VIAF, ORCID, ...) provide more opportunities for indirect matching

Results from _every step in the mapping process_ and all indiviual efforts immediately available and preserved

---

# Tools

* *Mix'n'match* (intellectual matching)
* *QuickStatements/2* (addition of generated properties and items)
* [*wdmapper*](https://github.com/gbv/wdmapper) (harvest, diff & add mappings)
    * Support of indirect mappings (e.g., GND-WD-RePEc) in one step
    * Work in progress (no adding by now)
    * Daily harvested mappings in multiple formats:
      http://coli-conc.gbv.de/concordances/wikidata/

Tools for mass editing require approved bot account.

---

## Limitations

* Mapping algorithms to find mapping candidates
* Limitation to easy-1-1-relationships
    * part-whole
    * often new Wikidata items required
    * depends on the use case
* Large sets of mappings and results
* Regular review required for maintainance

Note:
* We just relied on the basic mapping algorithm build into Mix'n'match and added already existing mappings to Wikidata
* Each tool has its limitation on large result sets

---

# Benefits

* Outsourced interface, storage, and operation
* Crowdsourced mapping maintenance
* Wikidata has policies and tools for data quality
* Open Data for multiple and unknown uses
* Additional benefits:
    * multilingual Wikipedia links
    * lots of (formatted) data, nice pictures, ...
    * links to multiple other vocabularies

