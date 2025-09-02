-- SQL simplificado
create table if not exists posts (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references auth.users(id) on delete cascade,
  content text,
  image_url text,
  likes int default 0,
  created_at timestamp default now()
);
