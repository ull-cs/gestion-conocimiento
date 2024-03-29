1. Deportes existentes en DBpedia.
```
SELECT ?sport ?description
WHERE {
  ?sport a dbo:Sport .
  ?sport dbo:abstract ?description .
  FILTER (LANG(?description) = 'en')
}
```
2. Películas dirigidas por Clint Eastwood.
```
PREFIX dbo: <http://dbpedia.org/ontology/>
PREFIX dbr: <http://dbpedia.org/resource/>

select ?peliculas
WHERE {
    ?peliculas dbo:director dbr:Clint_Eastwood .
}
```
Resultado:
```
{ "head": { "link": [], "vars": ["peliculas"] },
  "results": { "distinct": false, "ordered": true, "bindings": [
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/American_Sniper" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Dirty_Harry_(film_series)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Bird_(1988_film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/White_Hunter_Black_Heart" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Play_Misty_for_Me" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_15:17_to_Paris" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Bridges_of_Madison_County_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Unforgiven" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Breezy" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Bronco_Billy" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Eiger_Sanction_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Gauntlet_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Mule_(2018_film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Rookie_(1990_film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Invictus_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/J._Edgar" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Mystic_River_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/True_Crime_(1999_film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Blues_(film_series)__Piano_Blues__1" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/A_Perfect_World" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Absolute_Power_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Changeling_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Sudden_Impact" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Sully_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Honkytonk_Man" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Cry_Macho_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Gran_Torino" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Heartbreak_Ridge" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Hereafter_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/High_Plains_Drifter" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Richard_Jewell_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Firefox_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Flags_of_Our_Fathers_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Jersey_Boys_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Letters_from_Iwo_Jima" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Piano_Blues_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Space_Cowboys" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Blood_Work_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Midnight_in_the_Garden_of_Good_and_Evil_(film)" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Pale_Rider" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/Million_Dollar_Baby__Million_Dollar_Baby__1" }},
    { "peliculas": { "type": "uri", "value": "http://dbpedia.org/resource/The_Outlaw_Josey_Wales__The_Outlaw_Josey_Wales__1" }} ] } }
```
3. Nombre y la fecha de nacimiento de las 10 primeras personas registradas.
```
SELECT ?person ?birthPlace WHERE {
   ?person a dbo:Person ;
           dbo:birthPlace ?birthPlace .
}
LIMIT 10
```
Resultado:
Este ejemplo devolvería un conjunto de resultados con dos columnas: la primera columna contendría el recurso de la persona (?person) y la segunda columna contendría el lugar de nacimiento de esa persona (?birthPlace). La consulta solo devolvería los 10 primeros resultados:
```
{ "head": { "link": [], "vars": ["person", "birthPlace"] },
  "results": { "distinct": false, "ordered": true, "bindings": [
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/1976_(band)" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/Taiwan" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/2010_Portland_car_bomb_plot" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/Somalia" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/2011_Timbuktu_kidnapping" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/Sweden" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/2011_Timbuktu_kidnapping" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/South_Africa" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/2011_Timbuktu_kidnapping" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/Netherlands" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alison_Roman" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/California" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alison_Roman" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/Los_Angeles" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alison_Rose" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/United_Kingdom" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alison_Rose" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/Coventry" }},
    { "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alison_Routledge" }	, "birthPlace": { "type": "uri", "value": "http://dbpedia.org/resource/New_Zealand" }} ] } }
```
4. Personas nacidas en Barcelona.
```
SELECT ?person ?name WHERE {
    ?person dbo:birthPlace dbr:Barcelona .
    ?person foaf:name ?name .
}
```
5. Personas nacidas en París desde 1986.
```
PREFIX dbo: <http://dbpedia.org/ontology/>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX : <http://dbpedia.org/resource/>

SELECT ?name ?birth ?death ?person WHERE { ?person dbo:birthPlace :Paris . ?person dbo:birthDate ?birth . ?person foaf:name ?name . ?person dbo:deathDate ?death . FILTER (?birth < "1986-01-01"^^xsd:date) . } ORDER BY ?name
```
Resultado:
```
{ "head": { "link": [], "vars": ["name", "birth", "death", "person"] },
  "results": { "distinct": false, "ordered": true, "bindings": [
    { "name": { "type": "literal", "xml:lang": "en", "value": "" }	, "birth": { "type": "typed-literal", "datatype": "http://www.w3.org/2001/XMLSchema#date", "value": "1842-08-20" }	, "death": { "type": "typed-literal", "datatype": "http://www.w3.org/2001/XMLSchema#date", "value": "1907-07-12" }	, "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alphonse_Lemonnier" }},
    { "name": { "type": "literal", "xml:lang": "en", "value": "" }	, "birth": { "type": "typed-literal", "datatype": "http://www.w3.org/2001/XMLSchema#date", "value": "1807-03-08" }	, "death": { "type": "typed-literal", "datatype": "http://www.w3.org/2001/XMLSchema#date", "value": "1879-08-01" }	, "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alphonse_Thys" }},
    { "name": { "type": "literal", "xml:lang": "en", "value": "" }	, "birth": { "type": "typed-literal", "datatype": "http://www.w3.org/2001/XMLSchema#date", "value": "1791-06-04" }	, "death": { "type": "typed-literal", "datatype": "http://www.w3.org/2001/XMLSchema#date", "value": "1831-10-20" }	, "person": { "type": "uri", "value": "http://dbpedia.org/resource/Alphonse_de_Chavanges" }},
    ...
```
6. 10 primeros países más poblados según la base de datos de DBpedia.
```
SELECT ?country ?population
WHERE {
   ?country a dbo:Country .
   ?country dbo:populationTotal ?population .
}
ORDER BY DESC(?population)
LIMIT 10
```
7. Ciudades de más de 100000 habitantes en España.
```
SELECT ?city ?population
WHERE {
    ?city a dbo:City .
    ?city dbo:country dbr:Spain .
    ?city dbo:populationTotal ?population .
    FILTER(?population > 100000)
}

```
8. Busca recursos (organizaciones) en DBpedia que tengan una etiqueta (label) en inglés. La salida debe incluir el recurso y su respectiva etiqueta.
```
SELECT ?resource ?label
WHERE {
    ?resource rdf:type dbo:Organisation .
    ?resource rdfs:label ?label .
    FILTER (lang(?label) = "en")
}

```