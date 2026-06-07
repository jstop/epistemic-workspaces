# In a KERI-based identity system fronted by a "duly constituted" authority like Osmio, trust in the root cannot rest on cryptography, on an apex authority, or on a charter's grant of status; it terminates only in the conjunction of THREE components. (1) Verifiable binding structures — append-only key event logs, witnesses, and transparency logs — whose sole job is to make the authority's self-binding checkable and its defection detectable. (2) Sufficient stake-asymmetry among relying parties: by Olson's privileged-group logic, large stakeholders whose operations depend on the authority will monitor it out of individual self-interest, which supplies the spontaneous DRIVE to watch — this component is provided by incentive geometry, i.e. "by nature," not by design. (3) Actively and continuously maintained design conditions, in Ostrom's sense, that keep that vigilance plural and independent. The third component is indispensable precisely because incentives alone provide only the ENERGY of vigilance, not its DISTRIBUTION: left to natural dynamics, monitoring consolidates into a small oligopoly of large stakeholders (as Certificate Transparency monitoring largely did in practice), and that consolidation collapses the horizontal trust floor back into a disguised vertical hierarchy. Cryptography enables but cannot constitute this floor — it makes binding checkable and defection visible, but cannot manufacture either the incentives or the maintained plurality, which are economic and political facts. Every attempt to terminate the trust regress vertically (in a higher authority) fails, by the Münchhausen trilemma in principle and by the empirical history of root-CA compromise in practice; termination is therefore possible only horizontally, and only where deliberate construction actively resists the natural tendency of horizontal monitoring to re-concentrate.

**Thesis:** trust-in-keri-root terminates-only-in conjunction-of-three-horizontal-components
**Confidence:** 75% | **ATMS:** defeated

## Supporting Arguments

### Master argument: vertical fails + three horizontal components jointly necessary → trust terminates only in their conjunction
*Pattern: modus_ponens | Confidence: 72%*

- **Claim:** vertical-trust-termination fails-due-to muenchhausen-trilemma-and-empirical-ca-failures (85%)
  - Every attempt to terminate the trust regress vertically — in a higher authority — fails. In principle this follows from the Münchhausen trilemma (infinite regress, circularity, or dogmatic assertion). In practice it is confirmed by the empirical history of root-CA compromise (DigiNotar, CNNIC, Symantec). Therefore trust termination must be horizontal, not vertical.
- **Claim:** verifiable-binding-structures make-checkable authority-self-binding-and-defection (88%)
  - Component 1: Append-only key event logs (KELs), witnesses, and transparency logs create verifiable binding structures whose sole function is to make the authority's self-binding checkable and its defection detectable. Cryptography enables this checkability but does not by itself constitute the trust floor — it is necessary but not sufficient.
- **Claim:** stake-asymmetry supplies-spontaneous-drive-to monitor-authority (72%)
  - Component 2: By Olson's privileged-group logic, large stakeholders whose operations depend on the authority will monitor it out of individual self-interest. This supplies the spontaneous DRIVE — the energy — to watch. This component arises from incentive geometry ("by nature"), not by institutional design. Without sufficient stake-asymmetry, no one has adequate individual incentive to bear monitoring costs.
- **Claim:** ostrom-design-conditions maintain-plural-independent vigilance-distribution (70%)
  - Component 3: Actively and continuously maintained design conditions, in Ostrom's sense, keep vigilance plural and independent. This is indispensable because incentives alone provide only the ENERGY of vigilance, not its DISTRIBUTION. Without deliberate design, monitoring consolidates into a small oligopoly, collapsing the horizontal trust floor back into a disguised vertical hierarchy. This component requires ongoing political-institutional work.

- **Objection [ACTIVE]:** The thesis claims exactly three components are jointly necessary and sufficient for horizontal trust termination, but this trichotomy may be incomplete or mis-partitioned. A rebutting challenge: regulatory-legal enforcement (state action, contract law, liability regimes) may constitute a fourth independent component that the thesis subsumes under "design conditions" but which operates through coercive mechanisms fundamentally different from Ostrom-style voluntary governance. If legal enforcement is doing substantial independent work — as it arguably does in the existing WebPKI through browser vendor de-listing power backed by market dominance — then the three-component model is descriptively incomplete, and the trust floor rests on factors the thesis does not account for.

## Known Objections

### Unresolved
- [rebutting] The thesis claims exactly three components are jointly necessary and sufficient for horizontal trust termination, but this trichotomy may be incomplete or mis-partitioned. A rebutting challenge: regulatory-legal enforcement (state action, contract law, liability regimes) may constitute a fourth independent component that the thesis subsumes under "design conditions" but which operates through coercive mechanisms fundamentally different from Ostrom-style voluntary governance. If legal enforcement is doing substantial independent work — as it arguably does in the existing WebPKI through browser vendor de-listing power backed by market dominance — then the three-component model is descriptively incomplete, and the trust floor rests on factors the thesis does not account for. *(on: Master argument: vertical fails + three horizontal components jointly necessary → trust terminates only in their conjunction)*
- [undercutting] The argument uses Certificate Transparency monitoring concentration as the primary inductive case for the claim that undesigned horizontal monitoring naturally re-concentrates. But CT's concentration may be an artifact of CT's specific institutional design (Google both created and enforced the standard, controlled the dominant browser, and operated most logs) rather than a general tendency of horizontal monitoring systems. Alternative transparency systems — such as Bitcoin's decentralized mining validation, or the multi-vendor structure of DNSSEC validation — have not concentrated to the same degree. If CT concentration is a special case driven by Google's market position rather than a general law of monitoring dynamics, the inductive inference from CT to KERI-style systems is undercut: the evidence does not generalize to the conclusion as claimed. *(on: Consolidation problem + Ostrom framework → design conditions are necessary for plural vigilance)*

## Assumptions

- keri-kel-integrity is-practically-achievable-at scale-needed-for-trust-infrastructure [explicit] — **UNSUPPORTED**
- olson-privileged-group actually-exists-in keri-relying-party-ecosystem [explicit] — **UNSUPPORTED**
- ostrom-style-governance is-transferable-to digital-trust-infrastructure-domain [explicit] — **UNSUPPORTED**
- verifiable-binding-structures make-checkable authority-self-binding-and-defection [implicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'Master argument: vertical fails + three horizontal components jointly necessary → trust terminates only in their conjunction' relies on defeated premise 33ebbaaa93f3
- **HIGH RISK:** HIGH RISK: 'verifiable-binding-structures make-checkable authority-self-binding-and-defection' at 88% confidence with 0 supporting arguments, 0 evidence, and 1 downstream dependents

## What Would Change My Mind

- If the thesis claims exactly three components are jointly necessary and sufficient for horizontal trust termination, but this trichotomy may be incomplete or mis-partitioned. a rebutting challenge: regulatory-legal enforcement (state action, contract law, liability regimes) may constitute a fourth independent component that the thesis subsumes under "design conditions" but which operates through coercive mechanisms fundamentally different from ostrom-style voluntary governance. if legal enforcement is doing substantial independent work — as it arguably does in the existing webpki through browser vendor de-listing power backed by market dominance — then the three-component model is descriptively incomplete, and the trust floor rests on factors the thesis does not account for.
- If the argument uses certificate transparency monitoring concentration as the primary inductive case for the claim that undesigned horizontal monitoring naturally re-concentrates. but ct's concentration may be an artifact of ct's specific institutional design (google both created and enforced the standard, controlled the dominant browser, and operated most logs) rather than a general tendency of horizontal monitoring systems. alternative transparency systems — such as bitcoin's decentralized mining validation, or the multi-vendor structure of dnssec validation — have not concentrated to the same degree. if ct concentration is a special case driven by google's market position rather than a general law of monitoring dynamics, the inductive inference from ct to keri-style systems is undercut: the evidence does not generalize to the conclusion as claimed.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **4 all-required premises**. Their **product (premises only, before objections) = 6%** — gated by the two weakest links: 'ostrom-design-conditions maintain-plural-independent vigilance-distribution' (19%) and 'stake-asymmetry supplies-spontaneous-drive-to monitor-authority' (56%) — not the average of 58%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 75%
- **Derived estimate (advisory, experimental):** 0% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 72%
- **Claims with support:** 5/9
- **Active defeaters:** 2
- **Overall status:** defeated
- **Evidence provenance:** 0 recorded, 4 **asserted (unverified)**