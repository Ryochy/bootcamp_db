-- 以下にクエリを書いてください
SELECT email FROM users WHERE id IN (SELECT user_id FROM settings WHERE is_send_email = true);
