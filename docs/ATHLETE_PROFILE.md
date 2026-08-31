# Athlete Profile

_Last updated: 2026-08-30 (first successful Garmin data pull)_

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

**First assessment, 2026-08-30 — 16 weeks looks optimistic.**

- Distance piece: comfortably plausible. Longest recent runs are already
  ~7.1mi (2026-08-10) and ~6.6mi (2026-08-21); extending to 10mi over 16
  weeks at a sane build rate is routine.
- Pace-at-Zone-2-HR piece: the hard part. Current pace at true Zone 2 HR
  (142–149 bpm) is ~10:05–10:52/mi (avg ≈10:15/mi) vs. the 7:45/mi target —
  a gap of roughly **2:30/mi**. Per `PLAN.md`'s rule of thumb
  (10–30 sec/mi improvement per solid 8–12 week base block), even at the
  optimistic end that gap implies on the order of **5+ base blocks —
  roughly 40-60+ weeks**, several times the proposed 16-week window. This
  is directional, not a precise ETA — individual response varies a lot —
  but the order of magnitude is clear enough to flag now rather than let
  it ride quietly.
- Recommendation: treat 16 weeks as an early **checkpoint to reassess
  progress and revise the timeline**, not a hard deadline for hitting
  7:45/mi at Zone 2 for the full 10mi. Re-run this assessment in 2–3 weeks
  once more pace-at-HR data accumulates — the verdict could move either
  direction as real trend data comes in.
- Flagged to the athlete in `TRAINING_LOG.md` (2026-08-30 entry).
