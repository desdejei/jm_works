

-- Request criteria this:
-- people who created account within the past 6months or -was active within this 6months or _applied for jobs within this 6months
-- active on email could be "Email open or clicks"
 -- Active on website could be "those who visited the website within the last 6 months





SELECT 
js.id, ju.id, js.user_id, CONCAT(ju.firstname,' ', ju.lastname) AS Seeker_name,  
ju.email, ju.mobile_number,  js.gender, js.completeness_percentage, js.created_at, ju.last_seen
FROM jobs.job_seekers js
LEFT JOIN jobs.users ju
ON js.user_id= ju.id
WHERE js.domain_id = 6
AND js.completeness_percentage < 100
AND ju.created_at BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date) 
OR ju.last_login_at  BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date)
LIMIT 100







SELECT * FROM jobs.job_seeker_experiences jse  LIMIT 100


SELECT * FROM  jobs.users LIMIT 100


SELECT * FROM  jobs.job_seeker_profile_views  LIMIT 100



SELECT * FROM  jobs.job_seekers 
WHERE domain_id = 6
LIMIT 200


SELECT 
js.id, ju.id, js.user_id, CONCAT(ju.firstname,' ', ju.lastname) AS Seeker_name,  
ju.email, ju.mobile_number,  js.gender, js.completeness_percentage, js.created_at, ju.last_seen
FROM jobs.job_seekers js
LEFT JOIN jobs.users ju
ON js.user_id= ju.id
WHERE js.domain_id = 6
AND js.completeness_percentage < 100
AND ju.created_at BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date) 
OR ju.last_login_at  BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date)











