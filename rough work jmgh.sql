




SELECT * , owner  FROM roam_jobs_crm.crm_jmgh_full_deals cjfd LIMIT 200



SELECT entity_id ,`account_name.name` Account_name, amount, deal_name, closing_date, stage, 
`type`, `contact_name.name` , lead_source , created_by, `product.name` , number_of_jobs, discount, created_by  
FROM roam_jobs_crm.crm_jmgh_full_deals cjfd 
WHERE closing_date BETWEEN '2022-01-01' AND '2023-04-25'
LIMIT 200








SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner,
call_count_month.call_owner_id_month AS calls_current_month,
call_count_previous_month.call_owner_id__previous AS calls_previous_month,
call_count_week.call_owner_id AS call_this_week,
deal_created.deal_owner_id_created AS deal_created_this_week,
won_count.deal_owner_id AS won_deal_this_week,
won_count_monthly.deal_owner_id_monthly AS won_deal_current_month,
won_count_previous_month.deal_owner_id_previous_month AS won_deal_previous_month,
pipeline_count.deal_owner_id_pipeline AS pipeline_last_2months,
won_core_count.deal_core_owner_id AS won_core_count_this_week,
pipeline_count_current.deal_owner_id_pipeline_current AS curent_month_pipeline,
value_proposition_count_current.deal_owner_id_pipeline_current as value_proposition_deals,
invoice_sent_count_current.deal_owner_id_pipeline_current as invoice_sent_deals,
deal_upsell_created.deal_owner_id_upsell_created AS upsell_this_week,
case
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Kezia Marfoa Amoah-Forson' then 18060
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Anastasia Edwin' then 20100
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Alex   Acheampong' then 0
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Jennifer Adu-Gyamfi' then 18060
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Anita Appiah' then 18216
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Sitsofe Kofi Bensah' then 0
when roam_jobs_crm.crm_jmgh_full_deals.owner  =  'Nanah Seidu' then 0
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Ebenezer Lamptey' then 16000
when roam_jobs_crm.crm_jmgh_full_deals.owner  =  'Akua Serwaa Ofori' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Mercy Boateng' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  =  'Franklin Nkrumah' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Akua Wiafewaa Asante' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Joshua Adu-Gyasi'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Bridgette Nyame'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Yayra Yawa Dzakpasu'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Christian Agyemang'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Yoofi Acquah'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Philomena Eshun'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Solomon Tanye' then 000
end as current_target,
case
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Kezia Marfoa Amoah-Forson' then 17000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Anastasia Edwin' then 18000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Alex   Acheampong' then 0
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Jennifer Adu-Gyamfi' then 17000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Anita Appiah' then 17000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Sitsofe Kofi Bensah' then 0
when roam_jobs_crm.crm_jmgh_full_deals.owner  =  'Nanah Seidu' then 0
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Ebenezer Lamptey' then 16000
when roam_jobs_crm.crm_jmgh_full_deals.owner  =  'Akua Serwaa Ofori' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Mercy Boateng' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  =  'Franklin Nkrumah' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Akua Wiafewaa Asante' then 15000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Joshua Adu-Gyasi'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Bridgette Nyame'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Yayra Yawa Dzakpasu'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Christian Agyemang'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Yoofi Acquah'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Philomena Eshun'then 12000
when roam_jobs_crm.crm_jmgh_full_deals.owner  = 'Solomon Tanye' then 18000
end as last_month_target,
ROUND(AVG(current_month.current_value), 0) current_month,
ROUND(AVG(last_month.previous_value), 0) previous_month
FROM  roam_jobs_crm.crm_jmgh_full_deals
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_activities.owner AS call_owner_month,
COUNT(roam_jobs_crm.crm_jmgh_full_activities.entity_id) AS call_owner_id_month
FROM  roam_jobs_crm.crm_jmgh_full_activities
WHERE roam_jobs_crm.crm_jmgh_full_activities.call_duration_in_seconds  >= 20
AND roam_jobs_crm.crm_jmgh_full_activities.created_time  >= DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY)
AND roam_jobs_crm.crm_jmgh_full_activities.created_time  <=  last_day(curdate())
GROUP BY  1
) AS  call_count_month ON call_count_month.call_owner_month  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_activities.owner AS call_owner_previous,
COUNT(roam_jobs_crm.crm_jmgh_full_activities.entity_id) AS call_owner_id__previous
FROM  roam_jobs_crm.crm_jmgh_full_activities
WHERE roam_jobs_crm.crm_jmgh_full_activities.call_duration_in_seconds  >= 20
AND roam_jobs_crm.crm_jmgh_full_activities.created_time  >= DATE_ADD(DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY), INTERVAL - 1 MONTH)
AND roam_jobs_crm.crm_jmgh_full_activities.created_time  <= DATE_ADD(last_day(curdate()), INTERVAL - 1 MONTH)
GROUP BY  1
) AS  call_count_previous_month ON call_count_previous_month.call_owner_previous  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_activities.owner AS call_owner,
COUNT(roam_jobs_crm.crm_jmgh_full_activities.entity_id) AS call_owner_id
FROM  roam_jobs_crm.crm_jmgh_full_activities
WHERE roam_jobs_crm.crm_jmgh_full_activities.call_duration_in_seconds  >= 20
AND roam_jobs_crm.crm_jmgh_full_activities.created_time  >= date_add(curdate(), interval  -WEEKDAY(curdate())-1 day)
AND roam_jobs_crm.crm_jmgh_full_activities.created_time  <= date_add(date_add(curdate(), interval  -WEEKDAY(curdate())-1 day), interval 6 day)
GROUP BY  1
) AS  call_count_week ON call_count_week.call_owner  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage IN ('Closed Won', 'Cash Received')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= date_add(curdate(), interval  -WEEKDAY(curdate())-1 day)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= date_add(date_add(curdate(), interval  -WEEKDAY(curdate())-1 day), interval 6 day)
GROUP BY  1
) AS  won_count ON won_count.deal_owner  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_monthly,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_monthly
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage IN ('Closed Won', 'Cash Received')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= last_day(curdate())
GROUP BY  1
) AS  won_count_monthly ON won_count_monthly.deal_owner_monthly  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_previous_month,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_previous_month
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage IN ('Closed Won', 'Cash Received')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_ADD(DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY), INTERVAL - 1 MONTH)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= DATE_ADD(last_day(curdate()), INTERVAL - 1 MONTH)
GROUP BY  1
) AS  won_count_previous_month ON won_count_previous_month.deal_owner_previous_month  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_core_owner,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_core_owner_id
FROM  roam_jobs_crm.crm_jmgh_full_deals  
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage IN ('Closed Won', 'Cash Received')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= date_add(curdate(), interval  -WEEKDAY(curdate())-1 day)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= date_add(date_add(curdate(), interval  -WEEKDAY(curdate())-1 day), interval 6 day)
AND roam_jobs_crm.crm_jmgh_full_deals.`product.name`  IN ( 'Job Listing'  , 'Best Match'  , 'Pro Recruit'  , 'Job Boost'  , 'Job Listing - Entrepreneur'  , 'Job Listing - Dynamic Business'  , 'Job Listing - Enterprise'  , 'Best Match - Entrepreneur'  , 'Best Match - Dynamic Business'  , 'Best Match - Enterprise'  , 'Pro Recruit - Entrepreneur'  , 'Pro Recruit - Dynamic Business'  , 'Pro Recruit - Enterprise'  , 'Assessment'  , 'Pro Recruit'  )
GROUP BY  1
) AS  won_core_count ON won_core_count.deal_core_owner  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_created,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_created
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.created_time  >= date_add(curdate(), interval  -WEEKDAY(curdate())-1 day)
AND roam_jobs_crm.crm_jmgh_full_deals.created_time  <= date_add(date_add(curdate(), interval  -WEEKDAY(curdate())-1 day), interval 6 day)
GROUP BY  1
) AS  deal_created ON deal_created.deal_owner_created  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_upsell_created,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_upsell_created
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.created_time  >= date_add(curdate(), interval  -WEEKDAY(curdate())-1 day)
AND roam_jobs_crm.crm_jmgh_full_deals.created_time  <= date_add(date_add(curdate(), interval  -WEEKDAY(curdate())-1 day), interval 6 day)
AND roam_jobs_crm.crm_jmgh_full_deals.upsell_tracker  = 'Upsell'
GROUP BY  1
) AS  deal_upsell_created ON deal_upsell_created.deal_owner_upsell_created  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_pipeline,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_pipeline
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage  NOT IN ('Closed Won', 'Cash Received', 'Closed Lost', 'Lost')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_ADD(DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY), INTERVAL - 2 MONTH)
GROUP BY  1
) AS  pipeline_count ON pipeline_count.deal_owner_pipeline  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_pipeline_current,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_pipeline_current
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage  NOT IN ('Closed Won', 'Cash Received', 'Closed Lost', 'Lost')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= last_day(curdate())
GROUP BY  1
) AS  pipeline_count_current ON pipeline_count_current.deal_owner_pipeline_current  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_pipeline_current,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_pipeline_current
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage   IN ('value proposition')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= last_day(curdate())
GROUP BY  1
) AS  value_proposition_count_current ON value_proposition_count_current.deal_owner_pipeline_current  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner_pipeline_current,
COUNT(roam_jobs_crm.crm_jmgh_full_deals.entity_id) AS deal_owner_id_pipeline_current
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage  IN ('invoice sent')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= last_day(curdate())
GROUP BY  1
) AS  invoice_sent_count_current ON invoice_sent_count_current.deal_owner_pipeline_current  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS agent,
SUM(roam_jobs_crm.crm_jmgh_full_deals.amount) AS current_value
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage IN ('Closed Won', 'Cash Received')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= last_day(curdate())
AND DAYOFMONTH(roam_jobs_crm.crm_jmgh_full_deals.closing_date)  <= DAYOFMONTH(CURRENT_DATE())
GROUP BY  1
) AS  current_month ON current_month.agent  = roam_jobs_crm.crm_jmgh_full_deals.owner
LEFT JOIN( SELECT
roam_jobs_crm.crm_jmgh_full_deals.owner AS deal_owner,
SUM(roam_jobs_crm.crm_jmgh_full_deals.amount) AS previous_value
FROM  roam_jobs_crm.crm_jmgh_full_deals
WHERE roam_jobs_crm.crm_jmgh_full_deals.stage IN ('Closed Won', 'Cash Received')
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  >= DATE_ADD(DATE_SUB(curdate(),INTERVAL DAYOFMONTH(curdate()) - 1 DAY), INTERVAL - 1 MONTH)
AND roam_jobs_crm.crm_jmgh_full_deals.closing_date  <= DATE_ADD(last_day(curdate()), INTERVAL - 1 MONTH)
GROUP BY  1
) AS  last_month ON last_month.deal_owner  = roam_jobs_crm.crm_jmgh_full_deals.owner  
GROUP BY 1
LIMIT 200




-- industry	Job function	Job role (cleaned)	Granular job role

SELECT * FROM roam_jobs_crm.crm_jmgh_full_deals 
WHERE `recruitment.name` IS NULL 
LIMIT 50

SELECT * FROM roam_jobs_crm.crm_jmgh_full_accounts cjfa  LIMIT 50


SELECT `account_name.id`, closing_date ,industry, `account_name.name` ,`recruitment.name` Recruitment_role 
FROM roam_jobs_crm.crm_jmgh_full_deals
LEFT JOIN roam_jobs_crm.crm_jmgh_full_accounts
ON `account_name.name`=account_name
WHERE closing_date BETWEEN '2020-01-01' AND '2023-04-25'
AND `recruitment.name` IS NOT NULL 
 LIMIT 100




SELECT * FROM roam_jobs_crm.crm_jmgh_full_deals LIMIT 10

SELECT `product.name` AS product, Sum(amount) AS Gross_revenue, (Sum(amount)*0.1219) AS Net_revenue  , MONTHNAME(closing_date )Revenue_month, closing_date
FROM roam_jobs_crm.crm_jmgh_full_deals  
WHERE stage IN ('Closed Won', 'Cash Received')
AND closing_date BETWEEN '2023-04-01' AND '2023-04-30'
GROUP BY `product.name`


SELECT * FROM (
SELECT `product.name` AS product, Sum(amount) AS Gross_revenue, (Sum(amount)*0.1219) AS Net_revenue  , MONTHNAME(closing_date )Revenue_month, closing_date
FROM roam_jobs_crm.crm_jmgh_full_deals  
WHERE stage IN ('Closed Won', 'Cash Received')
AND closing_date BETWEEN '2023-04-01' AND '2023-04-30'
GROUP BY `product.name`) AS sales
PIVOT (

SUM (Gross_revenue)
FOR product IN ()
)



SELECT * FROM roam_jobs_crm_new.crm_jmgh_full_leads cjfl  LIMIT 10




SELECT 
js.id, ju.id, js.user_id, CONCAT(ju.firstname,' ', ju.lastname) AS Seeker_name,  
ju.email, ju.mobile_number,  js.gender, js.completeness_percentage 
FROM jobs.job_seekers js
LEFT JOIN jobs.users ju
ON js.user_id= ju.id
WHERE js.domain_id = 6


SELECT * FROM jobs.job_seekers js LIMIT 100


SELECT * FROM jobs.users ju LIMIT 100



SELECT company, industry , lead_source, email , owner , first_name , last_name, 
employees , lead_status , campaign_name_from_channel 
FROM roam_jobs_crm.crm_jmgh_full_leads cjfl 
WHERE created_time BETWEEN '2019-01-01' AND '2023-03-01' 
AND company NOT IN 
(SELECT DISTINCT company FROM roam_jobs_crm.crm_jmgh_full_leads
WHERE created_time BETWEEN  '2022-03-02' AND '2023-05-04' )
LIMIT 20


SELECT * FROM roam_jobs_crm.crm_jmgh_full_accounts cjfa  LIMIT 200

-- Lead_status-- Not Contacted



SELECT fa.account_name, fa.industry , fl.lead_status , fa.email , fl.first_name , fl.last_name, fa.no_of_employee ,  fa. phone 
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
LEFT JOIN roam_jobs_crm.crm_jmgh_full_leads fl
ON fa.account_name=fl.company 
WHERE fa.account_name NOT IN ('Jobseeker','jobseeker')
LIMIT 200


SELECT company, industry , lead_source, email , owner , first_name , last_name, 
employees , lead_status , campaign_name_from_channel 
FROM roam_jobs_crm.crm_jmgh_full_leads cjfl 
WHERE created_time BETWEEN '2018-01-01' AND '2023-05-01' 



SELECT DISTINCT lead_source FROM roam_jobs_crm_new.crm_jmgh_full_leads 



SELECT *  FROM roam_jobs_crm.crm_jmgh_full_leads 
LIMIT 200


SELECT  owner, deal_owner  FROM roam_jobs_crm.crm_jmgh_latest_deals cjld  
LIMIT 200

SELECT * FROM roam_jobs_crm.crm_jmgh_full_allusers cjfa  
LIMIT 200

2900205000107701080	Joshua Adu-Gyasi
2900205000177683001	Hilda Nimo-Tieku
2900205000058135102	Jennifer Adu-Gyamfi
2900205000098367086	Franklin Nkrumah



SELECT fa.account_name, fa.industry , fl.lead_status , fa.email , 
		fl.first_name , fl.last_name, fa.no_of_employee ,  fa. phone, 
		CASE WHEN (fa.industry LIKE '%%Education%%' 
				 OR fa.industry LIKE'%%Entertainment%%' OR fa.industry LIKE '%%Events%%' OR fa.industry LIKE '%%Sport%%'
				 OR fa.industry LIKE'%%Shipping%%' OR fa.industry LIKE '%%Logistics%%'
				 OR fa.industry LIKE'Banking' OR fa.industry LIKE 'Finance' OR fa.industry LIKE 'Insurance' 
				 OR fa.industry LIKE'%%NGO%%' OR fa.industry LIKE '%%NPO%%' OR fa.industry LIKE '%%Charity%%'
				 OR fa.industry LIKE'%%Agriculture%%' OR fa.industry LIKE '%%Fishing%%' OR fa.industry LIKE '%%Forestry%%'
				) THEN 'Jennifer Adu-Gyamfi'
			WHEN (
				fa.industry LIKE '%%Retail%%' OR fa.industry LIKE '%%Fashion%%' OR fa.industry LIKE '%%FMCG%%'
				 OR fa.industry LIKE '%%Real Estate%%'  OR fa.industry LIKE '%%Government%%'
				 OR fa.industry LIKE '%%Hotel%%'  OR fa.industry LIKE '%%Hospitality%%' OR fa.industry LIKE '%%Recruitment%%'
				 OR fa.industry LIKE '%%Advertising%%' OR fa.industry LIKE '%%Media%%'  OR fa.industry LIKE '%%Communications%%'
				 OR fa.industry LIKE '%%Automotive%%'  OR fa.industry LIKE '%%Aviation%%'
				) THEN 'Joshua Adu-Gyasi'
			WHEN ( fa.industry LIKE '%%Construction%%' OR fa.industry LIKE '%%Healthcare%%'  OR fa.industry LIKE '%%health%%'
				 OR fa.industry LIKE '%%Tourism%%'  OR fa.industry LIKE '%%Travel%%' OR fa.industry LIKE '%%Energy  & Utilit%%'
				 OR fa.industry LIKE '%%Enforcement%%'  OR fa.industry LIKE '%%SECURITY%%'
				 ) THEN 'Franklin'
			WHEN (
				 fa.industry LIKE '%%Manufacturing%%'  OR fa.industry LIKE '%%Warehous%%' 
				 OR fa.industry LIKE '%%IT%%'  OR fa.industry LIKE '%%Telecom%%'
				 OR fa.industry LIKE '%%Mining%%'  OR fa.industry LIKE '%%Energy & Metal%%'
				 OR fa.industry LIKE '%%Law%%'  OR fa.industry LIKE '%%Compliance%%'
				) THEN 'Anas'
			ELSE ' ' END AS Deal_owner
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
LEFT JOIN roam_jobs_crm.crm_jmgh_full_leads fl
ON fa.account_name=fl.company 
WHERE fa.account_name NOT IN ('Jobseeker','jobseeker')



SELECT fa.account_name, fa.industry , fl.lead_status , fa.email , fl.first_name , fl.last_name, fa.no_of_employee ,  fa. phone, 
		CASE WHEN (fa.industry LIKE '%%Education%%' 
			 OR fa.industry LIKE'%%Entertainment%%' OR fa.industry LIKE '%%Events%%' OR fa.industry LIKE '%%Sport%%'
			 OR fa.industry LIKE'%%Shipping%%' OR fa.industry LIKE '%%Logistics%%'
			 OR fa.industry LIKE'Banking' OR fa.industry LIKE 'Finance' OR fa.industry LIKE 'Insurance' 
			 OR fa.industry LIKE'%%NGO%%' OR fa.industry LIKE '%%NPO%%' OR fa.industry LIKE '%%Charity%%'
			OR fa.industry LIKE'%%Agriculture%%' OR fa.industry LIKE '%%Fishing%%' OR fa.industry LIKE '%%Forestry%%'
			) THEN 'Jennifer Adu-Gyamfi'
			ELSE ' ' END AS Deal_owner	
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
LEFT JOIN roam_jobs_crm.crm_jmgh_full_leads fl
ON fa.account_name=fl.company 
WHERE fa.account_name NOT IN ('Jobseeker','jobseeker')
LIMIT 300



SELECT *  FROM roam_jobs_crm.crm_jmng_full_allusers
LIMIT 100





SELECT *  FROM roam_jobs_crm.crm_jmgh_full_deals
_-- WHERE deal_name1 like '%%CV Re-write%%'
LIMIT 200


SELECT deal_name, deal_name1, product_name,
CASE WHEN deal_name1 like '%%Job List%%' THEN 'Job Listing'
	 WHEN deal_name1 like '%%Job Bo%%' THEN 'Job Boost'
	 WHEN deal_name1 like '%%Pro Rec%%' THEN 'Pro Recruit'
	 WHEN deal_name1 like '%%Silver Li%%' THEN 'Silver Listing'
	 WHEN deal_name1 like '%%Best Ma%%' THEN 'Best Match'
	 WHEN deal_name1 like '%%Standard %%' THEN 'Standard Listing'
	 WHEN deal_name1 like '%%Basic %%' THEN 'Basic Listing'
	 WHEN deal_name1 like '%%Banner %%' THEN 'Banner Ads'
	 WHEN deal_name1 like '%%Executive %%' THEN 'Executive Recruitment'
	 WHEN deal_name1 like '%%News%%' THEN 'Newsletter Banner'
	 WHEN deal_name1 like '%%Blue %%' THEN 'Blue Recruit'
	 WHEN deal_name1 like '%%Outsorc%%' THEN 'Outsourcing'
	 WHEN deal_name1 like '%%CV Re-write (Sil %%' THEN 'CV Re-write (Silver)'
	 WHEN deal_name1 like '%%CV Re-write (Br %%' THEN 'CV Re-write (Bronze)'
	 WHEN deal_name1 like '%%CV Re-write (Gol %%' THEN 'CV Re-write (Gold)'
	 ELSE product_name END AS new_category
FROM roam_jobs_crm.crm_jmgh_full_deals  
LIMIT 300
	 
SELECT 

SELECT id,deal_name1, product_name, amount, 'GH' country , YEAR (closing_date) , MONTH(closing_date)
FROM roam_jobs_crm.crm_jmgh_full_deals  
WHERE closing_date BETWEEN '2022-08-1' AND '2023-12-31'
AND deal_name1 LIKE '%%Pro Rec%%' OR product_name LIKE '%%Pro Rec%%'
AND stage LIKE '%%Won%%'
UNION 
SELECT id,deal_name1, product_name, amount, 'BMKE' country , YEAR (closing_date) , MONTH(closing_date)
FROM roam_jobs_crm.crm_bmke_full_deals  
WHERE closing_date BETWEEN '2022-08-1' AND '2023-12-31'
AND deal_name1 LIKE '%%Pro Rec%%' OR product_name LIKE '%%Pro Rec%%'
AND stage LIKE '%%Won%%'
LIMIT 300




SELECT id,deal_name, product_name, amount, 'GH' country , YEAR (closing_date) , MONTH(closing_date)
FROM roam_jobs_crm.crm_jmng_full_deals  
WHERE closing_date BETWEEN '2022-08-1' AND '2023-12-31'
AND deal_name LIKE '%%Pro Rec%%' OR product_name LIKE '%%Pro Rec%%'
LIMIT 300


	 
SELECT * FROM roam_jobs_crm.crm_jmng_full_deals LIMIT 100
	 

SELECT * FROM roam_jobs_crm.crm_jmgh_full_deals  LIMIT 300

SELECT id,deal_name, product_name, amount, 'BMKE' country , YEAR (closing_date) , MONTH(closing_date)
FROM roam_jobs_crm.crm_bmug_full_deals  
WHERE closing_date BETWEEN '2022-08-1' AND '2023-12-31'
AND deal_name LIKE '%%Pro Rec%%' OR product_name LIKE '%%Pro Rec%%'
AND stage LIKE '%%Won%%'
LIMIT 300


SELECT * FROM roam_jobs_crm.crm_bmug_full_deals LIMIT 300 


SELECT * FROM roam_jobs_crm.crm_jmgh_full_products LIMIT 100

id product_name







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
    CASE WHEN pd.product_name like '%%Job List%%' THEN 'Job Listing'
	 WHEN pd.product_name like '%%Job Bo%%' THEN 'Job Boost'
	 WHEN pd.product_name like '%%Pro Rec%%' THEN 'Pro Recruit'
	 WHEN pd.product_name like '%%Silver Li%%' THEN 'Silver Listing'
	 WHEN pd.product_name like '%%Best Ma%%' THEN 'Best Match'
	 WHEN pd.product_name like '%%Standard %%' THEN 'Standard Listing'
	 WHEN pd.product_name like '%%Basic %%' THEN 'Basic Listing'
	 WHEN pd.product_name like '%%Banner %%' THEN 'Banner Ads'
	 WHEN pd.product_name like '%%Executive %%' THEN 'Executive Recruitment'
	 WHEN pd.product_name like '%%News%%' THEN 'Newsletter Banner'
	 WHEN pd.product_name like '%%Blue %%' THEN 'Blue Recruit'
	 WHEN pd.product_name like '%%Outsorc%%' THEN 'Outsourcing'
	 WHEN pd.product_name like '%%CV Re-write (Sil %%' THEN 'CV Re-write (Silver)'
	 WHEN pd.product_name like '%%CV Re-write (Br %%' THEN 'CV Re-write (Bronze)'
	 WHEN pd.product_name like '%%CV Re-write (Gol %%' THEN 'CV Re-write (Gold)'
	 ELSE pd.product_name END AS `product.name`,
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
ON fl.owner=users.id 
LEFT JOIN roam_jobs_crm.crm_jmgh_full_products pd 
ON fl.product=pd.id 
WHERE fl.closing_date >= '2020-01-01' 
LIMIT 300



SELECT 
[FullName]
        ,LEFT([FullName], CHARINDEX(',', [FullName]) - 1) AS [Surname]


SELECT * FROM roam_jobs_crm.crm_jmgh_full_accounts
LIMIT 300


SELECT account_name,LEFT(account_name, CHARINDEX('(', account_name) - 1) AS account_name_updated 
FROM roam_jobs_crm.crm_jmgh_full_accounts
LIMIT 300



-- Remove everything FROM START OF parenthesis to END 
select account_name, 
	case when locate('(', account_name) = 0 
	            then account_name
	            else left(account_name, locate('(', account_name) - 1)
	       end as account_name_updated      
FROM roam_jobs_crm.crm_jmgh_full_accounts
LIMIT 300







WITH A AS(
SELECT `crm_jmgh_full_deals`.id `entity_id`, `crm_jmgh_full_deals`.`account_name.id`, `account_name.name`,industry, 
 deal_name, `crm_jmgh_full_deals`.`owner`, amount, `product.name`, stage, MAX(closing_date) AS last_purchase_date
FROM roam_jobs_crm.crm_jmgh_full_deals
JOIN roam_jobs_crm.crm_jmgh_full_accounts
ON `crm_jmgh_full_deals`.`account_name.id` = `crm_jmgh_full_accounts`.`entity_id`
WHERE stage IN ("Closed Won", "Cash Received")
AND YEAR(closing_date) >= '2020'
GROUP BY `crm_jmgh_full_deals`.`account_name.id`
) 
SELECT *
  ,CASE WHEN DATEDIFF(CURRENT_DATE,last_purchase_date) >= 365 THEN 'Churn'
	WHEN DATEDIFF(CURRENT_DATE,last_purchase_date) >= 275 THEN 'Lapsed'
	ELSE 'Active'
	END AS Status
 FROM A
LIMIT 20

WITH A AS(
SELECT
fd.id entity_id, 
fd.account_name `account_name.id`, 
fa.account_name `account_name.name`,
fa.industry, 
fd.deal_name,
fu.full_name owner,
fd.amount,
fp.product_name `product.name`,
fd.stage,
MAX(fd.closing_date) AS last_purchase_date 
FROM roam_jobs_crm.crm_jmgh_full_deals fd
LEFT JOIN roam_jobs_crm.crm_jmgh_full_accounts fa
ON fd.account_name = fa.id
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers fu
on fd.owner = fu.id
LEFT JOIN roam_jobs_crm.crm_jmgh_full_products fp
ON fd.product = fp.id
WHERE stage IN ("Closed Won", "Cash Received")
AND YEAR(closing_date) >= '2020'
GROUP BY fd.account_name
) 
SELECT *
  ,CASE WHEN DATEDIFF(CURRENT_DATE,last_purchase_date) >= 365 THEN 'Churn'
	WHEN DATEDIFF(CURRENT_DATE,last_purchase_date) >= 275 THEN 'Lapsed'
	ELSE 'Active'
	END AS Status
 FROM A
LIMIT 30

 SELECT * FROM roam_jobs_crm.crm_jmgh_full_deals LIMIT 20

SELECT * FROM roam_jobs_crm.crm_jmgh_full_products cjfp  LIMIT 20


SELECT
fd.id entity_id, 
fd.account_name `account_name.id`, 
fa.account_name `account_name.name`,
fa.industry, 
fd.deal_name,
fu.full_name owner,
CAST(fd.amount as DECIMAL(10,2)) revenue,
fp.product_name `product.name`,
fd.stage,
MAX(fd.closing_date) AS last_purchase_date , 
MONTHNAME(fd.closing_date) purchase_month
FROM roam_jobs_crm.crm_jmgh_full_deals fd
LEFT JOIN roam_jobs_crm.crm_jmgh_full_accounts fa
ON fd.account_name = fa.id
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers fu
on fd.owner = fu.id
LEFT JOIN roam_jobs_crm.crm_jmgh_full_products fp
ON fd.product = fp.id
WHERE stage IN ("Closed Won", "Cash Received")
AND YEAR(closing_date) >= '2023'
GROUP BY fd.account_name
LIMIT 100





SELECT DISTINCT (account_name) FROM roam_jobs_crm.crm_jmgh_full_deals
WHERE stage IN ("Closed Won", "Cash Received", "Cash Received", "Closed Won")

SELECT DISTINCT (stage) FROM roam_jobs_crm.crm_jmgh_full_deals


SELECT * FROM roam_jobs_crm.crm_jmgh_full_deals LIMIT 20


SELECT created_by, owner, deal_name FROM roam_jobs_crm.crm_jmgh_full_deals LIMIT 200









SELECT fa.call_start_time, fa.created_at,fa.created_time, owner owner_id, fu.full_name owner, se_module, call_duration_in_seconds, 
	call_result, call_status, call_type,  activity_type 
FROM roam_jobs_crm.crm_jmgh_full_activities fa
LEFT JOIN roam_jobs_crm.crm_jmgh_full_allusers fu
ON  fa.owner = fu.id
WHERE fu.full_name LIKE '%Henry%'
LIMIT 200


SELECT * FROM roam_jobs_crm.crm_jmgh_full_activities fa LIMIT 100



select
date(jobs.job_seekers.created_at),
count(jobs.job_seekers.id) as 'Job Seekers',
jobs.domains.id as 'Country_ID',
jobs.domains.title as 'Country',
'Jobseeker SignUps' as 'OKR'
from
jobs.job_seekers
join jobs.domains on jobs.job_seekers.domain_id = jobs.domains.id
where
jobs.job_seekers.created_at >= '2023-01-01'
group by 1,3,4
-- LIMIT 20




SELECT
d.id,
d.lead_source,
d.stage,
d.created_time,
d.closing_date,
'Standard Listing' as 'product_name',
'Ghana' as 'Country', deal_name1
from roam_jobs_crm.crm_jmgh_full_deals d
where d.created_time >= '2023-01-01' and product = 2900205000102450044
ORDER BY created_time DESC 



SELECT * from roam_jobs_crm.crm_jmgh_full_deals LIMIT 100



SELECT * FROM roam_jobs_crm.crm_jmgh_full_accounts LIMIT 100

SELECT fa.account_name, fa.industry, fa.last_posted_job, fa.email, fa.phone , 
	fc.email fc_email, fc.account_name fc_account_id, fc.full_name fc_full_name, 
	fc.first_name fc_first_name, fc.last_name fc_last_name, fc.`position`
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
LEFT JOIN roam_jobs_crm.crm_jmgh_full_contacts fc
ON fa.id=fc.account_name 
LIMIT 300


SELECT * FROM roam_jobs_crm.crm_jmgh_full_contacts  LIMIT 100
fc.email, fc.account_name, fc.full_name, fc.first_name, fc.last_name, fc.`position`


SELECT * FROM roam_jobs_crm.crm_jmgh_full_allusers  LIMIT 100



WHEN m.producttype::text = 'Communication'::character varying::text AND
                                m.product_name::text ~~* '%Alcatel%'::character varying::text
                               THEN 'Comms Standard'::character varying



SELECT * FROM (
SELECT fa.account_name, fa.industry, fa.last_posted_job, fa.email, fa.phone , 
	 fc.account_name account_id, fc.full_name , fc.first_name, fc.last_name, fc.`position`
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
	LEFT JOIN roam_jobs_crm.crm_jmgh_full_contacts fc
	ON fa.id=fc.account_name 
WHERE fa.email like '%hr%'
	OR fa.email like '%human%'
	OR fc.full_name like '%hr%'
	OR fc.full_name like '%human%'
	OR fc.`position`like '%hr%'
	OR fc.`position`like '%human%'
	) main
WHERE  main.account_name NOT LIKE '%Job Seeker'
	AND main.account_name <> 'Job Seeker'

LIMIT 300






SELECT fa.account_name, fa.industry, fa.last_posted_job, fa.email, fa.phone , 
	 fc.account_name account_id, fc.full_name , fc.first_name, fc.last_name, fc.`position`
FROM roam_jobs_crm.crm_jmgh_full_accounts fa
	LEFT JOIN roam_jobs_crm.crm_jmgh_full_contacts fc
	ON fa.id=fc.account_name 
WHERE fa.email collate latin1_swedish_ci = "%hr%"
OR fa.email collate latin1_swedish_ci = "%human%"
LIMIT 20



no_of_employee

