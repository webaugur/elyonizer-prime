# Release Plan: Elyonizer v0.3

## Release Theme
**"Temporal Depth + Documentation Completeness"**

v0.3 focuses on integrating the new temporal resonance and standing-wave thinking into the Elyonize workflow, while significantly expanding and organizing the supporting documentation.

## Goals for v0.3

1. **Integrate Temporal Resonance as a documented optional feature**
   - Add clear guidance on when and how to use the Temporal Resonance layer.
   - Include the new section template in the standard workflow documentation.
   - Update `SKILL.md` and `QUICK_REFERENCE.md` to mention this capability.

2. **Expand and organize cycle documentation**
   - Ensure all major and supporting astronomical/temporal cycles have dedicated, well-written internal references.
   - Provide a clear overview document that maps cycles to the three-layer architecture.

3. **Improve model coherence and accessibility**
   - Finalize and polish the core model documents (especially the main astronomical cycles document and the interference modeling guide).
   - Make the connection between the time cycle model and Elyonize interpretations explicit and usable.

4. **Documentation hygiene**
   - Review internal documents for redundancy or outdated sections.
   - Ensure consistent terminology across the three-layer model (Planetary Synodic Layer, Local Temporal Node Layer, Micro/Local Symmetry Layer).

## Proposed Deliverables

### New / Updated Documentation
- [x] `TEMPORAL_RESONANCE_GUIDELINE.md` (Internal guideline)
- [x] `TEMPORAL_RESONANCE_TEMPLATE.md` (Optional output section template)
- [x] `MODELING_INTERFERENCE_PATTERNS.md` (Practical modeling guide)
- [x] `KARMIC_MODEL_CYCLE_OVERVIEW.md` (Summary mapping of all cycles to layers)
- [x] Individual cycle documents for: Eclipse Year, Jupiter-Saturn Great Conjunction, Perigee-Syzygy, Callippic, Milankovitch (with caveats)
- Update `SKILL.md` to mention Temporal Resonance as an advanced/optional feature
- Update `QUICK_REFERENCE.md` with Temporal Resonance guidance

### Potential Minor Refactoring (Low Effort)
- Add a short "Temporal Resonance" subsection to the main Elyonize workflow description in `SKILL.md`.
- Ensure older physics documents in `docs/internal/` are clearly marked as background/supplementary if they are no longer central.
- Minor consistency pass on section headings and terminology across core model documents.

## Scope Decisions

- **In scope**: Documentation, integration of temporal resonance, cycle overviews, modeling guidance.
- **Out of scope for v0.3**: Major changes to the core Elyonize transformation algorithm, new language dictionary sources (those can be v0.4), or large-scale code restructuring.
- Milankovitch cycles are documented but explicitly noted as low-relevance for most use cases.

## Release Versioning

- Current: v0.2
- Target: **v0.3**
- Focus: "Temporal Depth + Documentation Completeness"

## Suggested Release Notes Structure

- New Features
  - Optional Temporal Resonance section for Elyonize outputs
  - Interference pattern modeling guidance
  - Expanded cycle documentation (Eclipse Year, Jupiter-Saturn, Perigee-Syzygy, etc.)
- Improvements
  - Clearer three-layer architecture documentation
  - Better integration between time model and linguistic interpretation
- Documentation
  - New overview and guideline documents
  - Updated SKILL.md and Quick Reference

## Timeline (Suggested)

- Complete any minor documentation polish (1–2 days)
- Update SKILL.md and QUICK_REFERENCE.md
- Final review of core model documents for consistency
- Draft release notes
- Tag and release v0.3

## Success Criteria

- A new user can understand the three-layer model and how to optionally use Temporal Resonance after reading the overview and guideline.
- All major cycles have clear, accessible documentation.
- The connection between astronomical time cycles and Elyonize interpretation is explicit and usable.
- The internal documentation set feels coherent and well-organized.