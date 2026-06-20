# Internal Reference: Psychoacoustic Roughness Metrics

This document integrates **psychoacoustic roughness** as a quantitative measure of sensory dissonance and links it to our core interference mechanics.

## What is Psychoacoustic Roughness?

**Roughness** is a psychoacoustic sensation of "harshness," "buzzing," or "dissonance" that arises primarily from **rapid amplitude fluctuations (beating)** in the auditory system. It is most pronounced when partials (frequency components) are separated by roughly 15–300 Hz, depending on the center frequency.

- Below ~15 Hz separation → distinct beats or roughness is low.
- ~15–300 Hz separation → maximum roughness (strong, unpleasant beating).
- Above ~300 Hz → components begin to fuse into a single pitch or timbre; roughness decreases.

Roughness is one of the primary perceptual dimensions of **sensory dissonance**, alongside sharpness and tonalness. It is distinct from but related to musical dissonance (which also involves cultural and cognitive factors).

Key models include those by Plomp & Levelt (1965), Terhardt (1974), and more modern computational models (e.g., by Daniel & Weber, or Vassilakis).

## Connection to Interference Mechanics

Roughness is a direct perceptual consequence of **destructive interference** in the auditory periphery:

- When two or more sinusoids are close in frequency, their superposition produces **beats** (periodic constructive and destructive interference).
- The rate and depth of these beats determine the perceived roughness.
- In our terms: roughness quantifies the **strength and unpleasantness of destructive interference** within a localized frequency band.

This provides a **quantitative, perceptually grounded metric** for destructive interference that can be extended beyond sound.

## Mapping Roughness to Our Core Model

| Core Mechanic                    | Roughness Analogy / Extension                              |
|----------------------------------|------------------------------------------------------------|
| **Localized Interference Systems** | A sound (or symbolic structure) as a localized interference system whose roughness reflects the degree of destructive interference among its components |
| **Long-Tail Modulation**         | Slow amplitude or frequency modulation that changes roughness over time (e.g., vibrato, tremolo, or long-term cultural shifts in symbolic resonance) |
| **Perturbation & Reconfiguration Events** | Sudden changes in spectrum or amplitude that abruptly alter roughness (e.g., new partials appearing, masking, or critical band interactions) |

In the auditory domain, roughness is highest when partials fall within the same critical band and beat rapidly. In symbolic or temporal domains, we can conceptualize analogous "critical bands" of interference where components are close enough in "scale" or "meaning space" to produce strong interaction (constructive or destructive).

## Applications

### In Music and Sound

- Explains why certain intervals (minor second, major seventh, tritone) sound rougher than others (octave, perfect fifth).
- Used in sound synthesis, audio effect design, and music information retrieval.
- Can be computed from the spectrum using models that sum roughness contributions from all pairs of partials, weighted by their amplitude and frequency separation.

### Extension to Symbolic and Temporal Domains (Elyonize)

We can define analogous "roughness" measures for non-auditory interference:

- **Semantic roughness**: When components of a word or concept are close in meaning space but pull in conflicting directions → perceived conceptual dissonance or tension.
- **Temporal roughness**: When multiple cycles or events are close in timescale but out of phase or conflicting → periods of high "friction" or instability in personal or collective rhythms.
- **Cross-scale roughness**: Strong interference between very different scales (e.g., ancient etymology clashing with modern phonetic form) can be framed as high-roughness configurations.

In Elyonize, one could compute or estimate a **symbolic roughness score** for a transformation and report it in the Temporal Resonance section when relevant (e.g., "moderate semantic roughness arising from long-tail etymological interference with the new phonetic mapping").

### In Neural and Cognitive Systems

Roughness has neural correlates in the auditory brainstem and cortex (fluctuation rates that drive specific neural populations). High roughness can be aversive or attention-grabbing.

This parallels how high-interference (high-roughness) states in temporal or symbolic systems can feel unstable, charged, or in need of resolution — natural points for **perturbation events** or re-evaluation.

## Integration with Wavelet Packet Decomposition

Roughness analysis and wavelet packet decomposition are highly complementary:

- Wavelet packets decompose the signal into localized frequency bands at multiple scales.
- Roughness can then be estimated **within and between** selected packets by examining beating rates (difference frequencies) between energy in nearby packets.
- Best-basis selection using Shannon entropy can be augmented or replaced with a cost function that also penalizes high-roughness (high destructive interference) configurations if the goal is to find "smooth" or "consonant" representations.

This creates a powerful combined tool: wavelet packets for multi-scale localization + roughness metrics for quantifying destructive interference within and across scales.

## Summary

Psychoacoustic roughness provides a quantitative, perceptually validated measure of **destructive interference** in the auditory domain, arising from rapid beating between partials. It maps naturally onto our core interference mechanics and can be extended conceptually to semantic and temporal domains as "roughness" of meaning or rhythm.

When combined with wavelet packet decomposition (especially best-basis selection via Shannon entropy), it offers a rigorous way to analyze, quantify, and even design interference textures — whether in sound, time cycles, or symbolic transformations in Elyonize.

This integration strengthens the bridge between our abstract interference framework and concrete perceptual/signal-processing tools, while providing new language and metrics for describing the "feel" or texture of interference patterns across domains.