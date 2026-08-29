# Training Plan Framework

This is a *skeleton and a decision framework*, not a fixed 16-week
calendar. The daily coaching loop (`CLAUDE.md`) fills in each day from this
framework plus that morning's readiness — the same week can look
different two weeks running if life gets in the way.

## Why Zone 2 pace-at-HR is the real target

"7:45/mi at Zone 2 HR for 10mi" is fundamentally an **aerobic efficiency**
goal: how fast you can move at a low, fat-burning, all-day heart rate. That
number improves through consistent, mostly-easy volume over months, not
through hard workouts — hard workouts (threshold/VO2max) raise your
*ceiling*, easy volume raises your *floor* (the pace you can sustain at low
HR). Because this athlete's goal is the floor, the plan should be
**~80% easy Zone 2 running, ~20% harder work**, not the reverse.

## Periodization skeleton (~16 weeks, adjust freely)

| Phase | Weeks | Focus |
|---|---|---|
| Base 1 | 1–4 | Build easy Zone 2 volume; mostly time-based, HR-capped runs. Establish baseline pace-at-HR. |
| Base 2 | 5–8 | Keep extending Zone 2 volume/long run; introduce short strides (not intervals) 1x/week for economy. |
| Build | 9–12 | Add one modest threshold or tempo session/week if readiness allows; keep the bulk of volume in Zone 2; long run approaches 10mi. |
| Specific / Taper-check | 13–16 | Long run at/near 10mi holding Zone 2 HR to test the goal directly; back off if the trend says the timeline is optimistic (see below) rather than forcing it. |

Every 4th week: cut volume ~20–30% regardless of phase (recovery week),
unless readiness/log data already forced a lighter week recently.

## Daily readiness heuristic

Not a formula to plug numbers into blindly — a set of signals to weigh like
a human coach would:

- **HRV vs. rolling baseline**: notably below (~-15% or more) → favor
  rest/easy, regardless of what the plan calendar says.
- **Sleep score / duration**: poor sleep the night before → downgrade
  today's session (hard → easy, easy → shorter or rest).
- **Resting HR**: elevated vs. the athlete's recent baseline → treat like
  low HRV; consider illness.
- **Recent training pattern**: don't stack two hard days; don't let a long
  run happen on tired legs from yesterday; a missed day isn't a debt to
  repay by doubling up.
- **Trend over one-off**: one so-so night is noise; several days trending
  down together is signal.

When in doubt, undershoot. A skipped hard day costs little; training
through a bad-readiness stretch costs weeks.

## Workout shapes to draw from

- **Easy Zone 2**: time-based (e.g. 30–75 min depending on phase), HR-zone
  target = Zone 2 only, no pace target.
- **Long run**: Zone 2 HR target, time- or distance-based, growing toward
  10mi across the plan as readiness allows.
- **Strides** (Base 2+): after an easy run, 4–8x 20s relaxed fast strides
  with full recovery — economy work, not a hard day.
- **Threshold/tempo** (Build phase, readiness-gated): pace-zone target at
  threshold effort, e.g. 15–25 min continuous or 2–3x8-10min w/ short jog
  recovery. This is the only workout type that should target pace instead
  of HR.
- **Rest / cross-train**: whenever readiness signals say so — always a
  legitimate answer, not a failure state.

## Feasibility

Re-run this whenever you have fresh data (first real session, then every
2–3 weeks):

1. Pull the last 2–4 weeks of easy/Zone 2 runs. For each, compute average
   pace and average HR; note aerobic decoupling (HR drift) within longer
   runs if the tool provides it.
2. Compare current pace-at-Zone-2-HR to the 7:45/mi target. The gap tells
   you the story:
   - Already at or near 7:45/mi at Zone 2 for a shorter distance → 16 weeks
     to extend that to 10mi is plausible.
   - Meaningfully slower (rule of thumb: aerobic pace-at-HR improves on the
     order of 10–30 sec/mi over a solid 8–12 week base block for a
     consistent athlete, with large individual variation) → say plainly
     that 16 weeks is optimistic, and give a more realistic range instead
     of quietly abandoning the original goal.
3. Write the verdict into `ATHLETE_PROFILE.md` § Feasibility verdict and
   flag it to the athlete via the `> Note to athlete:` mechanism in
   `CLAUDE.md` if the timeline needs revising — don't just quietly change
   the plan.
4. Feasibility is about pace-at-HR trending toward the target, not about
   hitting an arbitrary intermediate number by an arbitrary date — extend
   or compress the phases above based on the actual trend, not the
   calendar.
