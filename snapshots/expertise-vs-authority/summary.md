# Any identity-assurance architecture that raises fraud resistance must place verification expertise somewhere, and every known placement produces a distinct concentration of authority. That concentration is tolerable only where three conditions hold: (1) assessments are claims about identity assertions rather than about persons' worth or reputation, (2) relying parties can substitute one assessor for another, and (3) there is a governed path to appeal and exit. No existing identity architecture — hierarchical PKI, KERI/ACDC, W3C DID/VC ecosystems, government schemes such as eIDAS 2 or Aadhaar, federated identity, trust registries, proof-of-personhood systems, web-of-trust, platform reputation, or Osmio/IDQA — satisfies all three; each fails a different one.

**Thesis:** identity-assurance-architectures inevitably-concentrate-authority-tolerably-only-under-three-conditions-none-satisfies-all fraud-resistance-verification-placement
**Confidence:** 70% | **ATMS:** defeated

## Supporting Arguments

### If fraud resistance requires verification placement (P1), and every placement produces authority concentration (P2), then concentration is inevitable. If tolerability requires three conditions (P3), and no existing architecture satisfies all three (P4), then no existing architecture achieves tolerable authority concentration — which is exactly the thesis
*Pattern: modus_ponens | Confidence: 70%*

- **Claim:** fraud-resistance necessitates-placement-of verification-expertise (90%)
  - Any architecture that raises fraud resistance above baseline must locate verification expertise — human judgment, algorithmic scoring, credential checking — at some identifiable point. Fraud resistance cannot emerge from structure alone without someone or something performing assessment.
- **Claim:** verification-expertise-placement produces authority-concentration (85%)
  - Every known placement of verification expertise — whether centralized (CAs, government agencies), federated (IdPs), decentralized (KERI witnesses, web-of-trust endorsers), or algorithmic (proof-of-personhood oracles) — produces a distinct concentration of authority over identity outcomes. The locus shifts but does not disappear.
- **Claim:** authority-concentration is-tolerable-only-when three-conditions-hold (65%)
  - The concentration of authority is tolerable only where: (1) assessments are claims about identity assertions rather than about persons' worth or reputation, (2) relying parties can substitute one assessor for another, and (3) there is a governed path to appeal and exit. These three conditions are jointly necessary and arguably sufficient for acceptable authority concentration.
- **Claim:** existing-identity-architectures each-fail-at-least-one-of three-tolerability-conditions (70%)
  - No existing identity architecture — hierarchical PKI, KERI/ACDC, W3C DID/VC, eIDAS 2, Aadhaar, federated identity, trust registries, proof-of-personhood, web-of-trust, platform reputation, or Osmio/IDQA — satisfies all three conditions. Each fails a different one, suggesting the problem is structural rather than incidental.

- **Objection [ACTIVE]:** The thesis treats all "concentration of authority" as equivalent, but there may be meaningful degrees. A system where three competing assessors each hold 33% market share is structurally different from one where a single government monopoly holds 100%, yet both count as "concentration" under the thesis. If concentration admits of degrees, some architectures may achieve sufficiently dispersed authority that the three tolerability conditions become less urgent — the thesis may be applying a binary frame to a continuous variable.

## Known Objections

### Unresolved
- [rebutting] The W3C DID/VC ecosystem combined with KERI/ACDC-style cryptographic autonomy may be closer to satisfying all three conditions than acknowledged. DIDs allow credential subjects to control their own identifiers (supporting exit), the VC data model explicitly separates assertion from reputation (addressing C1), and the architecture is designed to allow issuer substitution (addressing C2). The thesis may underestimate how far these newer ecosystems have progressed, particularly as governance frameworks like the Trust Over IP Foundation's metamodel attempt to provide the governed appeal path (C3). The failure may be one of current implementation maturity rather than architectural impossibility. *(on: Surveying concrete architectures: Aadhaar fails conditions 1 and 3 (conflates assertion with entitlement, no real appeal); platform reputation fails all three; WebPKI fails condition 2 (browser vendors choose CAs, not relying parties) — each fails differently, confirming no architecture satisfies all three)*
- [undercutting] The thesis treats all "concentration of authority" as equivalent, but there may be meaningful degrees. A system where three competing assessors each hold 33% market share is structurally different from one where a single government monopoly holds 100%, yet both count as "concentration" under the thesis. If concentration admits of degrees, some architectures may achieve sufficiently dispersed authority that the three tolerability conditions become less urgent — the thesis may be applying a binary frame to a continuous variable. *(on: If fraud resistance requires verification placement (P1), and every placement produces authority concentration (P2), then concentration is inevitable. If tolerability requires three conditions (P3), and no existing architecture satisfies all three (P4), then no existing architecture achieves tolerable authority concentration — which is exactly the thesis)*

## Assumptions

- fraud-resistance cannot-be-achieved-by purely-cryptographic-structure [explicit] — **UNSUPPORTED**
- three-tolerability-conditions are-jointly-necessary-and-sufficient-for acceptable-authority-concentration [explicit] — **UNSUPPORTED**
- listed-architectures are-representative-of all-possible-identity-architectures [explicit] — **UNSUPPORTED**
- assessor-substitutability requires interoperable-assessment-semantics [implicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'If fraud resistance requires verification placement (P1), and every placement produces authority concentration (P2), then concentration is inevitable. If tolerability requires three conditions (P3), and no existing architecture satisfies all three (P4), then no existing architecture achieves tolerable authority concentration — which is exactly the thesis' relies on defeated premise 3de714a2a0b5
- **HIGH RISK:** HIGH RISK: 'assessor-substitutability requires interoperable-assessment-semantics' at 75% confidence with 0 supporting arguments, 0 evidence, and 1 downstream dependents

## What Would Change My Mind

- If the w3c did/vc ecosystem combined with keri/acdc-style cryptographic autonomy may be closer to satisfying all three conditions than acknowledged. dids allow credential subjects to control their own identifiers (supporting exit), the vc data model explicitly separates assertion from reputation (addressing c1), and the architecture is designed to allow issuer substitution (addressing c2). the thesis may underestimate how far these newer ecosystems have progressed, particularly as governance frameworks like the trust over ip foundation's metamodel attempt to provide the governed appeal path (c3). the failure may be one of current implementation maturity rather than architectural impossibility.
- If the thesis treats all "concentration of authority" as equivalent, but there may be meaningful degrees. a system where three competing assessors each hold 33% market share is structurally different from one where a single government monopoly holds 100%, yet both count as "concentration" under the thesis. if concentration admits of degrees, some architectures may achieve sufficiently dispersed authority that the three tolerability conditions become less urgent — the thesis may be applying a binary frame to a continuous variable.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **4 all-required premises**. Their **product (premises only, before objections) = 8%** — gated by the two weakest links: 'existing-identity-architectures each-fail-at-least-one-of three-tolerability-conditions' (21%) and 'authority-concentration is-tolerable-only-when three-conditions-hold' (62%) — not the average of 61%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 70%
- **Derived estimate (advisory, experimental):** 0% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 74%
- **Claims with support:** 5/9
- **Active defeaters:** 2
- **Overall status:** defeated
- **Evidence provenance:** 0 recorded, 4 **asserted (unverified)**