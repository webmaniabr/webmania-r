# Public identifiers and JSON names

C alpha.5 retains the C4 correction and preserves every existing C symbol for three JSON member
names in `api2_nfcom_issuance::NfcomDocumentedGroup2114`. The C method suffixes
remain `substituicao_chave_nfcom_substituida`, `substituicao_motivo` and
`substituicao_nf_referenciada`. Their JSON members are respectively
`substituicao.chave_nfcom_substituida`, `substituicao.motivo` and
`substituicao.nf_referenciada.*`, including the literal star.

The generator checks all 7,631 fields against declarations and both codecs in the
exact pinned Rust source. `wire-name-audit.json` records the only three aliases.
Setters/getters, presence/unset, shape guards and known-extension collision rules
use JSON names; public function identifiers retain their established spelling.
An underscore extension is a distinct JSON member and cannot shadow the dotted
member. Native005 changes the metadata backend identity and worker pin; model
fields, wire names, cursor order and public declarations remain unchanged.

Correctly serializing this documented contextual component does not establish
its placement in an actual fiscal operation or authorize sending that context.
