#!/bin/zsh --no-rcs
# Publishes the game: the committed site/ (git archive, so nothing stray on disk ships) as static assets of the
# Cloudflare Worker navigator-dojo-site (https://navigator-dojo-site.gabor-veres.workers.dev).
# Needs `npx wrangler login` once.
set -eu
cd "$(dirname "$0")/.."
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
git archive HEAD site wrangler.jsonc | tar -x -C "$tmp"
cd "$tmp"
npx --yes wrangler@4 deploy
