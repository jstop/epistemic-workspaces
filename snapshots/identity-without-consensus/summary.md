# For access control specifically, a distributed ledger is not a necessary component of identifier infrastructure: the only ordering that must be consistent is within a single identifier's own key history, over which its controller is the sole authority, so key state can be verified from a per-identifier hash-chained log with witness receipts rather than from global consensus. This is a claim about necessity only, and it concedes that a ledger supplies three further functions that a ledger-optional design must replace rather than deny — permissionless discovery of where an identifier's state can be fetched, credential-status availability from infrastructure no participant must operate, and canonical resolution of equivocation when a controller publishes conflicting histories. A ledger-optional design is therefore preferable only where those three replacements can be built without recreating a chokepoint, and where their combined operational cost is lower than the ledger's per-operation fees, permanent public identifier metadata, and consensus dependency in the authentication path. Where they cannot, the correct conclusion is that the ledger was doing work, not that it was unnecessary.

**Thesis:** distributed-ledger is-not-necessary-for identifier-access-control
**Confidence:** 72% | **ATMS:** accepted

## Supporting Arguments

### Core necessity argument: if only per-identifier ordering is required and hash-chained logs provide it, then global consensus (ledger) is not necessary for access control
*Pattern: modus_ponens | Confidence: 75%*

- **Claim:** access-control-ordering requires-only per-identifier-consistency (85%)
  - The only ordering that must be consistent for access control is within a single identifier's own key history. Global total ordering across all identifiers is not required for verifying the current key state of any one identifier.
- **Claim:** per-identifier-hash-chained-log suffices-for key-state-verification (78%)
  - Key state can be verified from a per-identifier hash-chained log with witness receipts rather than from global consensus. The controller is the sole authority over their own key rotation history, so a self-certifying event log anchored by witness co-signatures provides sufficient integrity.

- **Objection [ACTIVE]:** The claim that 'only per-identifier ordering is needed' presupposes that access control decisions never require cross-identifier consistency. But revocation of a delegated authorization (e.g., a group key controlled by an organizational root) may require ordering guarantees across multiple identifiers' histories simultaneously. In delegation-heavy architectures, the single-identifier isolation assumption breaks down, and the gap between 'per-identifier log' and 'global ordering' narrows. This undercuts the inferential link rather than denying the premises outright.

### Qualifying argument: the thesis is honest only because it concedes the ledger does real work and bounds its own applicability to cases where replacements succeed
*Pattern: causal | Confidence: 73%*

- **Claim:** ledger-optional-design is-preferable-only-when replacements-avoid-chokepoints-and-cost-less (80%)
  - A ledger-optional design is preferable only where the three replacement mechanisms can be built without recreating a chokepoint, and where their combined operational cost is lower than the ledger's per-operation fees, permanent public identifier metadata, and consensus dependency in the authentication path.
- **Claim:** ledger provides-three-functions-beyond access-control (88%)
  - A ledger supplies three further functions that a ledger-optional design must replace rather than deny: (1) permissionless discovery of where an identifier's state can be fetched, (2) credential-status availability from infrastructure no participant must operate, and (3) canonical resolution of equivocation when a controller publishes conflicting histories.

## Known Objections

### Unresolved
- [rebutting] Witness receipts provide duplicity detection, not duplicity prevention. A malicious or compromised controller can publish two conflicting histories to two disjoint sets of witnesses before cross-witness gossip detects the split. During this window, a verifier relying on the 'wrong' fork makes an incorrect access control decision. A consensus ledger, by contrast, provides atomic ordering that prevents this race condition entirely. The hash-chained log thus does not fully 'suffice' — it trades a consensus-guaranteed property for a probabilistic one bounded by gossip latency. In high-stakes access control (e.g., infrastructure key management), this gap may be unacceptable. *(on: Hash-chain cryptographic properties plus KERI existence proof establish that per-identifier logs suffice for key state verification)*
- [undercutting] The claim that 'only per-identifier ordering is needed' presupposes that access control decisions never require cross-identifier consistency. But revocation of a delegated authorization (e.g., a group key controlled by an organizational root) may require ordering guarantees across multiple identifiers' histories simultaneously. In delegation-heavy architectures, the single-identifier isolation assumption breaks down, and the gap between 'per-identifier log' and 'global ordering' narrows. This undercuts the inferential link rather than denying the premises outright. *(on: Core necessity argument: if only per-identifier ordering is required and hash-chained logs provide it, then global consensus (ledger) is not necessary for access control)*

## Assumptions

- controller is-sole-authority-over own-key-history [explicit] — **UNSUPPORTED**
- witness-infrastructure does-not-reconverge-to centralized-chokepoint [explicit] — **UNSUPPORTED**
- access-control is-cleanly-separable-from discovery-and-status-functions [explicit] — **UNSUPPORTED**
- access-control-ordering requires-only per-identifier-consistency [implicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'Core necessity argument: if only per-identifier ordering is required and hash-chained logs provide it, then global consensus (ledger) is not necessary for access control' relies on defeated premise cf36d56bfcb9
- **HIGH RISK:** HIGH RISK: 'access-control-ordering requires-only per-identifier-consistency' at 85% confidence with 0 supporting arguments, 0 evidence, and 1 downstream dependents
- **HIGH RISK:** HIGH RISK: 'ledger-optional-design is-preferable-only-when replacements-avoid-chokepoints-and-cost-less' at 80% confidence with 1 supporting arguments, 0 evidence, and 1 downstream dependents

## What Would Change My Mind

- If witness receipts provide duplicity detection, not duplicity prevention. a malicious or compromised controller can publish two conflicting histories to two disjoint sets of witnesses before cross-witness gossip detects the split. during this window, a verifier relying on the 'wrong' fork makes an incorrect access control decision. a consensus ledger, by contrast, provides atomic ordering that prevents this race condition entirely. the hash-chained log thus does not fully 'suffice' — it trades a consensus-guaranteed property for a probabilistic one bounded by gossip latency. in high-stakes access control (e.g., infrastructure key management), this gap may be unacceptable.
- If the claim that 'only per-identifier ordering is needed' presupposes that access control decisions never require cross-identifier consistency. but revocation of a delegated authorization (e.g., a group key controlled by an organizational root) may require ordering guarantees across multiple identifiers' histories simultaneously. in delegation-heavy architectures, the single-identifier isolation assumption breaks down, and the gap between 'per-identifier log' and 'global ordering' narrows. this undercuts the inferential link rather than denying the premises outright.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **2 all-required premises**. Their **product (premises only, before objections) = 19%** — gated by the two weakest links: 'per-identifier-hash-chained-log suffices-for key-state-verification' (23%) and 'access-control-ordering requires-only per-identifier-consistency' (85%) — not the average of 54%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 72%
- **Derived estimate (advisory, experimental):** 19% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 78%
- **Claims with support:** 5/9
- **Active defeaters:** 2
- **Overall status:** accepted
- **Evidence provenance:** 0 recorded, 4 **asserted (unverified)**