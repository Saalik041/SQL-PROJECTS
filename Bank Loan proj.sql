create database bank_loan;

select * from finance_1;
select * from finance_2;

-- Q.1 Year wise loan amount --
select year(issue_d) , sum(loan_amnt) from finance_1 group by year(issue_d);


-- Q.2 Grade and Subgrade Revaluation Balance - -
select grade,sub_grade , sum(revol_bal) as total_rev_bal from finance_1 inner join finance_2 on(finance_1.id=finance_2.id) group by grade , sub_grade order by grade , sub_grade;


-- Q.3 Total payment for Verified and Non Verified Status -- 
 select verification_status , sum(total_paymnt) as total_paymentss from finance_1 inner join finance_2 on(finance_1.id = finance_2.id) group by verification_status;


-- Q.4 State Wise Last credit pull _d Wise Loan Status --
select addr_state , last_credit_pull_d , loan_status from finance_1 inner join finance_2 on(finance_1.id = finance_2.id) group by addr_state,last_credit_pull_d,loan_status order by loan_status;


-- Q.5 Home Ownership Vs Last Payment Date State --
select home_ownership , last_pymnt_d from finance_1 inner join finance_2 on(finance_1.id = finance_2.id) group by home_ownership,last_pymnt_d;





