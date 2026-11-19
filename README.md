# Navigator Dojo

A small browser game for practising trackball / mouse-key actions: left click, double-click, right click, drag,
scroll and cursor tracking. Three themes (Neon, Meadow, Keeb), two modes (Arcade 60s, Zen untimed).

Unofficial and fan-made. Not affiliated with or endorsed by ZSA.

- The whole game is `site/index.html` — open it directly, no build step.
- Tuning knobs (scroll amount, double-click window, tracking hold time) are constants at the top of its script.
- Deploy: `scripts/deploy-site.sh` publishes the committed `site/` to the Cloudflare Pages project
  `navigator-dojo-site` (needs `npx wrangler login` once).
