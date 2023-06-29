




 
SELECT * FROM roam_jobs_crm.crm_jmgh_full_activities cjfa LIMIT 100

SELECT DISTINCT activity_type  FROM roam_jobs_crm.crm_jmgh_full_activities 
-- Calls
-- Tasks
-- Events



-- Calls
SELECT ac.owner, ac.created_time, ac.activity_type, ac.call_duration,us.email,us.full_name owner_name , call_result  
FROM roam_jobs_crm.crm_jmgh_full_activities ac
LEFT JOIN roam_jobs_crm.crm_jmgh_latest_allusers us
ON ac.owner= us.id
WHERE ac.created_time BETWEEN  '2023-05-01' AND CURRENT_DATE
AND ac.activity_type = 'Calls'
LIMIT 100


-- Meetings


SELECT ac.owner, ac.created_time, ac.activity_type, us.email,us.full_name owner_name  
FROM roam_jobs_crm.crm_jmgh_full_activities ac
LEFT JOIN roam_jobs_crm.crm_jmgh_latest_allusers us
ON ac.owner= us.id
WHERE ac.created_time BETWEEN  '2023-05-01' AND CURRENT_DATE
AND ac.activity_type = 'Events'
LIMIT 100



 -- Total leads interacted with this month
 




SELECT fl.company,  fl.lead_status, fl.owner,us.email,us.full_name owner_name , fl.lead_source, 
fl.created_at, fl.updated_at,  fl.created_time  
FROM roam_jobs_crm.crm_jmgh_full_leads  fl
LEFT JOIN roam_jobs_crm.crm_jmgh_latest_allusers us
ON fl.owner= us.id
WHERE fl.created_time BETWEEN  '2023-05-01' AND CURRENT_DATE
LIMIT 100

 
 

-- Total number of deals closed this month / -- Total revenue
 
SELECT c

SELECT DISTINCT stage  FROM roam_jobs_crm.crm_jmgh_full_deals cjfd   LIMIT 100


SELECT fd.owner,us.full_name owner_name, us.email, 
CAST(fd.amount AS DECIMAL(7,2)) AS Amount, fd.deal_name, fd.lead_source, fd.stage,fd.deal_name1  
FROM roam_jobs_crm.crm_jmgh_full_deals fd
LEFT JOIN roam_jobs_crm.crm_jmgh_latest_allusers us
ON fd.owner= us.id   
WHERE fd.created_time BETWEEN  '2023-05-01' AND CURRENT_DATE
AND stage IN ('Closed Won', 'Closed Lost' , 'Cash Received')
LIMIT 100



SELECT * FROM roam_jobs_crm.crm_jmgh_full_allusers cjfa LIMIT 100




SELECT * FROM roam_jobs_crm.crm_jmgh_full_allusers cjfa LIMIT 100





select
roam_jobs_crm.crm_jmng_full_leads.id entity_id,
roam_jobs_crm.crm_jmng_full_leads.created_time,
roam_jobs_crm.crm_jmng_full_leads.lead_source,
roam_jobs_crm.crm_jmng_full_leads.lead_status,
roam_jobs_crm.crm_jmng_full_leads.industry,
roam_jobs_crm.crm_jmng_full_leads.score,
roam_jobs_crm.crm_jmng_full_leads.tag,
roam_jobs_crm.crm_jmng_full_leads.who_are_you,
users.full_name owner, 
'unconverted' as 'Converted_vs_Unconverted',
'Nigeria' as 'Country'
from roam_jobs_crm.crm_jmng_full_leads
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers users
ON owner=users.profile
where
roam_jobs_crm.crm_jmng_full_leads.created_time >= '2021-01-01'
union all
select
roam_jobs_crm.crm_jmng_full_converted_leads.id entity_id,
roam_jobs_crm.crm_jmng_full_converted_leads.created_time,
roam_jobs_crm.crm_jmng_full_converted_leads.lead_source,
roam_jobs_crm.crm_jmng_full_converted_leads.lead_status,
roam_jobs_crm.crm_jmng_full_converted_leads.industry,
roam_jobs_crm.crm_jmng_full_converted_leads.score,
roam_jobs_crm.crm_jmng_full_converted_leads.tag,
roam_jobs_crm.crm_jmng_full_converted_leads.who_are_you,
users.full_name owner,
'converted' as 'Converted_vs_Unconverted',
'Nigeria' as 'Country'
from roam_jobs_crm.crm_jmng_full_converted_leads
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers users
ON owner=users.profile
where
roam_jobs_crm.crm_jmng_full_converted_leads.created_time >= '2021-01-01'
LIMIT 100




users.full_name owner

LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers users
ON owner=users.id





select * from roam_jobs_crm.crm_jmng_full_converted_leads



SELECT DISTINCT owner 
from roam_jobs_crm.crm_jmng_full_converted_leads

SELECT DISTINCT owner
from roam_jobs_crm.crm_jmng_full_leads



SELECT id, created_by,`role`, profile, full_name
FROM roam_jobs_crm.crm_jmgh_full_allusers cjfa LIMIT 100




select
roam_jobs_crm.crm_jmng_full_converted_leads.id entity_id,
roam_jobs_crm.crm_jmng_full_converted_leads.created_time,
roam_jobs_crm.crm_jmng_full_converted_leads.lead_source,
roam_jobs_crm.crm_jmng_full_converted_leads.lead_status,
roam_jobs_crm.crm_jmng_full_converted_leads.industry,
roam_jobs_crm.crm_jmng_full_converted_leads.score,
roam_jobs_crm.crm_jmng_full_converted_leads.tag,
roam_jobs_crm.crm_jmng_full_converted_leads.who_are_you,
users.full_name owner,
'converted' as 'Converted_vs_Unconverted',
'Nigeria' as 'Country'
from roam_jobs_crm.crm_jmng_full_converted_leads
LEFT JOIN roam_jobs_crm.crm_jmng_full_allusers users
ON owner=users.id
where
roam_jobs_crm.crm_jmng_full_converted_leads.created_time >= '2021-01-01'
LIMIT 100





SELECT * FROM roam_jobs_crm.crm_jmgh_full_leads
 LIMIT 30

 
 
 
 
 
 
 
 
 
SELECT  
	fl.id entity_id,
    fl.created_by created_by_id,
    users.full_name created_by,
    fl.modified_by modified_by_id,
    users.full_name modified_by,
    fl.owner owner_id,
    users.full_name owner,
    fl.amount,
    fl.deal_name,
    fl.closing_date,
    fl.account_name `account_name.id`,
    ' ' `account_name.name`,
    fl.contact_name `contact_name.id`,
    ' ' `contact_name.name`,
    fl.stage,
    fl.type,
    ' ' `recruitment.name`,
    fl.recruitment `recruitment.id`,
    fl.product `product.id`,
    fl.product_name `product.name`,
    fl.lead_source,
    fl.number_of_jobs,
    fl.sales_order `sales_order.id`,
    ' ' `sales_order.name`,
    fl.location,
    fl.upsell_tracker,
    fl.layout,
    fl.created_time,
    fl.tag,
    fl.campaign_name_from_lead_source,
    fl.modified_time,
    fl.lead_conversion_time,
    fl.sales_cycle_duration,
    fl.overall_sales_duration,
    fl.product_value,
    fl.name_of_competitor,
    fl.recommendation,
    fl.nps_score,
    fl.nps_score_reason,
    fl.service_quality,
    fl.lead_identifier,
    fl.why_discontinued_business
FROM roam_jobs_crm.crm_jmgh_full_deals fl
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers users
ON fl.created_by =users.id 
AND fl.modified_by =users.id
AND fl.owner=users.id 
 WHERE fl.closing_date >= '2020-01-01' 
 LIMIT 100
 
 
 
 
 
 
 SELECT 
    fa.id entity_id,
    fa.created_by created_by_id,
    users.full_name created_by,
    fa.created_time,
    fa.modified_by,
    fa.owner owner_id,
    users.full_name owner,
    fa.account_name,
    fa.phone,
    fa.email,
    fa.lead_identifier,
    fa.platform_advertiser_id,
    fa.industry,
    fa.no_of_employee,
    fa.who_are_you,
    fa.tag,
    fa.how_soon_are_you_looking_to_recruit,
    fa.was_this_a_jobseeker_or_a_employer,
    fa.what_is_your_role_in_the_hiring_process,
    fa.frequency,
    fa.recency,
    fa.monetary,
    fa.segment_label
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
JOIN roam_jobs_crm.crm_jmgh_full_deals fd
ON fa.id = fd.account_name
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers users
ON fa.created_by =users.id 
AND fa.owner=users.id 
WHERE fd.closing_date >= '2020-01-01'
LIMIT 100



SELECT *  FROM roam_jobs_crm.crm_jmgh_full_accounts LIMIT 100






 SELECT 
    jobs.listings.id,
    jobs.listings.title,
    jobs.listings.enquiry_count,
    jobs.categories.title,
    jobs.advertisers.title,
    jobs.advertisers.id,
    jobs.advertisers.contact_name,
    jobs.advertisers.address,
    jobs.advertisers.mobile_number,
    jobs.advertisers.notification_email,
    jobs.advertiser_statuses.title adv_status,
    jobs.industries.title industry,
    jobs.products.title product,
    jobs.locations.title location,
    jobs.experience_levels.title experience_level,
    jobs.experience_lengths.title exp_lenght,
    jobs.listing_statuses.title,
    jobs.qualification_levels.title qualification,
    DATE(jobs.listings.created_at),
    jobs.listings.source,
    DATE(jobs.advertisers.created_at) client_created_time
FROM
    jobs.advertisers
LEFT JOIN jobs.listings ON jobs.advertisers.id = jobs.listings.advertiser_id
LEFT JOIN jobs.advertiser_credits ON jobs.advertisers.id = jobs.advertiser_credits.advertiser_id
LEFT JOIN jobs.product_types ON jobs.advertiser_credits.product_type_id = jobs.product_types.id
LEFT JOIN jobs.products ON jobs.product_types.id = jobs.products.product_type_id
LEFT JOIN jobs.category_listing ON jobs.category_listing.listing_id = jobs.listings.id
LEFT JOIN jobs.categories ON jobs.category_listing.category_id = jobs.categories.id
LEFT JOIN jobs.advertiser_statuses ON jobs.advertisers.advertiser_status_id = jobs.advertiser_statuses.id
LEFT JOIN jobs.listing_statuses ON jobs.listings.listing_status_id = jobs.listing_statuses.id
LEFT JOIN jobs.locations ON jobs.listings.location_id = jobs.locations.id
LEFT JOIN jobs.listing_attributes ON jobs.listings.id = jobs.listing_attributes.listing_id
LEFT JOIN jobs.industries ON jobs.listing_attributes.industry_id = jobs.industries.id
LEFT JOIN jobs.experience_levels ON jobs.listing_attributes.experience_level_id = jobs.experience_levels.id
LEFT JOIN jobs.experience_lengths ON jobs.listing_attributes.experience_lengths_id = jobs.experience_lengths.id
LEFT JOIN jobs.qualification_levels ON jobs.listing_attributes.qualification_level_id = jobs.qualification_levels.id
WHERE jobs.listings.domain_id = 6
AND jobs.listings.created_at >= '2021-01-01'
AND jobs.listings.listing_status_id IN (1,5)
GROUP BY 1
LIMIT 20


SELECT fr.id entity_id, fr.* FROM roam_jobs_crm.crm_jmgh_full_recruitment fr
LIMIT 100







SELECT DISTINCT domain_id FROM jobs.job_seekers js LIMIT 100

SELECT * FROM jobs.users ju 
LIMIT 100



SELECT 
js.id, ju.id, js.user_id, CONCAT(ju.firstname,' ', ju.lastname) AS Seeker_name,  
ju.email, ju.mobile_number,  js.gender, js.completeness_percentage, js.created_at, ju.last_seen, js.domain_id
FROM jobs.job_seekers js
LEFT JOIN jobs.users ju
ON js.user_id= ju.id
WHERE -- js.domain_id=6
-- AND 
js.completeness_percentage < 100
AND ju.created_at BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date) 
OR ju.last_login_at  BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date)
HAVING js.domain_id=6
ORDER BY js.domain_id DESC 
LIMIT 500



SELECT 
js.id, ju.id, js.user_id, CONCAT(ju.firstname,' ', ju.lastname) AS Seeker_name,  
ju.email, ju.mobile_number,  js.gender, js.completeness_percentage, js.created_at, ju.last_seen,  js.domain_id
FROM jobs.job_seekers js
LEFT JOIN jobs.users ju
ON js.user_id= ju.id
WHERE js.domain_id = 6
AND js.completeness_percentage < 100
AND ju.created_at BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date) 
OR ju.last_login_at  BETWEEN  DATE(current_date - INTERVAL 6 MONTH) AND date(current_date)
LIMIT 500


SELECT 
fd.account_name account_id, fa.account_name, fd.stage, max(fd.location), fa.billing_street, fa.billing_city, fa.billing_country
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
JOIN roam_jobs_crm.crm_jmgh_full_deals fd
ON fa.id = fd.account_name
WHERE stage IN ( "Closed Won", "Cash Receive")
account_name ike "%Celestial School%"
-- GROUP BY fd.account_name
LIMIT 100



"AIDEC Holdings Ltd"
"Natures Pride (ID:204218)"
""

SELECT * FROM  roam_jobs_crm.crm_jmgh_full_accounts LIMIT 100

SELECT * FROM  roam_jobs_crm.crm_jmgh_full_deals LIMIT 100

