#!/usr/bin/env bash
# Regenerate ai-stack-2026-04-19.pdf from the section markdowns + cleaned transcript.
set -euo pipefail
cd "$(dirname "$0")"

for f in sections/stack.md sections/tool-list.md sections/thoughts.md sections/blockers.md sections/opportunities.md transcripts/transcript-cleaned.md; do
  pandoc -f markdown -t typst "$f" -o "${f%.md}.typ.frag"
  sed -i 's/^#horizontalrule/#line(length: 100%)/' "${f%.md}.typ.frag"
done

typst compile document.typ ai-stack-2026-04-19.pdf
