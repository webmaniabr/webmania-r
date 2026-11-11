# Isolated HTML/pending companion

The Linux build requires Rust 1.85+, a C compiler, make, Autoconf, Automake and Libtool. The source contains its pinned Rust SDK crate, directory vendor, lock and third-party notices; `build-worker.sh` builds offline on the stated Linux Rust/C toolchain. It verifies and preserves the exact 45-byte c-ares marker (SHA c23f0e2a0d906f4d257a41e2da419cc9f546ad85e6221b4b189c94463557b934). The direct Cargo build keeps this source file intact so directory-source checksum validation remains valid.

Framing stays protocol 1: four-byte big-endian JSON frame length; 32 MiB input and 40 MiB output ceilings. SDK request serialization remains 8 MiB, response body 16 MiB and JSON depth 64; the output envelope has its existing depth margin. Input control and single-call process lifetime are unchanged. The worker never implements a separate HTTP engine, retries or polling loop.

HTML remains a file result with `kind: "file"`, actual `status`, normalized `media_type: "text/html"`, `file_kind: "Html"` and exact opaque `bytes_hex`. No HTML is executed, rendered or identified as PDF/XML by sniffing.

The new additive result is:

```json
{"protocol":1,"ok":true,"result":{"kind":"pending","status":200,"media_type":"application/json","value":{"msg":"Synthetic municipal PDF is pending"}}}
```

`value` preserves the entire typed NfsePdfPending payload, including exact JSON numeric lexemes and case-sensitive extension members. It appears only for fileGetNfsePdf's documented HTTP 200/application/json/schema branch without an error envelope. It has no bytes_hex or protected_location. This is municipal retrieval state, not file bytes or fiscal authorization. Later reads are explicit caller actions. Error, redirect and all other result shapes remain distinct.

Raw protocol frames deliberately carry caller data. They are not safe logging output; Rust Debug for the pending wrapper/model is private. Error diagnostics still come from SDK redaction.
