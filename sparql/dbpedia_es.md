* Lista de científicos españoles:
```
PREFIX dcterms: <http://purl.org/dc/terms/>
SELECT ?person WHERE{
   ?person dcterms:subject <http://es.dbpedia.org/resource/Categoría:Científicos_de_España>
}
```