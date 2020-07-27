SELECT * FROM employees;
/* �������� ������ ���� ����������� � ������ David. */
SELECT * FROM employees WHERE first_name = 'David';

/* �������� ������ ���� �����������, � ������� job_id ����� FI_ACCOUNT */
SELECT * FROM employees WHERE job_id = 'FI_ACCOUNT';

/* �������� ���������� � �����, �������, �/� � ������ ������������ ��� ����������� �� 50�� ������������ � ���������, ������� 4000. */
SELECT first_name, last_name, salary, department_id FROM employees
WHERE department_id = 50 AND salary > 4000;

/* �������� ������ ���� �����������, ������� �������� ��� � 20�, ��� � 30� ������������. */
SELECT * FROM employees WHERE department_id = 20 OR department_id = 30;

/* �������� ������ ���� �����������, � ������� ������ � ��������� ����� � ����� ����� 'a'.
SELECT * FROM employees WHERE first_name like '_a%a';

/* �������� ������ ���� ����������� �� 50�� � �� 80�� ������������, � ������� ���� �����(������������). ������������ ������ �� email
(������������ �������), ��������� ��� ���������� �����. */
SELECT * FROM employees 
WHERE commission_pct IS NOT NULL 
AND department_id = 80 OR department_id = 80
ORDER BY email;

/* �������� ������ ���� �����������, � ������� � ����� ���������� ������� 2 ����� 'n'. */
SELECT * FROM employees WHERE first_name like '%n%n%';

/* �������� ������ ���� �����������, � ������� ����� ����� ������ 4 ����. ������������ ������ �� ������ ������������ (���������
�������) ���, ����� �������� �null� ���� � ����� �����. */
SELECT * FROM employees 
WHERE first_name like '____%'
ORDER BY department_id DESC NULLS LAST;

/* �������� ������ ���� �����������, � ������� �������� ��������� � ���������� �� 3000 �� 7000 (������������), ��� ������
(������������) � job_id ����� ��������� ���������: PU_CLERK, ST_MAN, ST_CLERK. */
SELECT * FROM employees 
WHERE salary 
BETWEEN 3000 AND 7000 
AND commission_pct is null 
AND job_id 
IN ('PU_CLERK', 'ST_MAN', 'ST_CLERK');

/* �������� ������ ���� ����������� � ������� � ����� ���������� ������ '%' */
SELECT * FROM employees WHERE first_name LIKE '%\%%' escape '\';

/* �������� ���������� � job_id, ����� � �/� ��� ����������, �������id ������� ������ ��� ����� 120 � job_id �� ����� IT_PROG.
������������ ������ �� job_id (������������ �������) � ������ (��������� �������). */
SELECT first_name, job_id, salary FROM employees 
WHERE employee_id>=120 
AND job_id NOT LIKE 'IT_PROG'
ORDER BY 2, 1 DESC;