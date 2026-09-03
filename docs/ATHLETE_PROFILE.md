# Athlete Profile

_Last updated: 2026-08-31 (full year of Garmin activity history pulled and
analyzed; feasibility verdict revised)_

## Goal

Run **10 miles at 7:45/mi** while holding an **easy, aerobic Zone 2 heart
rate** (not a threshold effort — see `CLAUDE.md`).

Proposed timeframe: **16 weeks**, treated as a hypothesis to be checked
against real data, not a fixed deadline. See `PLAN.md` § Feasibility.

## Baseline fitness (fill in from Garmin on first real coaching session)

| Metric | Value | As of |
|---|---|---|
| Max HR | _no direct Garmin max-HR field returned_; highest observed during a run in the last 3 weeks is 175 bpm (2026-08-16) — treat as a working floor, true max may be higher | 2026-08-30 |
| Resting HR | 47 bpm (matches 7-day trailing avg) | 2026-08-30 |
| Lactate threshold HR | 167 bpm | 2026-08-26 (Garmin-computed) |
| HR zones (bpm) | No Garmin named-zone breakdown returned by the API. Using an LTHR-based estimate (167 bpm LTHR): **Z1 <142, Z2 142–149, Z3 150–157, Z4 158–165, Z5 166+**. Garmin's own %max-HR-based named zones (e.g. a Z2 around 118–137) run noticeably lower and don't match this athlete's actual easy-run HR behavior below — use these LTHR-based bpm ranges, not the named Z1–Z5 labels, when prescribing workouts. | 2026-08-30 |
| Current easy/Zone 2 pace-at-HR | ~10:05–10:52/mi (avg ≈10:15/mi) at 142–149 bpm, from 10 Base/easy runs Aug 10–28 | 2026-08-30 |
| Recent race times / time trials | None logged. Garmin's model-predicted times (not measured): 5K 23:53, 10K 50:33, half marathon 1:54:45, marathon 4:15:09 | 2026-08-30 |
| VO2max (Garmin estimate) | 48.3, climbing since a post-injury low of 47.4 (2026-07-01); pre-injury all-time high (this window) was 50.2 (2026-05-17–20); net +2.2 over the trailing 12 months | 2026-09-02 |
| Weekly running volume (avg, last ~3 wks) | ≈25 mi/week (13 runs, Aug 9–28, ~67 total miles over 19 days) | 2026-08-30 |
| Training age / recent consistency | Consistent recent pattern — a run roughly every 1–2 days for at least the last 3 weeks, plus regular cross-training (bouldering, freediving). Longer-term training age unknown. | 2026-08-30 |

## Constraints & context

_(injuries, schedule constraints, travel, other sports, anything that
should shape the plan — update as you learn it from the athlete or from
patterns in the training log)_

- **Injury, May 2026 (reported 2026-09-02, fully resolved as of that
  report — no current symptoms/restrictions).** This explains the
  10-day training gap 2026-05-29→06-08 previously flagged in the
  year-long pull as an unexplained confound — it was a deload forced by
  this injury, followed by a deliberate slow ramp-up since, not a random
  layoff. Type/location of injury not yet specified by the athlete.
  Practical implications: (1) the post-injury rebuild is a better
  explanation for the summer pace-at-HR slide (9:14/mi May peak →
  ~10:11/mi now) than pure detraining or heat alone — treat the May peak
  as "proven ceiling, pre-injury" rather than a number the athlete should
  already be back at; (2) even "fully resolved" injuries carry elevated
  re-injury risk for a while during return-to-running, especially from
  unplanned load spikes — this raises the caution level (beyond the
  usual training-plan reasoning) on sessions like the 2026-09-02 run
  (14 unplanned threshold-pace surges, self-directed, no coach input) —
  see `TRAINING_LOG.md` 2026-09-02.
- Cross-trains regularly in freediving/apnea and bouldering alongside
  running — factor this into same-day training load, not just run mileage.

## Feasibility verdict (updated as data comes in)

**Updated 2026-08-31 (full year of Garmin history pulled) — 16 weeks looks
optimistic, more firmly than the first pass suggested.**

- Distance piece: **solved, not just plausible.** A year-long pull of
  activities (2025-08-31 to 2026-08-31, 193 runs / 965mi) turned up a
  13.6mi run on 2026-03-29 at avg HR 144bpm — inside true Zone 2 — and a
  10.0mi run on 2026-03-22 at 150bpm. The athlete has already run the goal
  distance, and beyond it, at close to Zone 2 effort. Extending back to
  10mi from the current ~5mi long run is a rebuild, not new territory.
- Pace-at-Zone-2-HR piece: still the hard part, and the year of data makes
  it look harder than the first 3-week snapshot implied. Isolating runs
  with avg HR in the 138–149bpm band by month:
  - Sep 2025: 9:35/mi → Feb 2026 (season low): 11:01/mi
  - Mar–May 2026 (season high, May): 9:14/mi — the athlete's best
    demonstrated Zone-2 pace all year
  - Jun–Aug 2026: sliding back to ~10:11/mi (current)
  - **Net over the full 12 months: ~36 sec/mi *slower* now than a year
    ago**, despite 965mi of volume in between — not the steady
    block-over-block improvement the original heuristic assumed.
  - **Correction (2026-09-02): VO2max does NOT corroborate a slide** —
    that was a mischaracterization based on two cherry-picked snapshot
    dates. The actual full-year VO2max trend, pulled 2026-09-02: 46.1
    (2025-09-02) → 49.3 (early Nov 2025) → 47.1 (Jan 2026 winter dip) →
    **50.2, all-time high in this window** (2026-05-17–20, just before
    the injury) → 47.4 post-injury low (2026-07-01) → **48.3 now
    (2026-09-02), climbing again**. Net over the full 12 months:
    **+2.2**, a genuine improvement, not flat or negative. The engine
    (aerobic capacity) is intact and already most of the way back from
    the injury dip; it's specifically running-pace-at-a-given-HR
    (economy/efficiency) that's lagging, which commonly recovers slower
    than raw VO2max after a layoff and should keep closing with
    consistent running-specific volume — exactly what Base 1 is doing.
    This meaningfully softens the "flat-to-negative" framing below: the
    athlete has real, recent, demonstrated fitness gains (the May 50.2
    peak) and a plausible recovery-in-progress story, not a stalled or
    declining trend.
  - Confirmed confound, not just fitness loss (updated 2026-09-02 — the
    athlete reported the cause directly, superseding the earlier
    "plausible confound" hedge): the 10-day gap (2026-05-29 to
    2026-06-08) right after the May peak was a forced deload from an
    **injury** (now fully resolved), followed by a deliberate slow
    ramp-up since — not a random layoff. Summer heat (LA, Jul–Aug) is
    still a separate, additional factor that reliably inflates HR at a
    given pace independent of fitness. The 9:14/mi May figure shows the
    athlete's ceiling is real and higher than current, but it's now
    better read as a **pre-injury ceiling** being rebuilt toward, not a
    number the athlete should already have reclaimed — the rebuild
    timeline, not just base volume, is now part of what determines how
    fast pace-at-HR can recover. See § Constraints & context for the
    full injury note and its implication for load-spike caution.
- Revised recommendation (updated 2026-09-02 with the VO2max correction
  and confirmed injury above): 16 weeks remains a **checkpoint, not a
  deadline**, but the framing is now more balanced than 2026-08-30's or
  2026-08-31's passes — this isn't a stalled or declining athlete
  (VO2max net +2.2/year, a fresh all-time-high in May), it's a genuine
  fitness gain interrupted by a real injury, with pace-at-HR (the
  goal-specific metric) lagging the broader recovery, which is the
  expected pattern rather than a red flag on its own. Still can't call
  16 weeks solidly on-track without more data — the pace-at-HR gap to
  7:45/mi is real regardless of cause — but "optimistic" should be read
  as "uncertain, pending the rebuild," not "the athlete isn't
  progressing." Priority for the next block: protect against repeat
  multi-week gaps, don't fight peak-heat conditions for HR-capped work
  where avoidable, and watch pace-at-HR specifically (not just VO2max)
  as the tell for whether the rebuild is on schedule. Re-run this again
  in 2–3 weeks with fresh data.
- Flagged to the athlete in `TRAINING_LOG.md` (2026-08-31 entry, addendum).

_Superseded first assessment, 2026-08-30 (based on ~3 weeks of data):_ distance
called "plausible" from a 7.1mi longest-run high-water mark; pace-at-HR gap
estimated at ~2:30/mi implying ~40–60+ weeks via the generic heuristic. The
year-long pull above replaces this with actual measured history rather than
a heuristic projection.
