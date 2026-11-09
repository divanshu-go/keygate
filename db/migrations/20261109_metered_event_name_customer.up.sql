-- Freeze the Stripe meter event name and customer ID at enqueue time so
-- a later entitlement change cannot redirect accepted usage to a
-- different meter or discard it before sync. Old rows keep empty
-- values; the syncer falls back to re-resolving from the current
-- license for those.
ALTER TABLE metered_billing ADD COLUMN IF NOT EXISTS stripe_meter_event_name TEXT NOT NULL DEFAULT '';
ALTER TABLE metered_billing ADD COLUMN IF NOT EXISTS stripe_customer_id TEXT NOT NULL DEFAULT '';
