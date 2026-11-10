# PROBLEM: A relying party that meets a stranger — an ecovillage offering a bed, a car-share fleet, a hiring platform, a dating app — must decide whether that person is real, not a bot or synthetic identity, and accountable if they misbehave. Today it must choose between two bad options. (1) Accept one certifier everyone recognises: this creates a single point that can be compromised, coerced, or used to lock people out with no appeal. (2) Accept only the members of its own community or network: strangers from elsewhere cannot use their standing, and fakes can join weakly checked lists cheaply. The Oct 15 call between Wes Kussmaul and Grace Rachmany showed each side naming a real weakness of the other's option, and neither side defending a registry that holds everyone's identity data. SOLUTION: Separate three jobs that both options bundle together. (a) Certifying: several independent certifiers each check that a key belongs to one real person, each is legally liable for its own checks, and none keeps a shared database of everyone's personal data. (b) Grading: one public scale states how thorough each check was, so a relying party can judge a certifier it has never heard of. (c) Accepting: each relying party publishes its own list of which certifiers and minimum grades it accepts, and lists may overlap without matching. SUCCESS TEST: the solution works if (i) one certifier's failure or refusal does not lock a person out of any relying party that accepts another certifier; (ii) a relying party can set a minimum grade and accept a stranger from a community it does not know; (iii) every certifier's mistake traces to a named, liable party; (iv) no party holds identity data about people it did not check itself. FAILURE CONDITION: if relying parties in practice all come to accept the same one or two certifiers, the solution collapses back into option (1).

**Thesis:** unbundled-certify-grade-accept-architecture solves stranger-identity-trust-dilemma
**Confidence:** 65% | **ATMS:** defeated

## Supporting Arguments

### Both bundled options fail; unbundling certifying, grading and accepting satisfies success tests i–iv; and if plurality persists, the failure condition is avoided — so the architecture solves the dilemma
*Pattern: modus_ponens | Confidence: 60%*

- **Claim:** single-certifier-and-closed-community-options each-have-structural-weakness lockout-risk-or-non-portability-and-cheap-fakes (85%)
  - Option (1), a single universally recognised certifier, is a single point that can be compromised, coerced, or used to lock people out without appeal. Option (2), accepting only one's own community, means strangers cannot carry standing across communities and weakly checked lists can be joined cheaply by fakes. Both weaknesses were named by the opposing side on the Oct 15 Kussmaul–Rachmany call.
- **Claim:** multiple-independent-liable-certifiers prevent single-point-lockout-and-untraceable-error (75%)
  - If several independent certifiers exist and a relying party accepts more than one, then one certifier's failure or refusal cannot by itself exclude a person (success test i). If each certifier is legally liable only for its own checks, every certification error traces to a named party (success test iii). If no certifier holds data on people it did not check, no shared honeypot exists (success test iv).
- **Claim:** public-grading-scale enables acceptance-of-unknown-certifiers (65%)
  - A single public scale describing how thorough each check was (e.g. remote selfie match vs. in-person document inspection vs. vouching by multiple existing members) lets a relying party set a minimum grade and accept a stranger certified by a party it has never heard of (success test ii). This requires the scale to be comprehensible, honestly applied, and resistant to grade inflation.
- **Claim:** per-relying-party-acceptance-lists preserve local-autonomy-and-cross-community-portability (70%)
  - Each relying party publishes which certifiers and minimum grades it accepts. Lists may overlap without matching, so an ecovillage can be strict and a car-share lenient while both still accept a stranger holding a sufficiently graded certification. This is what makes standing portable across communities without any community surrendering its own gate.
- **Claim:** certifier-market remains-plural-in-practice no-collapse-to-one-or-two-dominant-certifiers (45%)
  - The thesis's own failure condition: the architecture only beats option (1) if relying parties do not, in practice, converge on the same one or two certifiers. Network effects, liability-insurance economics, and relying-party convenience all push toward concentration, so this is the weakest link and is deliberately given low confidence.

- **Objection [ACTIVE]:** Market concentration in nominally plural trust ecosystems (web CAs, social login, card networks) shows that relying parties default to whichever one or two providers most users already hold. If that pattern repeats, the thesis's own failure condition triggers: the architecture collapses back into option (1) with extra complexity, and the success tests i and iv are met only on paper.

## Known Objections

### Unresolved
- [undermining] The inference assumes grades reduce the pull toward convergence, but a public grade may increase it: once a grade exists, the cheapest path for a relying party is to accept 'any certifier at grade N', and the cheapest path for a user is to get certified by whichever certifier is largest and most widely listed. Grades make certifiers substitutable, and substitutable goods with network effects tend to concentrate, not diversify. *(on: Because grades make unknown certifiers legible and lists need not match, relying parties have less reason to converge on one provider than in ungraded ecosystems)*
- [undercutting] Plural certifiers remove the single point of lockout only if a person can actually obtain a second certification. If certifiers of a given grade all rely on the same upstream inputs (government ID documents, phone numbers, a shared sanctions or fraud list), then a person refused by one for an upstream reason is refused by all, and the 'single point' has merely moved upstream rather than been eliminated. Likewise, per-certifier liability traces error to a named party only if that party is solvent and reachable; a judgment-proof certifier makes 'liable' nominal. *(on: If lockout and untraceable error come from a single point of certification, then plural, individually liable certifiers remove that point)*
- [rebutting] Market concentration in nominally plural trust ecosystems (web CAs, social login, card networks) shows that relying parties default to whichever one or two providers most users already hold. If that pattern repeats, the thesis's own failure condition triggers: the architecture collapses back into option (1) with extra complexity, and the success tests i and iv are met only on paper. *(on: Both bundled options fail; unbundling certifying, grading and accepting satisfies success tests i–iv; and if plurality persists, the failure condition is avoided — so the architecture solves the dilemma)*

## Assumptions

- per-certifier-legal-liability is-enforceable-across-jurisdictions against-small-or-foreign-certifiers [explicit] — **UNSUPPORTED**
- grading-scale-governance stays-neutral-and-honestly-applied without-becoming-new-central-chokepoint [explicit] — **UNSUPPORTED**
- relying-parties will-maintain-multi-certifier-acceptance-lists rather-than-defaulting-to-the-most-common [explicit] — **UNSUPPORTED**

## Unresolved Issues

- **ERROR** (defeated_premise): Argument 'Because grades make unknown certifiers legible and lists need not match, relying parties have less reason to converge on one provider than in ungraded ecosystems' relies on defeated premise 68c0e6beb0d3
- **ERROR** (defeated_premise): Argument 'Both bundled options fail; unbundling certifying, grading and accepting satisfies success tests i–iv; and if plurality persists, the failure condition is avoided — so the architecture solves the dilemma' relies on defeated premise 4f5353e803c8
- **ERROR** (defeated_premise): Argument 'Both bundled options fail; unbundling certifying, grading and accepting satisfies success tests i–iv; and if plurality persists, the failure condition is avoided — so the architecture solves the dilemma' relies on defeated premise 68c0e6beb0d3
- **ERROR** (defeated_premise): Argument 'Both bundled options fail; unbundling certifying, grading and accepting satisfies success tests i–iv; and if plurality persists, the failure condition is avoided — so the architecture solves the dilemma' relies on defeated premise 661b269ed96a
- **ERROR** (defeated_premise): Argument 'Given a shared grade and multiple certifiers, overlapping-but-distinct acceptance lists let each relying party keep its own gate while strangers carry standing across them' relies on defeated premise 4f5353e803c8
- **HIGH RISK:** HIGH RISK: 'per-relying-party-acceptance-lists preserve local-autonomy-and-cross-community-portability' at 70% confidence with 1 supporting arguments, 0 evidence, and 2 downstream dependents

## What Would Change My Mind

- If the inference assumes grades reduce the pull toward convergence, but a public grade may increase it: once a grade exists, the cheapest path for a relying party is to accept 'any certifier at grade n', and the cheapest path for a user is to get certified by whichever certifier is largest and most widely listed. grades make certifiers substitutable, and substitutable goods with network effects tend to concentrate, not diversify.
- If plural certifiers remove the single point of lockout only if a person can actually obtain a second certification. if certifiers of a given grade all rely on the same upstream inputs (government id documents, phone numbers, a shared sanctions or fraud list), then a person refused by one for an upstream reason is refused by all, and the 'single point' has merely moved upstream rather than been eliminated. likewise, per-certifier liability traces error to a named party only if that party is solvent and reachable; a judgment-proof certifier makes 'liable' nominal.
- If market concentration in nominally plural trust ecosystems (web cas, social login, card networks) shows that relying parties default to whichever one or two providers most users already hold. if that pattern repeats, the thesis's own failure condition triggers: the architecture collapses back into option (1) with extra complexity, and the success tests i and iv are met only on paper.

## ⚠ Conjunction Warning

The thesis rests on a **independent** argument over **5 all-required premises**. Their **product (premises only, before objections) = 0%** — gated by the two weakest links: 'per-relying-party-acceptance-lists preserve local-autonomy-and-cross-community-portability' (0%) and 'certifier-market remains-plural-in-practice no-collapse-to-one-or-two-dominant-certifiers' (0%) — not the average of 27%. (See the advisory derived estimate below for the figure after objections.)

## Confidence Assessment

- **Thesis confidence (of record):** 65%
- **Derived estimate (advisory, experimental):** 0% — propagated bottom-up (support × objections); a diagnostic, not authoritative
- **Average argument strength:** 66%
- **Claims with support:** 6/9
- **Active defeaters:** 3
- **Overall status:** defeated
- **Evidence provenance:** 0 recorded, 4 **asserted (unverified)**