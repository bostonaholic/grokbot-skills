---
name: Auditing a bot at 30 days
description: >-
  Use monthly, or when a bot seems lazy, noisy, or ignored, to decide from run
  history whether each of its routines should stay, be rewritten, or be cut.
  Report only; changes nothing.
---
# Auditing a bot at 30 days

Use the run history, not memory of it. Report only; delete nothing.

## For every routine the bot owns
- How many of the last 20 runs succeeded (or unknown)
- How many produced output someone acted on or opened (or unknown)
- How many ended in "waiting for approval"
- Median run time (or unknown)

A routine that looks lazy is often one that has been quietly failing, so check failures before judging usefulness.

## Answer in one line each
1. Which routine has produced nothing useful in 30 days?
2. Which one needs a person on every run, and at which step?
3. If you could delete one routine today, which one and why?
4. Can you say in one sentence what this bot is for?

## Cut or rewrite signals
The rework costs more than the work saved; nobody reads the output; it needs a nudge every run; or its purpose doesn't fit in one sentence. Each is a role problem: propose the rewritten role or the routine to cut, and let the owner decide.

## Output
One short table per bot plus the four answers, with links to the run records. Mark every number observed or estimate.
