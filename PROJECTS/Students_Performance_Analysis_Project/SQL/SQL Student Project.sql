use student;
#Loading the dataset
select*from exam_score_prediction;
#Checking the null values
select* from  exam_score_prediction where age is null or gender is null or course is null or study_hours is null or
                                          class_attendance is null or internet_access is null or sleep_hours is null or
                                          sleep_quality is null or study_method is null or facility_rating is null or 
                                          exam_difficulty is null or exam_score is null;
## There is No Null Values
# Analyzing the top scorers, exam difficulty and their course
select course,  count(*) from exam_score_prediction group by course;
select course, exam_score  from exam_score_prediction where exam_score>90 order by exam_score desc;
select course, exam_score, exam_difficulty, count(*) from exam_score_prediction group by course, exam_score, exam_difficulty having exam_score=100;
select course, exam_score, exam_difficulty, count(*) from exam_score_prediction group by course, exam_score, exam_difficulty having exam_score>95 and exam_score<=99;

#Lets Analyze top scorers their age, gender, study_hours, sleep_hours, sleep_quality, study_method
select age, gender, course, exam_difficulty, study_hours, sleep_hours, sleep_quality, study_method from exam_score_prediction where exam_score = 100;
select age, gender, course, exam_difficulty, study_hours, sleep_hours, sleep_quality, study_method, exam_score from exam_score_prediction where exam_score > 95 and exam_score <= 99 order by exam_score desc;

#Lets Analyze Average exam_scorers
select course, exam_score, exam_difficulty, count(*) from exam_score_prediction group by course, exam_score, exam_difficulty having exam_score>50 and exam_score<=75 order by exam_score desc;
select age, gender, course, exam_difficulty, study_hours, sleep_hours, sleep_quality, study_method, exam_score from exam_score_prediction where exam_score > 50 and exam_score <= 75 order by exam_score desc;

#Lets analyze difference between Top Scorers and Average Scorers Class attendance, internet_access, facility_rating
select age, gender, class_attendance, internet_access, facility_rating, exam_difficulty from exam_score_prediction where exam_score = 100;
select age, gender, class_attendance, internet_access, facility_rating, exam_difficulty, exam_score from exam_score_prediction where exam_score > 95 and exam_score <= 99 order by exam_score desc;

#Analyze the poor scorers
select course, exam_score, exam_difficulty, count(*) from exam_score_prediction group by course, exam_score, exam_difficulty having exam_score<50 order by exam_score asc;
select age, gender, course, exam_difficulty, study_hours, sleep_hours, sleep_quality, study_method, exam_score from exam_score_prediction where exam_score < 50 order by exam_score asc;
select age, gender, class_attendance, internet_access, facility_rating, exam_difficulty, exam_score from exam_score_prediction where exam_score < 50 order by exam_score asc;

# Analyze the performance difference between gender of the topscorers, Average Scorers and Poor Scorers
# Topscorers
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty from exam_score_prediction where gender = 'male' and exam_score=100;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty from exam_score_prediction where gender = 'female' and exam_score=100;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty from exam_score_prediction where gender = 'other' and exam_score=100;

select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'male' and exam_score>95 and exam_score<=99 order by exam_score desc;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'female' and exam_score>95 and exam_score<=99 order by exam_score desc;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'other' and exam_score>95 and exam_score<=99 order by exam_score desc;

#Average Scorers
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'male' and exam_score>50 and exam_score<=75 order by exam_score desc;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'female' and exam_score>50 and exam_score<=75 order by exam_score desc;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'other' and exam_score>50 and exam_score<=75 order by exam_score desc;

#Poor Scorers
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'male' and exam_score<50 order by exam_score asc;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'female' and exam_score<50 order by exam_score asc;
select age, gender, course, study_hours, class_attendance, study_method, exam_difficulty, exam_score from exam_score_prediction where gender = 'other' and exam_score<50 order by exam_score asc;

#Analyzing Qualified students and UnQualified students count
select course, exam_score, count(*) from exam_score_prediction group by course, exam_score having exam_score>50 order by exam_score desc;
select course, exam_score, count(*) from exam_score_prediction group by course, exam_score having exam_score<50 order by exam_score asc;






		