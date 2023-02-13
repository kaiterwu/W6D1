=begin 
SELECT
DISTINCT
FROM
JOIN
WHERE
GROUP BY 
HAVING
LIMIT/OFFSET
ORDER 

1.FROM
2.join
3.where
3.group by 
4.having
5.limit/offset
6.order
7.select
8.distinct 
=end 

Enrollments 
belongs_to(
    :course,
    class_name: :Course,
    foreign_key: :course_id,
    primary_key: :id 
)
belongs_to(
    :student,
    class_name: :User,
    foreign_key: :student_id,
    primary_key: :id 
)
Courses 
belongs_to(
    :professor,
    class_name: :User, 
    foreign_key: :professor_id,
    primary_key: :id 
)

belongs_to(
    :prereq, 
    class_name: :Course,
    foreign_key: :prereq_id,
    primary_key: :id,
    optional: true 
)

has_many(
    :enrollments , 
    class_name: :Enrollment,
    foreign_key: :course_id,
    primary_key: :id 
)

User 
has_many(
    :enrollments , 
    class_name: :Enrollment,
    foreign_key: :student_id,
    primary_key: :id 
)

has_many(
    :courses,
    class_name: :Course,
    foreign_key: :professor_id,
    primary_key: :id
)

SELECT 
    yr 
FROM
    nobels

WHERE 
    subject = 'Physics' 
GROUP BY 
    yr 
HAVING 
    COUNT(subject = 'Chemistry') = 0 

