ALTER TABLE metered_billing DROP COLUMN IF EXISTS stripe_meter_event_name;
ALTER TABLE metered_billing DROP COLUMN IF EXISTS stripe_customer_id;
