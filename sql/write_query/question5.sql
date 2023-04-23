-- 以下にクエリを書いてください
SELECT t.name AS tag_name, COUNT(pt.post_id) AS posts_count
FROM tags t
JOIN post_tags pt ON t.id = pt.tag_id
GROUP BY t.id
HAVING COUNT(pt.post_id) >= 20
ORDER BY posts_count DESC, t.id ASC;
