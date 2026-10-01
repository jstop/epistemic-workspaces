# An identity-assurance architecture satisfies the recursive tolerability conditions (assessments are about identity assertions not persons; relying parties can substitute assessors at every judgment tier including the tier that qualifies assessors; there is a governed path to appeal and exit) if and only if it composes five elements: (1) self-certifying key control, as in KERI/ACDC, so that no authority is needed at the identifier layer and concentration is confined to judgment; (2) codified, per-dimension assurance, as in NIST SP 800-63 assurance levels combined with Osmio's IDQA feature vector, so that judgment is expressed as auditable per-dimension scores that relying parties threshold themselves, making assessors interchangeable and keeping confidence about the assertion rather than the person; (3) liable, bonded human assessors for irreducibly tacit judgment, as in Osmio's Attestation Officers or notaries, so that liability rests on the assessor rather than being disclaimed by an aggregator; (4) plural, independent trust-list publishers, as in the WebPKI's four competing browser root programs, so that no single qualifier exists and enforcement against large incumbents is credible; and (5) external appeal under public law for anything de facto mandatory, as in eIDAS 2's judicial review, with cheap exit preserved for voluntary use. Every documented failure in the field (Aadhaar exclusion, DigiNotar, Symantec, Login.gov, Worldcoin regulatory bans, Sovrin's collapse, SKS keyserver poisoning, GLEIF's single-qualifier vLEI) corresponds to a missing element.

**Thesis:** identity-assurance-architecture satisfies-recursive-tolerability-iff-composes five-elements
**Confidence:** 72% | **ATMS:** defeated

## Supporting Arguments

### Five elements jointly satisfy recursive tolerability (sufficiency), and failure correspondence confirms each is necessary (necessity), establishing the biconditional
*Pattern: modus_ponens | Confidence: 65%*

- **Claim:** self-certifying-key-control eliminates-authority-at identifier-layer (88%)
  - Element 1: Self-certifying identifiers (as in KERI/ACDC) make the identifier layer authority-free by deriving identifiers from cryptographic key material. This confines any concentration of power to the judgment layer, where it can be governed. Without this, the identifier registry itself becomes a chokepoint (as seen in SKS keyserver poisoning or DNS-dependency).
- **Claim:** codified-per-dimension-assurance enables assessor-interchangeability (80%)
  - Element 2: Expressing identity judgment as auditable per-dimension scores (combining NIST SP 800-63 assurance levels with a feature vector like Osmio's IDQA) lets relying parties set their own thresholds. This makes assessors interchangeable—any assessor producing the same codified scores is substitutable—and keeps confidence anchored on the assertion rather than collapsing into a reputation score about the person.
- **Claim:** liable-bonded-human-assessors anchor-accountability-for tacit-judgment (75%)
  - Element 3: For judgment that is irreducibly tacit (cannot be fully algorithmic), liable bonded human assessors (Osmio's Attestation Officers, notaries) ensure accountability rests on the individual assessor via bonding and liability, rather than being disclaimed by a corporate aggregator. This is a normative claim about where accountability should rest and an empirical claim that some judgment resists full codification.
- **Claim:** plural-independent-trust-list-publishers prevent single-qualifier-monopoly (82%)
  - Element 4: Multiple independent trust-list publishers (analogous to WebPKI's four competing browser root programs) ensure no single qualifier has veto power. This makes enforcement against large incumbents credible (as demonstrated by the Symantec distrust) and prevents the GLEIF single-qualifier failure mode seen in vLEI.
- **Claim:** external-appeal-under-public-law provides governed-exit-and-redress (78%)
  - Element 5: For identity systems that become de facto mandatory, external appeal under public law (as in eIDAS 2's judicial review provisions) provides a governed path to redress. Cheap exit is preserved for voluntary use. Without this, subjects of identity errors have no recourse outside the system—the Aadhaar exclusion problem.
- **Claim:** documented-identity-system-failures each-correspond-to missing-element-in-five-part-framework (70%)
  - Every documented failure cited (Aadhaar exclusion, DigiNotar compromise, Symantec distrust, Login.gov assurance issues, Worldcoin regulatory bans, Sovrin's collapse, SKS keyserver poisoning, GLEIF's single-qualifier vLEI) can be mapped to the absence of one or more of the five elements. This is the inductive backbone of the biconditional: if the framework is necessary and sufficient, then failures should correspond to missing elements.

- **Objection [ACTIVE]:** The biconditional's necessity direction relies on induction from eight failure cases, but this is a small and potentially cherry-picked sample. Selection bias is a genuine risk: the thesis may have chosen failures that fit the five-element framework while ignoring failures that don't map cleanly (e.g., Estonia's e-Residency identity card vulnerability in 2017 involved a chip-level cryptographic flaw — does that map to 'self-certifying key control' or does it reveal a hardware-supply-chain element missing from the framework?). The inductive base is too narrow to support a universal biconditional; at best it supports a weaker claim that these five elements address known failure modes.

## Known Objections

### Unresolved
- [undercutting] The biconditional's necessity direction relies on induction from eight failure cases, but this is a small and potentially cherry-picked sample. Selection bias is a genuine risk: the thesis may have chosen failures that fit the five-element framework while ignoring failures that don't map cleanly (e.g., Estonia's e-Residency identity card vulnerability in 2017 involved a chip-level cryptographic flaw — does that map to 'self-certifying key control' or does it reveal a hardware-supply-chain element missing from the framework?). The inductive base is too narrow to support a universal biconditional; at best it supports a weaker claim that these five elements address known failure modes. *(on: Five elements jointly satisfy recursive tolerability (sufficiency), and failure correspondence confirms each is necessary (necessity), establishing the biconditional)*
- [rebutting] Bonded individual-assessor liability may not scale to the billions of identity assertions required by modern digital systems. The notarial model works for low-volume, high-stakes transactions (real estate, wills), but identity verification for everyday digital services requires throughput that bonded human assessors cannot provide at reasonable cost. Moreover, bonding requirements create barriers to entry that could paradoxically reduce assessor plurality and competition — concentrating the assessor market among well-capitalized incumbents, which undermines the very substitutability the thesis demands. The practical tension between individual liability and system scale may mean element 3 is internally inconsistent with the architecture's operational requirements. *(on: When identity judgment errors occur (Login.gov, Aadhaar), no individual assessor bears liability because aggregators disclaim it — bonded human assessors would anchor accountability and enable substitution)*

## Assumptions

- five-element-list is-exhaustive-for recursive-tolerability [explicit] — **UNSUPPORTED**
- recursive-tolerability-conditions are-correct-normative-criteria-for acceptable-identity-architecture [explicit] — **UNSUPPORTED**
- tacit-judgment remains-irreducibly-human-despite advances-in-automation [explicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'Five elements jointly satisfy recursive tolerability (sufficiency), and failure correspondence confirms each is necessary (necessity), establishing the biconditional' relies on defeated premise 40675872f154

## What Would Change My Mind

- If the biconditional's necessity direction relies on induction from eight failure cases, but this is a small and potentially cherry-picked sample. selection bias is a genuine risk: the thesis may have chosen failures that fit the five-element framework while ignoring failures that don't map cleanly (e.g., estonia's e-residency identity card vulnerability in 2017 involved a chip-level cryptographic flaw — does that map to 'self-certifying key control' or does it reveal a hardware-supply-chain element missing from the framework?). the inductive base is too narrow to support a universal biconditional; at best it supports a weaker claim that these five elements address known failure modes.
- If bonded individual-assessor liability may not scale to the billions of identity assertions required by modern digital systems. the notarial model works for low-volume, high-stakes transactions (real estate, wills), but identity verification for everyday digital services requires throughput that bonded human assessors cannot provide at reasonable cost. moreover, bonding requirements create barriers to entry that could paradoxically reduce assessor plurality and competition — concentrating the assessor market among well-capitalized incumbents, which undermines the very substitutability the thesis demands. the practical tension between individual liability and system scale may mean element 3 is internally inconsistent with the architecture's operational requirements.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **6 all-required premises**. Their **product (premises only, before objections) = 3%** — gated by the two weakest links: 'liable-bonded-human-assessors anchor-accountability-for tacit-judgment' (20%) and 'codified-per-dimension-assurance enables assessor-interchangeability' (59%) — not the average of 62%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 72%
- **Derived estimate (advisory, experimental):** 0% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 74%
- **Claims with support:** 7/10
- **Active defeaters:** 2
- **Overall status:** defeated
- **Evidence provenance:** 0 recorded, 5 **asserted (unverified)**