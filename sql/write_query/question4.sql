-- 以下にクエリを書いてください
SELECT tags.name AS tag_name
FROM post_tags
JOIN tags ON post_tags.tag_id = tags.id
WHERE post_tags.post_id = 40000
ORDER BY tags.name ASC;
