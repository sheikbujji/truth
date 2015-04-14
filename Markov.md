# Introduction #

> We use Markov analysis for high-level system architecture design. Markov analysis is important as it was shown in TMR analysis, i.e., TMR (triple modular redundancy) does not always provide higher reliability than original system with single execution instance.


> Markov analysis is valid within its analyzed model. TMR for example is a fail-stop system, while the original one is not where fail-stop is critical in safe-critical systems. Fail-stop (or preemptive error detection) becomes more valuable when it comes with an error isolation technique because these can realize fine-grained error recovery.

# Design #

> Memory write logger. Assume a hardware component that maintains latest update operations of its memory modules. When an error is detected, using this logger, we maybe able to rollback to a previous valid snapshot.

> Deterministic cache flush. Here, we assume memory writes are ordered even under the presence of on-chip cache memory.