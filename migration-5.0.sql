-- ============================================
-- HOBBITON 5.0 — Migration
-- Run this in your Supabase SQL Editor to add
-- Open Library book metadata columns
-- ============================================

ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS cover_url text;
ALTER TABLE hobbiton_books ADD COLUMN IF NOT EXISTS subjects text;
