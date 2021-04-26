# Taxon constrains: how to model taxon-specific knowledge

There are, in essence, three categories of taxon-specific knowledge we use across OBO ontologies. Given a class `C`, which could be anything from an anatomical entity to a biological process, we have the following categories:


1. The ALL-IN restriction: "C in-taxon T"
2. The NOT-IN restriction: "C never-in-taxon T"
2. The SOME-IN restriction: "C present-in-taxon T"

## The ALL-IN restriction: "C SubClassOf: in-taxon some T"

- _Meaning_: "_All_ instances of `C` are in taxon `T`"
- _Canonical logical representation_: `C SubClassOf: in-taxon some T`
  - Comment: no need for only-in-taxon if in-taxon is functional
- _Alternative representations_: None

## The NOT-IN restriction: "C SubClassOf: in-taxon only not T"

- _Meaning_: "_No_ instances of `C` are in taxon `T`"
- _Canonical logical representation_: `C SubClassOf: in-taxon only not T`
- _Alternative representations_:
   - Alternative EL logical representation: `C disjointWith in-taxon some T`
     - Comment: depends on injecting GCIs into NCBITaxon
   - Canonical Shortcut: AnnotationAssertion: `C never-in-taxon T`

## The SOME-IN restriction: "a ClassAssertion: `C` and in-taxon some `T`"

- _Meaning_: "_At least one specific_ instance of `C` is in taxon `T`"
- _Canonical logical representation_: `a ClassAssertion: C and in-taxon some T`
- _Alternative representations_:
   - Canonical shortcut: `C present-in-taxon T`
