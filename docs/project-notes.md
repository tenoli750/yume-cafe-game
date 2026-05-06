# Project notes

Yume Cafe Game is a small browser game with a static frontend and optional
Supabase leaderboard schema.

## Useful files

- `index.html` is the playable entry point.
- `docs/guide.html` documents the player-facing guide.
- `db/supabase-leaderboard.sql` contains the leaderboard table setup.

## Before sharing a build

- Open `index.html` locally and confirm the game starts cleanly.
- Check the guide page after changing gameplay terminology.
- If leaderboard fields change, update the Supabase SQL and any UI labels in
  the same pass.

## Handoff

Keep database credentials out of the repo. Share only schema SQL and deployment
notes, not live Supabase keys.
