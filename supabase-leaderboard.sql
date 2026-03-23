create table if not exists public.leaderboard_scores (
  id bigserial primary key,
  player_id text not null check (char_length(player_id) between 1 and 18),
  score integer not null default 0 check (score >= 0),
  coins integer not null default 0 check (coins >= 0),
  served_customers integer not null default 0 check (served_customers >= 0),
  created_at timestamptz not null default now()
);

alter table public.leaderboard_scores enable row level security;

drop policy if exists "Public can read leaderboard scores" on public.leaderboard_scores;
create policy "Public can read leaderboard scores"
on public.leaderboard_scores
for select
using (true);

drop policy if exists "Public can insert leaderboard scores" on public.leaderboard_scores;
create policy "Public can insert leaderboard scores"
on public.leaderboard_scores
for insert
with check (true);
