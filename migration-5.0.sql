-- ============================================
-- HOBBITON 5.0 — Complete Migration
-- Run this in your Supabase SQL Editor
-- (Dashboard → SQL Editor → New query → paste → Run)
-- ============================================

-- Book metadata from Open Library
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS cover_url text;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS subjects text;

-- Queue management
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS queue_position integer;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS queue_owner text;

-- Reading tracking
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS picked_by text;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS author text;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS total_chapters integer;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS chapter_ari integer DEFAULT 0;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS chapter_eric integer DEFAULT 0;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS started_at date;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS finished_at date;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS target_finish_date date;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS reading_schedule jsonb;
