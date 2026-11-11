# Native007 compatibility

Rust alpha.7 classifies the quota-consuming report download as a possible-effect operation. Nominal models, JSON codecs, projection order and wire protocol stay unchanged. The backend identity is pinned with the native runtime.

Protocol remains 1. A request opts in with the boolean `projection_hints:true`. Absent/false preserves the existing result wire; non-boolean values are a fixed validation error before SDK dispatch. Every requested JSON result, including an empty stream, receives:

```json
{"projection_hints":{"format":"variant-preorder-u8-hex-v1","metadata_sha256":"12c59c586019661a80ef15af99afe152283e8c927cbd47dd1b2a740d313c87ec","indices_hex":"000101"}}
```

The hash is SHA256 of the EXACT bytes of `native-runtime/api-metadata.json`, including its newline. Consumers must copy/pin that file byte for byte rather than applying their own canonicalization. The typed inventory has 1,243 public models: 1,101 structs and 142 named enums / 362 variants. All current enums have at most 11 variants; the generator rejects 256 or more. Indices are zero-based u8 values in enum field order, encoded as two lowercase hex characters each.

Traversal uses actual typed Rust values, never a JSON shape/schema guess: structs in metadata field/declaration order; arrays by index; typed maps by UTF8-lexicographically sorted keys; each named enum emits its index before its payload. Option None and Nullable Null do not recurse; named enum Null emits its declared index. Primitive/common Scalar, arbitrary JSON Value/Map and untyped extension values add no choices. FileOrRedirect is a transport alternative, not one of the 142 named model enums: File/Redirect have no hints; Pending traverses only its NfsePdfPending payload and therefore includes an empty stream with the pinned hash.

`tools/generate-projection.py` reads the same public SDK models, verifies every field/variant/type/order against this exact metadata, and emits a LOCAL trait implementation for each public model. The generator and generated traversal live only in this companion. Existing SDK validation, transport and model selection remain authoritative. Build runs the generator's check before Cargo; no schema validator or HTTP engine is added.

The index buffer is bounded by OUTPUT_MAX/2 = 20 MiB, since its hex alone would otherwise exceed the existing 40 MiB output frame. The existing bounded writer imposes value+hex+envelope together. Request serialization 8 MiB, response 16 MiB, JSON depth 64 and input frame 32 MiB remain unchanged. There is no independent 1 MiB hint limit. A real typed positive with 1,048,578 indices and 14,680,079 bytes of data passes.

No hint is truncated or silently omitted. A hint/frame overflow after SDK success is an explicit error:

```json
{"protocol":1,"ok":false,"error":{"kind":"projection","message":"Projection hints exceed the output frame budget.","sdk_call_completed":true,"protected_result":{"kind":"json","value":{}}}}
```

`protected_result` is the original result envelope, moved without reconstruction, with only the top-level hints removed. Pending uses its original pending envelope. Consumers must expose it through deliberate/private access, prohibit automatic retry and not infer fiscal authorization from the completion marker. For validate, sdk_call_completed is false; no HTTP call is claimed. If even a protected result cannot fit the frame, a distinct fixed projection error explicitly reports that condition. SDK errors, including Unknown, remain unchanged. Without opt-in, the previous output-limit error wire is unchanged.

The raw protocol (including protected_result) deliberately carries caller data and is not logging-safe. No received private keys/paths/model names are repeated in the hint stream; the metadata contains only the fixed public typed inventory. SDK Value/Debug remains private. Normal typed responses and the preserved result are not authorization receipts solely because they were projected.

Build and generation require Rust 1.85.1 on Linux arm64. Run them in a local Docker container with the pinned dependencies and networking disabled. The sourcekit carries its vendor, licenses, SDK crate, exact metadata, generator, generated trait and test corpus. The direct Cargo build preserves the exact 45-byte c-ares marker; no dependency checksum/C source is patched.
