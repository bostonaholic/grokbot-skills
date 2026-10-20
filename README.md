# grokbot-skills

Skills for Cursor and Grok Bot agents. Each skill is one folder an agent can load on its own.

Agent instructions for this repo: [AGENTS.md](AGENTS.md).

## Layout

```
skills/<kebab-slug>/SKILL.md
```

- One folder per skill. The folder name is a kebab-case slug.
- The skill body lives in `SKILL.md` inside that folder.
- YAML frontmatter at the top of `SKILL.md` holds `name` and `description`.

Example:

```markdown
---
name: Skill title
description: When to use this skill, in one or two sentences.
---
# Skill title

Instructions the agent follows.
```

## Install into Grok Bot

Paste this into a Grok Bot conversation and the bot installs the skills on its computer:

```text
Install the skills from https://github.com/bostonaholic/grokbot-skills, refer to the repo's AGENTS.md for instructions.
```

Or run it yourself on the bot's computer:

```sh
git clone https://github.com/bostonaholic/grokbot-skills ~/grokbot-skills
sh ~/grokbot-skills/scripts/install-grok-bot.sh
```

The script copies each `skills/<kebab-slug>/` folder to `~/agent-data/workflows/<kebab-slug>/`, the skill library every Grok Bot on the account reads. Rerunning replaces each copy in place, so this updates:

```sh
git -C ~/grokbot-skills pull
sh ~/grokbot-skills/scripts/install-grok-bot.sh
```

Pass `--dest <dir>` when the library lives elsewhere. Confirm the install under **Settings** > **Plugins** > **Yours**, where each skill appears in the bot's skill catalog, and in the `/` menu of a conversation.

## Add a skill

1. Pick a kebab-case slug, for example `running-efficient-recurring-work`.
2. Create `skills/<kebab-slug>/SKILL.md`.
3. Put `name` and `description` in the YAML frontmatter, then write the instructions.
4. Add a link under [Skills](#skills) in this file.

## Skills

- [Auditing a bot at 30 days](skills/auditing-a-bot-at-30-days/SKILL.md) — Use monthly, or when a bot seems lazy, noisy, or ignored, to decide from run history whether each of its routines should stay, be rewritten, or be cut. Report only; changes nothing.
- [being-extremely-fucking-brief](skills/being-extremely-fucking-brief/SKILL.md) — Keeps every reply to the user to three lines or fewer, with no preamble, restated question, recap, or closing offer. Use when about to reply to the user: load it before every reply in every session, including plain questions, recommendations, and comparisons, even when no other skill applies.
- [composing-agent-prompts](skills/composing-agent-prompts/SKILL.md) — Composes a self-contained, source-cited task prompt for another coding agent to execute in a target repository, without running the task. Use when the user asks to write, draft, or hand off a prompt, brief, or task spec for another agent. Not for system prompts; use writing-system-prompts.
- [conducting-deep-research](skills/conducting-deep-research/SKILL.md) — Conducts source-backed, goal-directed research that combines a scholarly evidence review with an institution, company, or funding map. Use when a request needs both an evidence review and an organization or funding map. Not for quick lookups or general research write-ups.
- [grooming-backlogs](skills/grooming-backlogs/SKILL.md) — Grooms a GitHub Projects backlog: verifies issues against the code, ranks and clusters them, and plans milestone, link, and closure changes, or promotes issues to Ready. Proposes tracker changes; each requires approval. Use when asked to groom, triage, or prioritize a backlog, or to promote issues to Ready.
- [improving-prompts](skills/improving-prompts/SKILL.md) — Compresses and clarifies an existing LLM prompt through concept elevation, verifying that no original instruction is lost. Use when the user supplies a prompt or prompt file and asks to improve, tighten, optimize, or refine it. Not for writing a new prompt; use writing-system-prompts.
- [Running efficient recurring work](skills/running-efficient-recurring-work/SKILL.md) — cut wasted reads, repeated checks, and restarts in recurring routines while keeping quality.
- [Running unattended routines and triggers](skills/running-unattended-routines-and-triggers/SKILL.md) — Use when creating or editing a scheduled routine or event trigger that runs while nobody is watching, so it never stalls on an approval, never fires on noise, and is tested before it is trusted.
- [Saving a job as a skill](skills/saving-a-job-as-a-skill/SKILL.md) — Use after running a job cleanly by hand, when turning it into a reusable skill, or when reviewing an existing skill that keeps producing inconsistent results.
- [writing-prose](skills/writing-prose/SKILL.md) — Writes and edits prose for people in a plain, conversational, short house style with no em dashes. Use when drafting or revising documentation, READMEs, explanations, blog posts, or other human-facing prose. Not for prompts written for agents; use writing-system-prompts or composing-agent-prompts.
