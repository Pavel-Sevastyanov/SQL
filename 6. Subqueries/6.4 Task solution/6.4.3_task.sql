SELECT DISTINCT followee AS user,
	   (SELECT COUNT(*)
        FROM Follow AS InnerFollow_2
        WHERE followee = Follow.followee) AS followers
FROM Follow
WHERE EXISTS (SELECT *
			  FROM Follow AS InnerFollow_1
              WHERE follower = Follow.followee)
ORDER BY user ASC