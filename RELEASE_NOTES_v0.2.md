# Elyonizer v0.2 Release Notes

**Released:** June 20, 2026

## Major Changes

### New Dual-Mode System

Elyonizer now operates in two distinct modes:

- **Elyonize (Default)** — Light Decode Mode
  - Clean, analytical breakdown
  - Component-by-component meaning
  - Clear "Overall Meaning" section
  - Short interpretive/contextual note
  - Designed for quick, readable results

- **Elyon Analyze** — Full Technical Mode
  - Detailed Sound Mapping Tables (with IPA + X-SAMPA)
  - Root & Cognate Notes (including Karl Hoffmann transcription for Avestan)
  - Full Lexical Entry with etymology flavor
  - Cross-linguistic phonetic notes
  - Plain Language Restoration at the end

### Usage

```text
Elyonize "your phrase here"           # Light decode mode (default)
Elyon Analyze "your phrase here"     # Full technical breakdown
```

## New Language Support

- **Welsh** — Phonetic similarity matching
- **Basque** — Phonetic similarity matching
- **German** (including variants) — Added with guidance to use selectively due to large vocabulary size

## Other Improvements

- Added **Plain Language Restoration** section (Google Translate-style meaning restoration from roots)
- Improved documentation and quick reference
- Cleaner default output style matching user expectations
- Better separation between creative transformation and analytical decoding

## Files Changed

- `skill/SKILL.md` — Core logic and dual-mode templates
- `docs/QUICK_REFERENCE.md` — Updated documentation
- `README.md` — Project overview
- `CHANGELOG.md` — Added version history

## Upgrade Notes

If you were previously using `Elyonize` expecting the full technical output, switch to `Elyon Analyze` for the detailed version. Normal use of `Elyonize` will now give you the cleaner decode-style output.

---

**Full repository:** https://github.com/webaugur/elyonizer-prime