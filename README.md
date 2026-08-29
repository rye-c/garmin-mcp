# garmin-mcp — Dynamic Running Coach

An autonomous running coach: reads your Garmin Connect data (sleep, HRV,
resting HR, training status, recent runs) and schedules a suggested workout
onto your Garmin calendar every day, adjusted to how your body and life are
actually doing — not a fixed 16-week PDF.

It doesn't reimplement Garmin's API. It's a thin "coaching brain" — an
athlete profile, a plan framework, and a running daily log, all in
`docs/` — that sits on top of the actively-maintained
[`Taxuspt/garmin_mcp`](https://github.com/Taxuspt/garmin_mcp) MCP server for
the actual Garmin Connect access and workout scheduling.

## How it works

- `CLAUDE.md` — the coach's operating instructions, loaded automatically
  by Claude Code every session in this repo.
- `docs/ATHLETE_PROFILE.md` — the goal and current baseline fitness numbers.
- `docs/PLAN.md` — the periodization framework and the readiness/feasibility
  heuristics (not a rigid calendar).
- `docs/TRAINING_LOG.md` — a running, dated log the coach writes to every
  day; this is how state persists across independent daily sessions.
- `.mcp.json` — wires up the `garmin` MCP server (see below).

Each morning, a scheduled session opens this repo, reads the profile/plan/
log, pulls your last night's and last week's Garmin data, decides on a
workout, schedules it to your Garmin calendar (so it shows up as a
suggested activity on your watch), and logs its reasoning.

## Setup

### 1. Garmin credentials

This needs your Garmin Connect login to read your data and write to your
calendar — there's no official personal API, so this uses the same
reverse-engineered Connect API Garmin's own apps use.

**If your Garmin account does not use MFA (recommended for this):**
set two environment variables on the Claude Code Remote *environment* this
project runs in (not committed to git, not pasted into chat):

```
GARMIN_EMAIL=you@example.com
GARMIN_PASSWORD=your-garmin-password
```

**If your account uses MFA**, direct env-var login won't work for an
unattended daily job. Instead, run the one-time interactive pre-auth flow
yourself (`uvx --from git+https://github.com/Taxuspt/garmin_mcp
garmin-mcp-auth`) to cache OAuth tokens (valid ~6 months) to
`~/.garminconnect`, and drop `GARMIN_EMAIL`/`GARMIN_PASSWORD` from the MCP
config entirely — but note that only works if the daily job reuses the same
persistent home directory, which a fresh-session-per-day automation does
not. Ask if you want help wiring up the persistent-session variant instead.

### 2. `.mcp.json`

Claude Code's permission classifier blocks me from writing this file
directly (it configures what commands a session can auto-execute), so add
it yourself at the repo root:

```json
{
  "mcpServers": {
    "garmin": {
      "command": "uvx",
      "args": [
        "--python", "3.12",
        "--from", "git+https://github.com/Taxuspt/garmin_mcp",
        "garmin-mcp"
      ],
      "env": {
        "GARMIN_EMAIL": "${GARMIN_EMAIL}",
        "GARMIN_PASSWORD": "${GARMIN_PASSWORD}"
      }
    }
  }
}
```

This requires `uv`/`uvx` to be available in the environment the daily
session runs in.

### 3. First coaching session (manual, to trust the MCP server + do the initial assessment)

Open this repo in a normal Claude Code session once, and ask it to act as
your coach for the day. The first run should:
- Approve the `garmin` MCP server when Claude Code asks to trust it
  (this trust decision is what lets later *automated* sessions skip the
  prompt — see below).
- Do the initial feasibility assessment (`docs/PLAN.md` § Feasibility) and
  fill in `docs/ATHLETE_PROFILE.md` with your real numbers.
- Schedule your first suggested workout.

After that session, commit whatever trust-state file Claude Code writes
(typically `.claude/settings.local.json`) so future automated sessions
inherit the "trusted" decision instead of stalling on a prompt.

### 4. Daily automation

A scheduled Routine fires once a day, opens a fresh session on this repo,
and runs the coaching loop end-to-end (see `CLAUDE.md`). Ask your assistant
to set this up via Claude Code Remote's trigger tooling if it isn't already
running — it needs to know your rough wake time/timezone to pick a sensible
hour.

## Safety notes

This is a coaching heuristic, not medical advice. Reported pain, illness, or
persistent unusual fatigue should always override the plan — see
`CLAUDE.md` § Non-negotiables. If something sounds like it needs a doctor or
physio, the coach should say so rather than prescribing around it.
