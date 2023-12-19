USE db_course_conversions;

SELECT 
    e.student_id,
    i.date_registered,
    MIN(e.date_watched) AS first_date_watched,
    MIN(p.date_purchased) AS first_date_purchased,
    DATEDIFF(MIN(e.date_watched), i.date_registered) AS days_diff_reg_watch,
    DATEDIFF(MIN(p.date_purchased),
            MIN(e.date_watched)) AS days_diff_watch_purch
FROM
    student_engagement AS e
        JOIN
    student_info AS i ON e.student_id = i.student_id
    
    -- Left join the student_purchases table to get purchase data (if it exists) for each student
        LEFT JOIN
    student_purchases AS p ON e.student_id = p.student_id
GROUP BY 1
HAVING first_date_purchased IS NULL
    OR first_date_watched <= first_date_purchased
ORDER BY student_id;