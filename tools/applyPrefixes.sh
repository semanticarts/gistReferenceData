# convert from N-Triples format downloaded from Allegrograph to prefixed values

cat prefixes.ttl 

# when predicate is closeMatch, keep entire bracketed IRI of object (link to QUDT)
cat $1 | 
grep "closeMatch" |
sed '
# remove brackets around first two IRIs only
  s/^<//
  s/> </ /
  s/> </ </
' > tmp.noBrackets

# otherwise remove brackets around IRIs (including literal type)
cat $1 | 
grep -v "closeMatch" |
sed '
# remove brackets around IRIs
  s/^<//
  s/> </ /g
  s/> \"/ "/
  s/\^\^</^^/
  s/> \./ ./
' >> tmp.noBrackets

# replace substring with prefix

cat tmp.noBrackets |
sed '
  s/https:\/\/w3id.org\/semanticarts\/ns\/ontology\/gist\//gist:/g
  s/https:\/\/w3id.org\/semanticarts\/ns\/data\/gist\//gistd:/g
  s/http:\/\/www.w3.org\/2002\/07\/owl\#/owl:/g
  s/http:\/\/www.w3.org\/1999\/02\/22-rdf-syntax-ns\#/rdf:/g
  s/http:\/\/www.w3.org\/2000\/01\/rdf-schema\#/rdfs:/g
  s/http:\/\/www.w3.org\/ns\/shacl\#/sh:/g
  s/http:\/\/www.w3.org\/2004\/02\/skos\/core\#/skos:/g
  s/http:\/\/www.w3.org\/2001\/XMLSchema\#/xsd:/g
' | sort -u 

# rm tmp.noBrackets 

