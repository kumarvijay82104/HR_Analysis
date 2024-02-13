--Total Employee
select count(distinct "EmpID" ) as total_emp from hr

--Total attrition 
select count("Attrition") from hr
where "Attrition" = 'Yes'

--Total attrition rate
with cte as
			(select count("EmpID" ) as total_emp from hr ),
	 cte2 as 
	 		(select count("EmpID") as attrition_count from hr where "Attrition" = 'Yes')
select round((attrition_count * 1.0 / total_emp)*100,2) from cte,cte2
			
--Average Age 

select floor(avg("Age")) avg_Age_emp from hr

--Average year at Company 
select floor(avg("YearsAtCompany")) as avg_Age_at_comp from hr

--Average salary
select floor(avg("MonthlyIncome")) as Average_salary from hr

---Male and female attrition count 

select count(*)filter (where "Gender"= 'Male') as male_attrition, 
		count(*)filter (where "Gender"= 'Female') as female_attrition
				from hr where "Attrition" = 'Yes'
				
---Attrition count as per Age group 

select "AgeGroup",count(*) as Age_group_attrition from hr
where "Attrition" = 'Yes'
group by "AgeGroup"
order by Age_group_attrition desc

---Attrition count as per Salary Salb

select "SalarySlab",count(*) as SalarySlab_attrition from hr
where "Attrition" = 'Yes'
group by "SalarySlab"
order by SalarySlab_attrition desc

---Attrition count as per JobRole

select "JobRole",count(*) as JobRole_attrition from hr
where "Attrition" = 'Yes'
group by "JobRole"
order by JobRole_attrition desc

---Attrition count as per JobSatisfaction

select "JobSatisfaction",count(*) as JobSatisfaction_attrition from hr
where "Attrition" = 'Yes'
group by "JobSatisfaction"
order by JobSatisfaction_attrition desc

---Attrition count as per Department

select "Department",count(*) as Department_attrition from hr
where "Attrition" = 'Yes'
group by "Department"
order by Department_attrition desc

---Attrition count as per YearsAtCompany

select "YearsAtCompany",count(*) as YearsAtCompany_attrition from hr
where "Attrition" = 'Yes'
group by "YearsAtCompany"
order by YearsAtCompany_attrition desc

