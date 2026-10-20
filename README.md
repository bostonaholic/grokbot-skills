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

## Add a skill

1. Pick a kebab-case slug, for example `running-efficient-recurring-work`.
2. Create `skills/<kebab-slug>/SKILL.md`.
3. Put `name` and `description` in the YAML frontmatter, then write the instructions.
4. Add a link under [Skills](#skills) in this file.

## Skills

- [Running efficient recurring work](skills/running-efficient-recurring-work/SKILL.md) — cut wasted reads, repeated checks, and restarts in recurring routines while keeping quality.
- [writing-prose](skills/writing-prose/SKILL.md) — Writes and edits prose for people in a plain, conversational, short house style with no em dashes. Use when drafting or revising documentation, READMEs, explanations, blog posts, or other human-facing prose. Not for prompts written for agents; use writing-system-prompts or composing-agent-prompts.
