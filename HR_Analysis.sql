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

