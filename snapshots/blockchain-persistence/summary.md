# Deliberative democracy infrastructure requires blockchain-based persistence to ensure argument graphs cannot be silently altered by platform operators

**Thesis:** deliberative-democracy-infrastructure requires blockchain-based-persistence
**Confidence:** 45% | **ATMS:** defeated

## Supporting Arguments

### Tamper-evidence is necessary + blockchain provides it + alternatives fail → blockchain required
*Pattern: modus_ponens | Confidence: 45%*

- **Claim:** tamper-evidence is-necessary-for deliberative-democracy-infrastructure (75%)
  - Deliberative democracy depends on a shared, trustworthy record of arguments and evidence. Tamper-evidence is a necessary property to maintain participant trust and procedural fairness.
- **Claim:** blockchain provides tamper-evident-persistence (90%)
  - Blockchain's hash-chain structure and distributed consensus make any retroactive alteration of stored records detectable by any participant, providing cryptographic tamper-evidence.
- **Claim:** alternative-persistence-mechanisms are-insufficient-for operator-independent-tamper-evidence (40%)
  - Traditional databases with audit logs, centralized append-only stores, and other non-blockchain mechanisms still ultimately depend on the operator's infrastructure and cannot provide fully operator-independent verifiability. This is the weakest link in the thesis.

- **Objection [ACTIVE]:** Certificate Transparency and similar append-only Merkle-tree logs (e.g., Trillian, Sigstore) achieve tamper-evident persistence without blockchain consensus or tokens. These systems are production-proven at scale (billions of certificates logged). The thesis's claim that alternatives are "insufficient" conflates blockchain-the-data-structure (hash chains) with blockchain-the-system (decentralized consensus + incentive tokens). Tamper-evidence may only require the former, making full blockchain unnecessary overhead.

## Known Objections

### Unresolved
- [undercutting] Blockchain introduces its own democratic deficits: high energy costs exclude resource-constrained communities, transaction latency degrades real-time deliberation, and governance of the chain itself (hard forks, validator concentration, plutocratic PoS voting) replicates the very power asymmetries the thesis aims to prevent. If blockchain infrastructure makes participation harder or shifts control to a new set of gatekeepers (mining pools, validator cartels), the cure may be worse than the disease for democratic inclusion. *(on: If silent alteration undermines legitimacy, then tamper-evidence is necessary)*
- [rebutting] Certificate Transparency and similar append-only Merkle-tree logs (e.g., Trillian, Sigstore) achieve tamper-evident persistence without blockchain consensus or tokens. These systems are production-proven at scale (billions of certificates logged). The thesis's claim that alternatives are "insufficient" conflates blockchain-the-data-structure (hash chains) with blockchain-the-system (decentralized consensus + incentive tokens). Tamper-evidence may only require the former, making full blockchain unnecessary overhead. *(on: Tamper-evidence is necessary + blockchain provides it + alternatives fail → blockchain required)*

## Assumptions

- platform-operators have-incentive-to alter-argument-graphs [explicit] — **UNSUPPORTED**
- participants cannot-independently-verify graph-integrity-without-blockchain [explicit] — **UNSUPPORTED**
- blockchain-costs-and-complexity are-justified-by integrity-guarantees [explicit] — **UNSUPPORTED**
- alternative-persistence-mechanisms are-insufficient-for operator-independent-tamper-evidence [implicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'Tamper-evidence is necessary + blockchain provides it + alternatives fail → blockchain required' relies on defeated premise 9f22b58dcaec
- **HIGH RISK:** HIGH RISK: 'tamper-evidence is-necessary-for deliberative-democracy-infrastructure' at 75% confidence with 1 supporting arguments, 0 evidence, and 1 downstream dependents

## What Would Change My Mind

- If blockchain introduces its own democratic deficits: high energy costs exclude resource-constrained communities, transaction latency degrades real-time deliberation, and governance of the chain itself (hard forks, validator concentration, plutocratic pos voting) replicates the very power asymmetries the thesis aims to prevent. if blockchain infrastructure makes participation harder or shifts control to a new set of gatekeepers (mining pools, validator cartels), the cure may be worse than the disease for democratic inclusion.
- If certificate transparency and similar append-only merkle-tree logs (e.g., trillian, sigstore) achieve tamper-evident persistence without blockchain consensus or tokens. these systems are production-proven at scale (billions of certificates logged). the thesis's claim that alternatives are "insufficient" conflates blockchain-the-data-structure (hash chains) with blockchain-the-system (decentralized consensus + incentive tokens). tamper-evidence may only require the former, making full blockchain unnecessary overhead.

## Confidence Assessment

- **Thesis confidence:** 45%
- **Average argument strength:** 74%
- **Claims with support:** 5/9
- **Active defeaters:** 2
- **Overall status:** defeated