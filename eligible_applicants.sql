
-- Seniority? Time in service 
DATEDIFF(MONTH,profiles.service_start, profiles.service_end) <= 180 

-- Active? 
now() > profiles.service_end

