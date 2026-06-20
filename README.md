# Elyonizer-Prime

**Elyonize** is a secret creative linguistic transformation system for turning modern words, names, and phrases into elegant, resonant forms.

## Current Version: v0.3

### v0.3 Highlights

- Comprehensive language reference documentation added under `docs/languages/`
- Detailed guides for all supported phonetic source languages
- Clear guidance on factual vs. creative/philosophical use of roots

### v0.2 Highlights

- Major mode restructure:
  - `Elyonize` is now the default **Light Decode Mode** (clean breakdown + Overall Meaning + Interpretation)
  - `Elyon Analyze` triggers the **Full Technical Mode** (Sound Mapping Tables, Hoffmann transcription, Lexical Entry, etc.)
- Added **Welsh**, **Basque**, and selective **German** support
- Added **Plain Language Restoration** section

## Modes

| Command            | Mode                    | Best For                              |
|--------------------|-------------------------|---------------------------------------|
| `Elyonize`         | Light Decode (default)  | Quick, readable breakdowns            |
| `Elyon Analyze`    | Full Technical          | Deep linguistic analysis              |

## Quick Start

```text
Elyonize "your phrase here"        # Light decode mode
Elyon Analyze "your phrase here"   # Full technical breakdown
```

## Language Reference (v0.3)

Detailed documentation for all languages used as phonetic and conceptual sources is available in `docs/languages/`:

- [Language Index](docs/languages/README.md)
- [Hebrew](docs/languages/hebrew.md)
- [Hindi](docs/languages/hindi.md)
- [Aramaic](docs/languages/aramaic.md)
- [Welsh](docs/languages/welsh.md)
- [Basque](docs/languages/basque.md)
- [Cherokee](docs/languages/cherokee.md)
- [Irish Gaelic](docs/languages/irish-gaelic.md)
- [Scots Doric](docs/languages/scots-doric.md)
- [German](docs/languages/german.md) (use selectively)

Each language file includes phonetic guidance, useful roots, usage notes, and examples.

## Repository Structure

```
elyonizer-prime/
├── README.md
├── CHANGELOG.md
├── RELEASE_NOTES_v0.2.md
├── THEORY_OF_OPERATION.md
├── docs/
│   ├── QUICK_REFERENCE.md
│   └── languages/          # New in v0.3
└── skill/
    ├── SKILL.md
    ├── references/
    └── assets/
```