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

```markdown
**Lexical Entry**

**headword** /full IPA/ *part of speech*  
1. Primary definition — concise and evocative.  
2. (optional) Second nuance or extended sense.

*Etymology flavor:* Short invented but plausible etymological note.  
*Hebrew note:* (if applicable) Note the meaning if the form is phonetically close to a known Hebrew word/phrase.  
*Usage note:* (optional) When it adds value.
```

**Etymology flavor** should be included in every Lexical Entry.

**Hebrew phonetic match note**: If the Elyonized form sounds similar to a real Hebrew word or phrase, add a note about its actual Hebrew meaning in the Lexical Entry.

---

## 4. When to Use What

| Element                    | When to Use                                      | Priority     |
|---------------------------|--------------------------------------------------|--------------|
| **Sound Mapping Table**   | Almost always in Detailed Breakdowns             | Required    |
| **X-SAMPA**               | In tables for plain-text compatibility           | Recommended |
| **Avestan (Hoffmann)**    | Whenever Avestan roots/cognates are mentioned    | **Mandatory** |
| **PIE Phonology**         | When it illuminates why a mapping feels natural or elevated | Encouraged |
| **Vedic / Marathi**       | When they provide useful parallels               | Optional    |
| **Lexical Entry**         | At the end of every full transformation          | Required    |
| **Etymology Flavor**      | In every Lexical Entry                           | Required    |
| **Hebrew Phonetic Note**  | When the Elyonized form sounds like real Hebrew  | Recommended |

---

## 5. Quick Pronunciation Notes

- **Elyon / Elyonizer**: Pronounced roughly like *"Alien"* (playful misdirection).
- **El Elyon** (אֵל עֶלְיון): Ancient title meaning **"God Most High"** (appears in Genesis 14 with Melchizedek).

---

## 6. Example Mini Structure

```markdown
**Detailed Breakdown:**

**Sound Mapping Table**
| ... | ... | ... | ... | ... | ... | ... |

**Root & Cognate Notes**
- **Avestan (Hoffmann):** ...
- **PIE:** ...

**Lexical Entry**
**newword** /neɪ.wɜːd/ *noun*
1. Definition here.

*Etymology flavor:* ...
*Hebrew note:* (if applicable) ...
```

Use this reference when building or reviewing Elyonized transformations.