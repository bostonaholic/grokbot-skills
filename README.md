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

- [Running efficient recurring work](skills/running-efficient-recurring-work/SKILL.md) — cut wasted reads, repeated checks, and restarts in recurring routines while keeping quality.
