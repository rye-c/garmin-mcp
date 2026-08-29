# Training Log

Newest entries at the top. Each daily coaching session appends one entry
here per `CLAUDE.md` § Daily coaching loop — this is the coach's memory
across sessions, so write enough that a future session (or the athlete)
can reconstruct the reasoning without re-pulling raw data.

Template for each entry:

```
## YYYY-MM-DD

- Readiness inputs: HRV (value vs. baseline), sleep score, resting HR, body battery/stress, recent training load
- Read on readiness: <one line>
- Decision: <rest / easy Zone 2 / long run / threshold / etc.> — <why>
- Scheduled: <workout summary, or "nothing — rest day">
- (optional) > Note to athlete: <anything needing their attention>
```

---

## 2026-08-29

> Note to athlete: This first coaching session couldn't reach your Garmin
> data at all — the `garmin` MCP server needs `GARMIN_EMAIL` /
> `GARMIN_PASSWORD` set as environment variables on the Claude Code Remote
> *environment* this repo runs in (not in this repo, not in chat), and
> neither is set yet. Nothing was pulled and nothing was scheduled today.
> The feasibility assessment and your baseline numbers in
> `ATHLETE_PROFILE.md` are still unfilled — that needs at least one
> successful data pull first. See the diagnostic details below for what
> to do next (and the MFA case, if your account has it enabled).

- Readiness inputs: none — no Garmin connection was ever established, so
  no sleep/HRV/RHR/body-battery/training-load data was available to score.
- Read on readiness: N/A — no data.
- Decision: no workout decision made and none scheduled. This isn't a
  rest-day judgment call from readiness data; it's a hard block because
  the coach has no working connection to Garmin at all yet.
- Scheduled: nothing — blocked on Garmin credentials, not attempted.
- Diagnostic detail: the `garmin` MCP server (`.mcp.json`, wraps
  `Taxuspt/garmin_mcp`) starts, but exits immediately with
  "OAuth tokens not found and no interactive terminal available" because
  (a) there are no cached OAuth tokens under `~/.garminconnect` on this
  host yet, and (b) `GARMIN_EMAIL`/`GARMIN_PASSWORD` are both unset in
  this session's environment, so it has no credentials to log in with.
  Because the server process exits, the MCP connection closes and no
  Garmin tools (profile, activities, sleep, HRV, workout scheduling, etc.)
  are exposed at all — this was a connection failure, not an MFA prompt,
  so it's still unknown whether this Garmin account has MFA enabled.
  Next step is on the athlete: set `GARMIN_EMAIL`/`GARMIN_PASSWORD` on the
  environment (see `README.md` § Setup) and re-run this session. If that
  next attempt demands an MFA code, the automated env-var login path won't
  work unattended — the one-time `garmin-mcp-auth` pre-auth flow (also in
  `README.md`) will be needed instead.
