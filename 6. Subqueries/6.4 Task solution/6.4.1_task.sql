SELECT ROUND(COUNT(DISTINCT CONCAT(requester_id, accepter_id)) / (SELECT COUNT(DISTINCT CONCAT(sender_id, send_to_id))
															      FROM FriendRequests), 2) AS accept_rate
FROM RequestsAccepted
