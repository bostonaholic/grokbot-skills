#!/bin/sh
# Installs every skill in this checkout into a Grok Bot skill library.
#   sh scripts/install-grok-bot.sh [--dest <dir>]
# Copies each skills/<slug>/ folder to <dir>/<slug>/, replacing any existing <dir>/<slug>/ so a
# rerun updates in place. <dir> defaults to $HOME/agent-data/workflows, the library every Grok Bot
# on the account reads. Exit 0 on success, 1 when the checkout has no skills, 2 on a usage error.
set -eu

usage() {
  echo "usage: sh scripts/install-grok-bot.sh [--dest <dir>]" >&2
  exit 2
}

dest="${HOME:-}/agent-data/workflows"
while [ $# -gt 0 ]; do
  case "$1" in
    --dest)
      [ $# -ge 2 ] || usage
      dest="$2"
      shift 2
      ;;
    *) usage ;;
  esac
done
[ -n "$dest" ] || usage

root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root"

mkdir -p "$dest"
count=0
for entry in skills/*/SKILL.md; do
  [ -f "$entry" ] || continue
  src=${entry%/SKILL.md}
  slug=${src##*/}
  rm -rf "${dest:?}/$slug"
  cp -R "$src" "$dest/$slug"
  echo "installed $slug"
  count=$((count + 1))
done
if [ "$count" -eq 0 ]; then
  echo "install-grok-bot.sh: found no skills/*/SKILL.md under $root" >&2
  exit 1
fi
echo "$count skills installed to $dest"
