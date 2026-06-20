# Elyonizer Quick Reference

## 1. Sound Mapping Table Format

Use this structure in **Detailed Breakdowns**:

```markdown
**Sound Mapping Table**

| Original Segment | Original IPA | Original X-SAMPA | Mapped Form | Mapped IPA | Mapped X-SAMPA | Rationale |
|------------------|--------------|------------------|-------------|------------|----------------|---------|
| segment          | /ipa/        | xsampa           | mapped      | /ipa/      | xsampa         | Why this mapping was chosen |
```

**Required columns**: Original Segment, Original IPA, Mapped Form, Mapped IPA, Rationale  
**Recommended additions**: Original X-SAMPA + Mapped X-SAMPA

---

## 2. Root & Cognate Notes Format

Add this section when relevant (especially in Enhanced forms):

```markdown
**Root & Cognate Notes**
- **Avestan (Hoffmann):** *form* (always use Hoffmann transcription when citing Avestan)
- **Vedic:** *form* or root
- **PIE:** *reconstruction* (when helpful)
- **Marathi parallel:** (optional)
- **Notes:** Brief explanation of the connection
```

**Rule**: When Avestan material is included, **always** provide the **Karl Hoffmann transcription**.

---

## 3. Lexical Entry Format

Always include at the end of the main response:

---

## 4. Optional: Temporal Resonance Section

When appropriate (especially for words with cyclical, rhythmic, or karmic qualities), you may add this section after the main interpretation:

```markdown
**Temporal Resonance**

This construction exhibits a [node / antinode / transitional] character within the Local Temporal Node Layer.

- **Primary anchoring**: [Yesterday-weighted / Tomorrow-weighted / Balanced]
- **Long-tail modulation**: [Present / Subtle / Strong]
- **Interference quality**: [constructive / destructive / complex beating] between layers
- **Nodal placement**: Lands near [major node / reflection point / antinode] in the ~7m6d structure

Overall temporal signature: [stable / evolving / threshold]
```

See `TEMPORAL_RESONANCE_GUIDELINE.md` and `TEMPORAL_RESONANCE_TEMPLATE.md` for full guidance. This section is **optional**.