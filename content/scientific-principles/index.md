---
title: Scientific principles
description: Principles for transparent, careful scientific engineering in Spudlab projects.
---

These principles guide practical engineering decisions in Spudlab projects. They are goals for transparent, careful work; they are not claims of certification, formal standards compliance, or independent scientific validation.

The [canonical scientific principles](https://github.com/spudlab-xyz/.github/blob/main/docs/SCIENTIFIC_PRINCIPLES.md) are maintained in the Spudlab organisation repository.

## Make data traceable

- Record the source and provenance of observations, metadata, and reference data.
- Document provider, station, or instrument identifiers where lawful and useful.
- Review source permissions, provider terms, and attribution requirements before ingesting, storing, or redistributing external data.
- Do not imply that processing data grants permission to redistribute it.

## Preserve measurement context

- State units explicitly and avoid relying on undocumented defaults.
- Record timestamps, time zones, and clock assumptions. Prefer unambiguous machine-readable representations while retaining the original context when needed.
- Preserve relevant measurement context, such as sensor type, location precision, siting, sampling interval, and collection method.
- Record calibration history and sensor metadata where they affect interpretation.

## Describe what a value means

- Distinguish raw observations, corrected observations, derived values, estimates, and forecasts in data models and interfaces.
- Do not present estimates or model output as direct measurements.
- Represent missing data explicitly rather than silently substituting zero or another plausible value.
- Preserve and explain quality flags, limitations, and uncertainty.

## Keep methods reproducible

- Document transformations, aggregation, corrections, filtering, and unit conversions.
- Prefer deterministic, reviewable methods and version the behaviour needed to reproduce results.
- Keep source data where permission, privacy, and practical storage constraints allow; otherwise retain sufficient provenance to explain the result.
- Label experiments and unvalidated methods clearly.

## Validate and correct

- Changes affecting scientific behaviour should include evidence proportionate to their impact: examples, reference datasets, comparison with known results, uncertainty analysis, or documented hardware tests as appropriate.
- Review both implementation and scientific assumptions.
- Record known limitations and conditions under which a result should not be used.
- Correct mistakes visibly. Explain affected data or versions and preserve an audit trail rather than silently rewriting conclusions.
