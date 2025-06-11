create database Healthcare;
use Healthcare;

select * from healthcare_dataset;



-- Total number of male and female
select count(gender) from healthcare_dataset where Gender='male';
select count(gender) from healthcare_dataset where Gender='female';

-- Particular diseases
select * from healthcare_dataset where medical_condition ='cancer';
select count(medical_condition) from healthcare_dataset where medical_condition='cancer';

select * from healthcare_dataset where medical_condition='obesity';
select count(medical_condition) from healthcare_dataset where medical_condition='obesity';

select * from healthcare_dataset where medical_condition='diabetes';
select count(medical_condition) from healthcare_dataset where medical_condition='diabetes';

select * from healthcare_dataset where medical_condition='hypertension';
select count(medical_condition) from healthcare_dataset where medical_condition='hypertension';

select * from healthcare_dataset where medical_condition='asthma';
select count(medical_condition) from healthcare_dataset where medical_condition='asthma';

select * from healthcare_dataset where medical_condition='arthritis';
select count(medical_condition) from healthcare_dataset where medical_condition='arthritis';

-- Total number of hospital
select count(hospital) from healthcare_dataset;

-- Age between 20-40,40-60,>60
select * from healthcare_dataset where age between 20 and 40;
select count(age) from healthcare_dataset where age between 20 and 40;

select * from healthcare_dataset where age between 40 and 60;
select count(age) from healthcare_dataset where age between 20 and 40;

select * from healthcare_dataset where age > 60;
select count(age) from healthcare_dataset where age>60;

-- most number of patients according to hospital
select count(hospital), name from healthcare_dataset group by name having count(hospital > 1);
select max(hospital) as largestnumber from healthcare_dataset; 

-- Blood type by gender(male)
select * from healthcare_dataset where blood_type='A+' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='A+' and gender='male';

select * from healthcare_dataset where blood_type='A-' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='A-' and gender='male';

select * from healthcare_dataset where blood_type='B+' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='B+' and gender='male';

select * from healthcare_dataset where blood_type='B-' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='B-' and gender='male';

select * from healthcare_dataset where blood_type='AB+' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='AB+' and gender='male';

select * from healthcare_dataset where blood_type='AB-' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='AB-' and gender='male';

select * from healthcare_dataset where blood_type='O+' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='O+' and gender='male';

select * from healthcare_dataset where blood_type='O-' and gender='male';
select count(blood_type) from healthcare_dataset where blood_type='O-' and gender='male';

-- Blood group by gender (female)
select * from healthcare_dataset where blood_type='A+' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='A+' and gender='female';

select * from healthcare_dataset where blood_type='A-' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='A-' and gender='female';

select * from healthcare_dataset where blood_type='B+' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='B+' and gender='female';

select * from healthcare_dataset where blood_type='B-' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='B-' and gender='female';

select * from healthcare_dataset where blood_type='AB+' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='AB+' and gender='female';

select * from healthcare_dataset where blood_type='O+' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='O+' and gender='female';

select * from healthcare_dataset where blood_type='O-' and gender='female';
select count(blood_type) from healthcare_dataset where blood_type='O-' and gender='female';

-- Total number of insurance provider
select count(insurance_provider) from healthcare_dataset;

-- most amount of billing 
select max(billing_amount) as maximum_billing from healthcare_dataset;

-- maximum number of insurance provider
select max(insurance_provider) as maximum_number from healthcare_dataset;

-- maximum type of medication used
select max(medication) as medication from healthcare_dataset;

-- test result is abnormal/inconclusive
select * from healthcare_dataset where test_results='abnormal';
select count(test_results) from healthcare_dataset where test_results='abnormal';

select * from healthcare_dataset where test_results='inconclusive';
select count(test_results) from healthcare_dataset where test_results='inconclusive';