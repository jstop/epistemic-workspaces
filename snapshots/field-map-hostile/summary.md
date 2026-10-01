# The optimal identity-assurance architecture is a composition of five elements, each taken from the system that has demonstrated it: (1) self-certifying identifier control from KERI/ACDC; (2) codified per-dimension assurance using NIST SP 800-63 levels carrying Osmio IDQA's eight-dimension vector, thresholded by relying parties; (3) liability on whoever exercised the judgment, via bonded notaries/Attestation Officers for discretionary proofing and certified-provider liability for automated checks; (4) plural independent trust-list publishers as in the WebPKI's four browser root programs, extended to hardware certification; (5) appeal under public law when use is de facto mandatory, as in eIDAS 2. No existing system supplies all five; the maximum observed is three plus partials.

**Thesis:** optimal-identity-assurance-architecture requires-composition-of five-necessary-elements
**Confidence:** 78% | **ATMS:** defeated

## Supporting Arguments

### If each of five elements is independently necessary and no existing system supplies all five, then optimal architecture requires composing them from demonstrated sources
*Pattern: modus_ponens | Confidence: 74%*

- **Claim:** self-certifying-identifier-control is-necessary-for identity-assurance-architecture (82%)
  - Element 1: The identifier holder must have cryptographic control over their own identifier without depending on any external registry's continued operation. KERI/ACDC demonstrates this via key event receipt infrastructure with self-certifying identifiers. W3C DIDs partially achieve this (method-dependent). Sovrin attempted this via a ledger and collapsed. OpenPGP achieves this but fails on assurance levels and liability. Platform reputation and credit-bureau KBA fail this by design because the identifier is controlled by the platform, not the subject.
- **Claim:** codified-per-dimension-assurance is-necessary-for identity-assurance-architecture (80%)
  - Element 2: Assurance must be expressed as a codified, per-dimension vector (not a single scalar), using NIST SP 800-63 assurance levels extended by Osmio IDQA's eight-dimension vector, thresholded by relying parties according to their own risk tolerance. NIST 800-63-4 supplies the level structure but has no enforcement tier. Osmio IDQA supplies the per-dimension vector. Worldcoin, OpenPGP, and others fail this because they collapse assurance into a binary or single-scalar assertion.
- **Claim:** liability-on-judgment-exerciser is-necessary-for identity-assurance-architecture (75%)
  - Element 3: Whoever exercised the judgment in identity proofing must bear liability for that judgment — bonded notaries/Attestation Officers for discretionary proofing, certified-provider liability for automated checks. Login.gov fails this. AAMVA fails this. UK DVS supplies this organizationally. eIDAS 2 supplies this. GLEIF vLEI partly supplies this. Without liability alignment, there is no incentive to maintain proofing quality and no recourse for relying parties harmed by negligent proofing.
- **Claim:** plural-independent-trust-list-publishers is-necessary-for identity-assurance-architecture (77%)
  - Element 4: Trust-list governance must be plural and independent, as in the WebPKI's four browser root programs, extended to hardware certification. X.509 by itself fails this but WebPKI root programs supply it. AAMVA, C2PA, Common Criteria (at hardware tier), Aadhaar, Worldcoin, and eIDAS 2 all fail this. Single-publisher trust lists create single points of failure, capture risk, and jurisdiction lock-in. The WebPKI's multi-root-program model has empirically demonstrated resilience via competitive auditing.
- **Claim:** public-law-appeal is-necessary-for identity-assurance-architecture (72%)
  - Element 5: When use of an identity system is de facto mandatory, appeal must be available under public law, as in eIDAS 2. Aadhaar and Worldcoin fail this. UK DVS supplies this statutorily. Without public-law appeal, mandatory identity systems become instruments of exclusion with no remedy for wrongful denial of identity assertions.
- **Claim:** no-existing-system supplies-all-five-of required-elements (88%)
  - No existing system supplies all five elements. The maximum observed is three plus partials. GLEIF vLEI has 1, partial 2, 3 but missing 4. Osmio/IDQA has 1 (via X.509 root CA with KERI-compatible design), 2, 3 on paper but missing 4 and 5 undocumented. UK DVS has 2, 3, partial 4, 5 but missing 1. eIDAS 2 has 2, 3, 5 but missing 1 and 4. This empirical gap confirms the thesis that composition across systems is necessary.

- **Objection [ACTIVE]:** The composability objection: even if each element is individually necessary and has been demonstrated somewhere, the argument's inference to a viable composed architecture does not follow unless the five elements are mutually compatible under a single design. Self-certifying identifiers (element 1) may create tension with plural trust-list governance (element 4) — trust-list publishers typically gate entry via their own registration processes, which could re-introduce registry dependence. The thesis asserts composition is possible by pointing to partial overlaps (e.g., GLEIF vLEI has elements 1+3, UK DVS has 3+4+5) but never demonstrates a coherent integration of all five. Without an existence proof or formal compatibility analysis, the leap from 'each element demonstrated separately' to 'composition is the optimal architecture' is an unsupported inductive step.

## Known Objections

### Unresolved
- [undermining] The scoring subjectivity objection: the gap survey's conclusion that no system achieves more than three-plus-partials depends on binary or ternary pass/partial/fail scoring of each element against each system. This scoring is performed by the thesis author without a published rubric or inter-rater reliability check. Reasonable analysts might score differently — for example, eIDAS 2's Qualified Trust Service Provider lists could be scored as satisfying element 4 (plural trust-list publishers) if EU member-state lists are counted as independent publishers, which would give eIDAS 2 four elements (2, 3, 4, 5) and undermine the claim that the maximum is three-plus-partials. Similarly, GLEIF vLEI's Qualified vLEI Issuer framework could be scored as satisfying element 4 if multiple QVIs are treated as functionally independent trust anchors. The survey evidence is thus only as strong as the unstated scoring criteria. *(on: Systematic survey across 15+ identity systems inductively establishes that no existing system covers all five elements)*
- [undercutting] The composability objection: even if each element is individually necessary and has been demonstrated somewhere, the argument's inference to a viable composed architecture does not follow unless the five elements are mutually compatible under a single design. Self-certifying identifiers (element 1) may create tension with plural trust-list governance (element 4) — trust-list publishers typically gate entry via their own registration processes, which could re-introduce registry dependence. The thesis asserts composition is possible by pointing to partial overlaps (e.g., GLEIF vLEI has elements 1+3, UK DVS has 3+4+5) but never demonstrates a coherent integration of all five. Without an existence proof or formal compatibility analysis, the leap from 'each element demonstrated separately' to 'composition is the optimal architecture' is an unsupported inductive step. *(on: If each of five elements is independently necessary and no existing system supplies all five, then optimal architecture requires composing them from demonstrated sources)*

## Assumptions

- five-element-list is-complete-and-not-missing sixth-necessary-element [explicit] — **UNSUPPORTED**
- demonstrated-in-isolation implies-composable-into coherent-combined-architecture [explicit] — **UNSUPPORTED**
- comparative-survey-methodology is-unbiased-regarding system-element-coverage-scoring [explicit] — **UNSUPPORTED**
- codified-per-dimension-assurance is-necessary-for identity-assurance-architecture [implicit] — **UNSUPPORTED**
- liability-on-judgment-exerciser is-necessary-for identity-assurance-architecture [implicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'If each of five elements is independently necessary and no existing system supplies all five, then optimal architecture requires composing them from demonstrated sources' relies on defeated premise d55c28c7a741
- **HIGH RISK:** HIGH RISK: 'codified-per-dimension-assurance is-necessary-for identity-assurance-architecture' at 80% confidence with 0 supporting arguments, 0 evidence, and 1 downstream dependents
- **HIGH RISK:** HIGH RISK: 'liability-on-judgment-exerciser is-necessary-for identity-assurance-architecture' at 75% confidence with 0 supporting arguments, 0 evidence, and 1 downstream dependents

## What Would Change My Mind

- If the scoring subjectivity objection: the gap survey's conclusion that no system achieves more than three-plus-partials depends on binary or ternary pass/partial/fail scoring of each element against each system. this scoring is performed by the thesis author without a published rubric or inter-rater reliability check. reasonable analysts might score differently — for example, eidas 2's qualified trust service provider lists could be scored as satisfying element 4 (plural trust-list publishers) if eu member-state lists are counted as independent publishers, which would give eidas 2 four elements (2, 3, 4, 5) and undermine the claim that the maximum is three-plus-partials. similarly, gleif vlei's qualified vlei issuer framework could be scored as satisfying element 4 if multiple qvis are treated as functionally independent trust anchors. the survey evidence is thus only as strong as the unstated scoring criteria.
- If the composability objection: even if each element is individually necessary and has been demonstrated somewhere, the argument's inference to a viable composed architecture does not follow unless the five elements are mutually compatible under a single design. self-certifying identifiers (element 1) may create tension with plural trust-list governance (element 4) — trust-list publishers typically gate entry via their own registration processes, which could re-introduce registry dependence. the thesis asserts composition is possible by pointing to partial overlaps (e.g., gleif vlei has elements 1+3, uk dvs has 3+4+5) but never demonstrates a coherent integration of all five. without an existence proof or formal compatibility analysis, the leap from 'each element demonstrated separately' to 'composition is the optimal architecture' is an unsupported inductive step.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **6 all-required premises**. Their **product (premises only, before objections) = 2%** — gated by the two weakest links: 'no-existing-system supplies-all-five-of required-elements' (16%) and 'public-law-appeal is-necessary-for identity-assurance-architecture' (55%) — not the average of 59%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 78%
- **Derived estimate (advisory, experimental):** 0% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 76%
- **Claims with support:** 5/10
- **Active defeaters:** 2
- **Overall status:** defeated
- **Evidence provenance:** 0 recorded, 4 **asserted (unverified)**