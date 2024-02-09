SELECT GPA FROM [2023-CS-1]
WHERE GPA>3.5 OR [Registration Number]='2023-CS-2' AND  [Registration Number] = '2023-CS-1'
/* SECOND WAY OF WRITING THE SAME*/
SELECT GPA FROM [2023-CS-1]
WHERE GPA>3.5 AND ([Registration Number] = '2023-CS-2' AND [Registration Number] = '2023-CS-1')
