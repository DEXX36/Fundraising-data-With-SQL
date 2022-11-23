-- How much is the total donation?
SELECT SUM(donation) AS Total_donation
FROm Donation_Data;


-- What is the total donation by gender?
select gender, SUM(donation) AS Total_Donation 
from Donation_Data
Group by gender;


-- Show the total donation and number of donations by gender
SELEct gender, SUM(donation) AS Total_donation, COunt(donation) AS Donation_by_gender
FROm Donation_Data
GROUP BY gender;


-- Total donation made by frequency of donation
SElect donation_frequency, SUM(donation) as Total_donation
from Donation_Data as dd
Join Donor_Data2 as da 
	on dd.id = da.id
GROUP BY donation_frequency;


-- Total donation and number of donations by Job field
select job_field,
SUM(donation) as Total_Donation_Data,
COUNT (job_field) AS Number_of_job_fields
From Donation_Data
GROUP BY job_field;

-- Total donation and number of donations above $200
select SUM(donation) as Sum_of_donationover_200,
Count(donation) AS Donation_over_200
FROm Donation_Data
where donation >200;



-- Total donation and number of donations below $200
SELECT sum(donation) AS summation_of_donation_below_200,
count(donation) As donation_below_2000
from Donation_Data
where donation < 200;





-- Which top 10 states contribute the Least donations 
select state, sum(donation) AS Total_donation_state
from Donation_Data
GROUP by state
order by Total_donation_state ASC
LIMIT 10;





-- Which top 10 states contribute the least donations
select state, sum(donation) AS Least_donation_state
from Donation_Data
GROUP by state
order by Least_donation_state DESC
limit 10;





--  What are the top 10 cars driven by the highest donors?Donation_Data
SELECT first_name, last_name, car as Car_Driven, donation as Individual_donation
FROM Donation_Data as da
join Donor_Data2 as dd
	on dd.id = da.id
ORDER BY donation DESC
LIMIT 10;


