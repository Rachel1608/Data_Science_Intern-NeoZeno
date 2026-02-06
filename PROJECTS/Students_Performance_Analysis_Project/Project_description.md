# Student Performance based Analysis
## SQL 
This project focuses on analyzing student academic performance using SQL.
The dataset contains demographic, academic, and lifestyle attributes of students, and the goal is to understand factors influencing exam scores by comparing:
- Top scorers
- Average scorers
- Poor scorers
- Gender-wise performance patterns
- The analysis is performed entirely using SQL queries on a relational database.
- Performed SQL-based exploratory data analysis on student performance data, identifying key academic, behavioral, and lifestyle factors influencing exam outcomes.
### Key Insights:
- **Consistent study habits drive high performance**
Students scoring above 95 typically maintain higher study hours and structured study methods.

- **Class attendance is a strong differentiator**
Top scorers show significantly better class attendance compared to average and poor scorers.

- **Sleep quality matters more than sleep duration**
High-performing students tend to report better sleep quality, even when sleep hours are similar.

- **Access to learning resources improves outcomes**
Reliable internet access and higher facility ratings are more common among top-performing students.

- **Effective study methods correlate with higher scores**
Students using organized or active study techniques outperform those using unstructured methods.

- **Exam difficulty impacts performance distribution**
High scores are more frequently observed in moderate difficulty exams, while poor scorers cluster in higher difficulty levels.

- **Gender-wise performance shows balanced trends**
Both male and female students appear consistently across all performance bands, indicating no extreme bias in outcomes.

- **Poor performance is linked to multiple risk factors**
Low study hours, irregular attendance, poor sleep quality, and limited facilities often appear together among low scorers.

- **Clear qualification threshold identified**
Students scoring above 50 demonstrate markedly better academic and behavioral indicators than unqualified students.

## Rule Based Approach using Python
This method is to classify student exam performance into meaningful categories using a simple, transparent, rule-based approach.
Instead of using a machine learning model, the logic relies on domain-defined score thresholds and course information to label students as:
- Top Scorer
- Average Scorer
- Poor Scorer

### Why a Rule-Based Approach Is Used
- Acts as a baseline prediction model
- Ensures interpretability (easy to explain to non-technical stakeholders)
- Helps validate performance thresholds before applying ML models
- Enables quick performance categorization without training data

- This approach is especially useful in early-stage analysis and educational analytics, where clarity and fairness are important.

### What the Code Does Conceptually
- Reads each student’s course and exam score
- Applies consistent score thresholds across all courses
- Assigns a course-specific performance label
- Produces standardized outputs such as:
    - BCA Top Scorer
    - B.Tech Average Scorer
    - B.Sc Poor Scorer

### Business / Academic Value
- Helps institutions identify high-performing students
- Flags at-risk students for early academic intervention
- Enables course-wise performance comparison
- Supports decision-making without complex models


## Visual Insights from R-Based Analysis
* **1) Class Attendance vs Exam Score (Line Plot)**
  ![My Image](R_Plots/class_attendance_vs_exam_score.png)

  **Insight:**
      - Students with higher class attendance consistently achieve higher exam scores, indicating that regular participation plays a critical role in academic success.
      - Reinforces attendance as a strong, actionable performance indicator for educators.

* **2) Age vs Sleep Hours (Scatter Plot)**
  ![My Image](R_Plots/age_vs_sleep_hours.png)

  **Insight:**
      - Sleep hours vary across age groups, with younger students generally maintaining slightly longer sleep durations than older students.
      - Lifestyle differences by age may indirectly influence concentration and learning efficiency.

* **3️) Exam Score Distribution (Histogram)**
  ![My Image](R_Plots/frequency_of_exam_score.png)


  **Insight:**
      - Most exam scores are concentrated in the mid-to-high range, with fewer students at the extreme low and high ends.
      - Suggests a balanced evaluation system with limited outliers, suitable for predictive modeling.

* **4️) Sleep Hours vs Study Hours (Bar Plot)**
  ![My Image](R_Plots/sleep_hours_vs_study_hours.png)


  **Insight:**
      - Students who maintain a healthier balance between sleep and study hours tend to avoid extremely low or high values in either category.
      - Highlights the importance of balance rather than excessive studying at the cost of rest.

* **5️) Exam Score by Course (Boxplot)**
  ![My Image](R_Plots/course_vs_exam_score.png)


  **Insight:**
      - Certain courses show higher median exam scores and lower variability, while others display wider score distributions.
      - Indicates that course structure and assessment difficulty may influence performance consistency.

* **6️) Study Hours by Study Method (Boxplot)**
  ![My Image](R_Plots/study_hours_vs_study_method.png)


  **Insight:**
      - Organized and structured study methods are associated with higher and more consistent study hours compared to unstructured approaches.
      - Supports promoting effective study strategies for improved outcomes.

### ggplot2 Visual Insights
* **7️) Study Hours by Gender (Bar Plot)**
  ![My Image](R_Plots/gender_vs_study_hours.png)


  **Insight:**
      - Study hours are relatively balanced across genders, with no extreme disparities observed.
      - Suggests fairness in academic effort distribution among students.

* **8️) Facility Rating vs Sleep Hours (Column Plot)**
  ![My Image](R_Plots/facility_rating_vs_sleep_hours.png)


  **Insight:**
      - Students with better facility ratings tend to report improved sleep hours, indicating a possible link between infrastructure quality and student well-being.
      - Highlights the indirect impact of institutional facilities on academic performance.

* **9️) Study Hours vs Exam Score (Jitter Plot)**
  ![My Image](R_Plots/study_hours_vs_exam_score.png)


  **Insight:**
      - A positive relationship exists between study hours and exam scores, although diminishing returns appear at very high study durations.
      - Emphasizes efficient studying over excessive studying.

* **10) Age vs Study Hours (Regression Plot)**
  ![My Image](R_Plots/age_vs_study_hours.png)


  **Insight:**
      - The regression trend shows how study habits evolve with age, with certain age groups dedicating more time to studying.
      - Helps tailor academic support strategies by age group.

* **11) Exam Difficulty Distribution (Bar Plot)**
  ![My Image](R_Plots/count_exam_difficulty.png)


  **Insight:**
      - Most exams fall into moderate difficulty levels, with fewer extremely easy or hard exams.
      - Provides context for interpreting performance results across difficulty levels.

##  Conclusion:
This project presents an end-to-end analysis of student exam performance using SQL, Python, and R.
It explores academic, demographic, and lifestyle factors influencing exam scores and converts raw data into actionable insights.

- **SQL** was used for data validation and exploratory analysis to uncover performance patterns across courses, genders, and exam difficulty levels.

- **Python** implemented a transparent rule-based classification system to categorize students as Top, Average, or Poor performers, serving as an interpretable baseline model.

- **R** was used for data visualization to visually validate insights related to study habits, attendance, sleep quality, and institutional factors.

- The analysis shows that consistent study habits, high attendance, balanced sleep, and supportive facilities are key drivers of academic success.
- This project demonstrates strong analytical thinking, multi-tool proficiency, and forms a solid foundation for future machine learning-based prediction.
