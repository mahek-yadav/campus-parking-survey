create table if not exists personal_expenses (
    expense_id integer primary key,
    expense_date date not null,
    category varchar(30) not null,
    amount decimal(10,2) not null
);

insert into personal_expenses (expense_id, expense_date, category, amount) values
(1, '2026-10-03', 'Food', 180.00),
(2, '2026-10-04', 'Transport', 60.00),
(3, '2026-10-05', 'Food', 140.00),
(4, '2026-10-06', 'Stationery', 95.00),
(5, '2026-10-07', 'Transport', 80.00),
(6, '2026-10-08', 'Food', 220.00),
(7, '2026-10-09', 'Entertainment', 150.00);

-- 1. Total amount spent during the week.
select sum(amount) as total_spent
from personal_expenses;

-- 2. Average expense per recorded day/transaction.
select avg(amount) as average_expense
from personal_expenses;

-- 3. Highest and lowest individual expenses.
select max(amount) as highest_expense,
       min(amount) as lowest_expense
from personal_expenses;

-- 4. Total spending by category.
select category, sum(amount) as category_total
from personal_expenses
group by category
order by category_total desc;

-- 5. Categories where total spending is greater than 150.
select category, sum(amount) as category_total
from personal_expenses
group by category
having sum(amount) > 150
order by category_total desc;

-- 6. Transactions over 100: WHERE filters individual rows before aggregation.
select expense_date, category, amount
from personal_expenses
where amount > 100
order by expense_date;
