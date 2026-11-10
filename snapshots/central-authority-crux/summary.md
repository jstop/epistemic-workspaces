# The dispute between a single no-PII certification root (Position A) and plural, overlapping trust lists (Position B) is largely a misunderstanding over what "central authority" means: each side's objection targets a real, specific weakness of the other — A is exposed to root compromise, operator coercion, and unappealable exclusion; B to Sybil/synthetic identities and relying parties being unable to judge unfamiliar credentials — and a hybrid architecture (plural roots that relying parties choose among, one shared assurance-level vocabulary, append-only transparency logs for admission/issuance/revocation, PII held by the person or community with pairwise pseudonyms, and credential portability) satisfies both sides' core requirements, leaving as genuine residual cruxes only (1) whether enrollment/proofing data is pooled anywhere, (2) whether a large high-assurance root is acceptable when it is not exclusive, and (3) who governs the shared assurance vocabulary and log format.

**Thesis:** root-vs-trust-list-dispute is-resolved-by hybrid-architecture-with-three-residual-cruxes
**Confidence:** 70% | **ATMS:** defeated

## Supporting Arguments

### If the dispute is partly equivocation, the hybrid satisfies both sides' core requirements, and only three cruxes remain, then the thesis holds
*Pattern: modus_ponens | Confidence: 65%*

- **Claim:** central-authority is-equivocated-between exclusive-gatekeeper-and-shared-reference-frame (70%)
  - The two sides use "central authority" to mean different things: A means a shared reference frame (common assurance vocabulary, auditable admission), while B hears an exclusive gatekeeper (one operator who can deny participation). Much of the disagreement is therefore terminological rather than substantive.
- **Claim:** hybrid-architecture satisfies core-requirements-of-both-positions (65%)
  - A hybrid of plural relying-party-chosen roots, one shared assurance-level vocabulary, append-only transparency logs for admission/issuance/revocation, PII held locally with pairwise pseudonyms, and credential portability addresses each named weakness: plural roots + portability answer compromise, coercion and exclusion; shared vocabulary + logs answer unfamiliar-credential evaluation and give Sybil resistance a verifiable basis.
- **Claim:** residual-cruxes are-limited-to data-pooling-large-root-acceptability-and-governance (60%)
  - After the hybrid is adopted, what remains genuinely contested is: (1) whether enrollment/proofing data is pooled anywhere (a privacy vs. Sybil-resistance trade-off the architecture does not dissolve), (2) whether a large high-assurance root is acceptable when non-exclusive (a question about de facto vs. de jure centralization), and (3) who governs the shared vocabulary and log format (the hybrid reintroduces a thin coordination point).

## Known Objections

### Unresolved
- [undercutting] The analogy to Certificate Transparency and assurance frameworks is weakened by a disanalogy: CT and shared assurance levels work in the Web PKI because browsers act as a de facto oligopoly that enforces log policy and distrusts non-compliant CAs. Remove that enforcer and "plural roots relying parties choose among" may degrade into either no-one-checking-the-logs or a platform-bundled default list — i.e., the hybrid's Sybil and legibility guarantees may depend on precisely the kind of concentrated authority Position B rejects. *(on: Deployed transparency logs and shared assurance frameworks show each component of the hybrid already addresses the named weaknesses in analogous systems)*
- [undermining] The abductive step assumes the two sides' objections are the whole of their positions. But proponents of a single no-PII root may hold a substantive (not terminological) commitment: that uniqueness guarantees require exactly one issuing authority, since any second root can mint a second identity for the same person. If so, "central authority" is not equivocated — A really does mean exclusivity, and the dispute is substantive, not a misunderstanding. The thesis's crux (2) partially concedes this. *(on: Both sides' objections being valid against distinct properties (exclusivity vs. lack of shared frame) is best explained by equivocation on "central authority")*
- [rebutting] The "only three cruxes remain" claim omits at least one further genuine disagreement: revocation semantics and interoperability of revocation across roots. If a credential is portable across roots but revocation is per-root, a person excluded by one root can continue presenting a credential anchored elsewhere — which Position A would regard as the Sybil problem reappearing, and Position B would regard as the appeal mechanism working. This is not reducible to cruxes (1)–(3) and suggests the residual set is larger than claimed. *(on: Once the terminological dispute is removed and the hybrid absorbs the named weaknesses, what remains contested is the three points the hybrid cannot settle by design)*

## Assumptions

- core-requirements are-fairly-stated-by the-thesis-author [explicit] — **UNSUPPORTED**
- relying-parties can-meaningfully-choose-among plural-roots [explicit] — **UNSUPPORTED**
- pairwise-pseudonyms are-compatible-with adequate-sybil-resistance [explicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'Once the terminological dispute is removed and the hybrid absorbs the named weaknesses, what remains contested is the three points the hybrid cannot settle by design' relies on defeated premise 7f33f2e58646
- **ERROR** (defeated_premise): Argument 'Once the terminological dispute is removed and the hybrid absorbs the named weaknesses, what remains contested is the three points the hybrid cannot settle by design' relies on defeated premise e370a5b7063e
- **ERROR** (defeated_premise): Argument 'If the dispute is partly equivocation, the hybrid satisfies both sides' core requirements, and only three cruxes remain, then the thesis holds' relies on defeated premise e370a5b7063e
- **ERROR** (defeated_premise): Argument 'If the dispute is partly equivocation, the hybrid satisfies both sides' core requirements, and only three cruxes remain, then the thesis holds' relies on defeated premise 7f33f2e58646
- **ERROR** (defeated_premise): Argument 'If the dispute is partly equivocation, the hybrid satisfies both sides' core requirements, and only three cruxes remain, then the thesis holds' relies on defeated premise f12ef5050b7f
- **HIGH RISK:** HIGH RISK: 'central-authority is-equivocated-between exclusive-gatekeeper-and-shared-reference-frame' at 70% confidence with 1 supporting arguments, 0 evidence, and 2 downstream dependents
- **HIGH RISK:** HIGH RISK: 'residual-cruxes are-limited-to data-pooling-large-root-acceptability-and-governance' at 60% confidence with 1 supporting arguments, 0 evidence, and 1 downstream dependents

## What Would Change My Mind

- If the analogy to certificate transparency and assurance frameworks is weakened by a disanalogy: ct and shared assurance levels work in the web pki because browsers act as a de facto oligopoly that enforces log policy and distrusts non-compliant cas. remove that enforcer and "plural roots relying parties choose among" may degrade into either no-one-checking-the-logs or a platform-bundled default list — i.e., the hybrid's sybil and legibility guarantees may depend on precisely the kind of concentrated authority position b rejects.
- If the abductive step assumes the two sides' objections are the whole of their positions. but proponents of a single no-pii root may hold a substantive (not terminological) commitment: that uniqueness guarantees require exactly one issuing authority, since any second root can mint a second identity for the same person. if so, "central authority" is not equivocated — a really does mean exclusivity, and the dispute is substantive, not a misunderstanding. the thesis's crux (2) partially concedes this.
- If the "only three cruxes remain" claim omits at least one further genuine disagreement: revocation semantics and interoperability of revocation across roots. if a credential is portable across roots but revocation is per-root, a person excluded by one root can continue presenting a credential anchored elsewhere — which position a would regard as the sybil problem reappearing, and position b would regard as the appeal mechanism working. this is not reducible to cruxes (1)–(3) and suggests the residual set is larger than claimed.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **3 all-required premises**. Their **product (premises only, before objections) = 0%** — gated by the two weakest links: 'residual-cruxes are-limited-to data-pooling-large-root-acceptability-and-governance' (0%) and 'central-authority is-equivocated-between exclusive-gatekeeper-and-shared-reference-frame' (16%) — not the average of 12%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 70%
- **Derived estimate (advisory, experimental):** 0% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 68%
- **Claims with support:** 6/9
- **Active defeaters:** 3
- **Overall status:** defeated
- **Evidence provenance:** 0 recorded, 4 **asserted (unverified)**