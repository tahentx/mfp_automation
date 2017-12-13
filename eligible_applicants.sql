
-- Seniority? Time in service 
DATEDIFF(MONTH,profiles.service_start, profiles.service_end) <= 180 

-- Active? 
now() > profiles.service_end

-- Existing query
SELECT users.first_name, users.last_name, users.id 
as user_id, profiles.id as profile_id, profiles.slug, users.email 
FROM profiles LEFT JOIN users ON users.id = profiles.user_id 
WHERE stage >= 9 ORDER BY profiles.updated_at DESC