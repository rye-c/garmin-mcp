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
| VO2max (Garmin estimate) | 48.0 | 2026-08-30 |
| Weekly running volume (avg, last ~3 wks) | ≈25 mi/week (13 runs, Aug 9–28, ~67 total miles over 19 days) | 2026-08-30 |
| Training age / recent consistency | Consistent recent pattern — a run roughly every 1–2 days for at least the last 3 weeks, plus regular cross-training (bouldering, freediving). Longer-term training age unknown. | 2026-08-30 |

## Constraints & context

_(injuries, schedule constraints, travel, other sports, anything that
should shape the plan — update as you learn it from the athlete or from
patterns in the training log)_

- None reported by the athlete yet.
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
    block-over-block improvement the original heuristic assumed. VO2max
    corroborates the recent slide: 50.0 (2026-06-03) → 48.0 (2026-07-02).
  - Plausible confounds, not just fitness loss: a 10-day layoff
    (2026-05-29 to 2026-06-08) right after the May peak, and summer heat
    (LA, Jul–Aug) reliably inflates HR at a given pace independent of
    fitness. The 9:14/mi May figure shows the athlete's ceiling is real
    and higher than current — the problem is holding near it through an
    uninterrupted block, not raw capability.
- Revised recommendation: 16 weeks remains a **checkpoint, not a
  deadline**, and the case for that is now stronger than 2026-08-30's
  first pass — "flat-to-negative over a year" is a worse starting trend
  line than the original 10–30 sec/mi-per-block heuristic assumed. Priority
  for the next block: protect against repeat multi-week gaps (the
  2026-05-29–06-08 gap visibly preceded the summer slide) and don't fight
  peak-heat conditions for HR-capped work where avoidable. Re-run this
  again in 2–3 weeks with fresh data.
- Flagged to the athlete in `TRAINING_LOG.md` (2026-08-31 entry, addendum).

_Superseded first assessment, 2026-08-30 (based on ~3 weeks of data):_ distance
called "plausible" from a 7.1mi longest-run high-water mark; pace-at-HR gap
estimated at ~2:30/mi implying ~40–60+ weeks via the generic heuristic. The
year-long pull above replaces this with actual measured history rather than
a heuristic projection.
