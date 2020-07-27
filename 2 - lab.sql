SELECT * FROM employees;

/* �������� ��� ���������� � ��������. */
SELECT * FROM regions;

/* �������� ���������� � �����, id ������������, �������� � ������� ��� ���� ����������. */
SELECT first_name, department_id, salary, last_name FROM employees;

/* �������� ���������� � id ���������, ����������� ����� � ����, ������� ���� �� ������ �� ��������������� ��� ���� ����������. 
�������, ������� ����� ��������� ���� �������� One week before hire date . */
SELECT employee_id, email, hire_date-7 AS "one week before hire date" FROM  employees;

/* �������� ���������� � ���������� � �� ��������� � �������: Donald(SH_CLERK) . �������� ������� our_employees. */
SELECT first_name || '(' || job_id || ')' our_employees FROM employees;

/*  �������� ������ ���������� ��� ����� ����������. */
SELECT DISTINCT first_name FROM employees;

/* �������� ��������� ���������� �� ������� jobs:
-job_title 
-��������� � �������: �min = 20080, max = 40000�, ��� 20080 � ��� ����������� �/�, � 40000 � ������������. �������� ���� ������� info.
-������������ �/� � �������� ������� max,
-����� �/�, ������� ����� ���������� new_salary � ����������� ���������: max_salary*2-2000. */
SELECT * FROM jobs;
SELECT job_title, 'min = '||min_salary||', max = '|| max_salary as info, max_salary as max, max_salary*2-2000 as new_salary FROM jobs;

/* �������� �� ����� ����������� �Peter's dog is very clever�, ��������� ���� �� ���� ������ ������ � ���������� ���������. */
SELECT  q'<Peter's dog is very clever>' FROM dual;

/* �������� �� ����� ����������� �Peter's dog is very clever�, ���������, �������� �� ����������� �������, ������� ������ � ���������� ��������� */
SELECT 'Peter''s dog is very clever' FROM dual;

/* �������� �� ����� ���������� ����� � ����� ���� (1 ��� = 365.25����). */
SELECT 365.25*100*24*60 FROM dual;