-- Retirement Titles
select 
        e.emp_no,
        e.first_name,
        e.last_name,
        t.title,
        t.from_date,
        t.to_date
    into retirement_titles
    from employees as e
    inner join titles as t
    on (e.emp_no = t.emp_no)
    where (birth_date between '1952-01-01' and '1955-12-31')
    order by e.emp_no



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
    		rt.emp_no,
            rt.first_name,
            rt.last_name,
            rt.title
    INTO unique_titles
    FROM retirement_titles as rt
    WHERE to_date = '9999-01-01'
    ORDER BY rt.emp_no, rt.to_date DESC;

-- Retiring Titles by Count
select count(ut.emp_no), ut.title
    into retiring_titles
    from unique_titles as ut
    group by ut.title
    order by count desc

-- Mentorship Eligibility
select distinct on (e.emp_no)
		e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
	into mentorship_eligibility
	from employees as e
	inner join dept_employees as de
	on (e.emp_no = de.emp_no)
	inner join titles as t
	on (e.emp_no = t.emp_no)
	where (de.to_date = '9999-01-01') and
		(e.birth_date between '1965-01-01' and '1965-12-31')
	order by e.emp_no



