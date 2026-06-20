# Elyonizer-Prime v0.2

**Elyonize** is a secret creative linguistic transformation system.

## What's New in v0.2

- **Major mode restructure**: `Elyonize` is now the default **light Decode mode** (clean breakdown + meaning + interpretation)
- `Elyon Analyze` triggers the full technical mode (Sound Mapping Tables, Hoffmann transcription, roots, Lexical Entry)
- Added support for **Welsh** and **Basque**
- Added **selective German** support (to avoid false positives)
- Added **Plain Language Restoration** section
- Improved documentation and quick reference

## Modes

| Command              | Mode                  | Description                              |
|----------------------|-----------------------|------------------------------------------|
| Elyonize             | Light Decode (default)| Clean breakdown + Overall Meaning        |
| Elyon Analyze        | Full Technical        | Detailed tables + roots + Lexical Entry  |

## Quick Start

```text
Elyonize "your phrase here"
Elyon Analyze "your phrase here"   # for full technical breakdown
```

## Repository Structure

```
elyonizer-prime/
├── README.md
├── THEORY_OF_OPERATION.md
├── docs/QUICK_REFERENCE.md
└── skill/
    ├── SKILL.md
    ├── references/
    └── assets/
```