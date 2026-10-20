# AGENTS.md

Context for coding agents working in this repository.

## Purpose

This repo is a collection of skills for Cursor and Grok Bot agents. Each skill is a standalone instruction file an agent can load when the task matches.

## Layout

```
skills/<kebab-slug>/SKILL.md
```

One folder per skill. The folder name is the slug. The instructions live only in `SKILL.md`.

## SKILL.md frontmatter

Every `SKILL.md` starts with YAML frontmatter that includes:

- `name` — short title
- `description` — when to use the skill

Do not add a skill whose frontmatter is missing either field.

## Installing into Grok Bot

An agent installing these skills for a user on a Grok Bot computer runs:

```sh
git clone https://github.com/bostonaholic/grokbot-skills ~/grokbot-skills
sh ~/grokbot-skills/scripts/install-grok-bot.sh
```

When `~/grokbot-skills` already exists, run `git -C ~/grokbot-skills pull` first. The script copies every `skills/<kebab-slug>/` folder to `~/agent-data/workflows/<kebab-slug>/` and replaces existing copies. Confirm with `ls ~/agent-data/workflows`, then tell the user the skills show under **Settings** > **Plugins** > **Yours**. Other agents are not supported by this script yet.

## Writing and adding a skill

- Slug is lowercase kebab-case, matching the folder name (`running-efficient-recurring-work`).
- After adding or renaming a skill, update the skill list in `README.md` in the same change.
- Keep skills generic. No assistant-specific details, tool names tied to one product, account names, or secrets.
- Do not edit an existing `SKILL.md` unless the task says to change that skill.

## Git

- Branch names are lowercase, `creator--short-description`, with no `/`. Example: `devin--running-efficient-recurring-work`.
- Sign every commit.
- Never push to `main`. Open a pull request into `main` and wait for review.
