SELECT u.username
FROM users u
JOIN (
    SELECT to_user_id, COUNT(*) as message_count
    FROM messages
    GROUP BY to_user_id
) m ON u.id = m.to_user_id
ORDER BY m.message_count DESC, u.username ASC
LIMIT 1


