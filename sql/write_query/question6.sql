-- 以下にクエリを書いてください
SELECT
    followers.id AS user_id,
    concat(followers.first_name, followers.last_name) AS full_name
FROM
    users
    JOIN follows ON users.id =  follows.following_id
    JOIN users AS followers ON follows.follower_id = followers.id
WHERE  
    users.id = 6000
ORDER BY
    full_name;