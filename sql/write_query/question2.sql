-- 以下にクエリを書いてください
SELECT
    concat(users.first_name, ' ', users.last_name) AS fullname,
    comments.content AS content,
    comments.commented_at AS commented_at
FROM 
    posts
    JOIN comments ON posts.id = comments.post_id
    JOIN users ON comments.user_id = users.id
WHERE
    posts.id = 12345
ORDER BY
    comments.commented_at DESC;