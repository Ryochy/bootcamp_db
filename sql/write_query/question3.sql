-- 以下にクエリを書いてください
SELECT posts.id AS post_id, COUNT(likes.id) AS likes_count
FROM posts
LEFT JOIN likes ON posts.id = likes.post_id
WHERE posts.user_id = 5000
GROUP BY posts.id
ORDER BY posts.posted_at DESC;