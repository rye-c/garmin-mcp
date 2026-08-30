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

### 1. Garmin credentials — your password never touches this system

There's no official personal Garmin API, so this uses the same
reverse-engineered Connect API Garmin's own apps use — but your actual
Garmin password is never entered into any Claude session, any chat, or any
Claude Code Remote environment config. Instead:

**Run this on your own computer** (not in any Claude session — needs
Python 3.12+ and [`uv`](https://docs.astral.sh/uv/getting-started/installation/)
installed locally):

```
uvx --python 3.12 --from git+https://github.com/Taxuspt/garmin_mcp garmin-mcp-auth
```

It prompts for your email, password, and MFA code (if enabled) — all typed
locally, never sent anywhere but Garmin. On success it writes two files:

- `~/.garminconnect/garmin_tokens.json` — the raw OAuth token (leave this
  on your machine, don't send it)
- `~/.garminconnect_base64` — the same token, base64-encoded as a single
  line, specifically meant to be moved elsewhere

Get the contents with `cat ~/.garminconnect_base64` and give **only that
string** to your assistant to set as the `GARMIN_TOKENS_B64` environment
secret on the Claude Code Remote environment this runs in. It's a bearer
token, not your password — it expires in ~6 months and can be revoked
independently (e.g. by changing your Garmin password) without this repo
ever having held your real credentials.

When it expires, re-run the same command locally (`--force-reauth` if
tokens still exist) and update the `GARMIN_TOKENS_B64` secret.

### 2. `.mcp.json`

Already checked in — wires up the `garmin` MCP server via
`scripts/run_garmin_mcp.sh`, which materializes the token from
`GARMIN_TOKENS_B64` into `~/.garminconnect/` on startup (only if no token
file exists yet there) before launching the server. Requires `uv`/`uvx` to
be available in the environment the daily session runs in.

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
