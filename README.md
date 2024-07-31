# gistReferenceData
The gist reference data includes units of measure and measurable characteristics, similar to [QUDT](https://qudt.org) but extended to include financial and process metrics and also modified to conform to a simpler ontology.

## Basic terminology

- A unit of measure is standard amount used to measure or specify things, like foot, yard, hour, watt, US dollar, etc.
- An aspect is a measurable characteristic like cost, area, mass, etc. (called Quantity Kind in QUDT).
- A unit group is a collection of units that can all be used measure the same aspect, e.g. the collection of units that measure mass.

## Data files

- uomReferenceData.ttl is the complete set of unit of measure reference data.
- currency.ttl is a set of currencies extracted from QUDT.

- uomReferenceData-starter-set.ttl is a subset of the reference data that includes a few entries for each discipline.
- currency-starter-set.ttl is a small subset of currencies.

- prefixes.ttl includes all the prefixes used in the reference data.

## Setting up your own repository (starter set)

- Make sure all the namespaces in the prefix.ttl file are defined in your repository.
- Load the latest version of [gist](https://www.semanticarts.com/gist) into its own named graph.
- Load the uomReferenceData-starter-set.ttl into its own named graph.
- Load the currency-starter-set.ttl into its own named graph.

## Queries

The queries provided are a good starting point for using the reference data. Copy the queries into the repository to get started exploring the data.

## Namespaces

Many units of measure are included in the reference data. Let us know if you have some we should add to the reference data (open an issue in gitHub).

However, many of your own aspects (measurable characteristics) might not be included ... if this is the case and some are proprietary or not widely re-usable, consider putting all aspects in your own namespace so that you do not end up with some in the gistd namespace and some in your own namespace.

## Special acknowledgement

A substantial portion of the data set originated from the open source data at [QUDT](https://qudt.org)

