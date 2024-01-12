# University of Maryland Course Rankings Analysis

## Data Sources
For this project, data collection was done manually by examining the following sources:
- US News
- QS Top universities
- EDUniversal ranking

Links to the sources used in this project are provided at the end of the document for reference purposes.

### Objectives
1. **Fetch Top 10 Programs at RH Smith Business School in the Last 5 Years**
2. **Analyze Course Rankings Evolution for a Specific Program Over the Years**
3. **Fetch Programs Instructed by the Smith School Online**
4. **Find Programs Not Ranked by Any Sources**

## Testing Steps
### Step 1: Table Creation
Execute DROP TABLE IF EXISTS statements followed by CREATE TABLE statements for six tables:
- Program_T
- ProgramContact_T
- Source_T
- Ranking_T
- Year_T
- Corresponds_T

After executing the above statements, the skeleton of tables is created.

### Step 2: Data Insertion
Insert values into Program_T and ProgramContact_T tables.
Insert data into Source_T and Ranking_T tables.
Insert data into Year_T and Corresponds_T tables.

### Step 3: Execute SELECT Statements
Use SQL file Project_DML.sql to perform SELECT statements for each objective.

## References
1. [US News](https://www.usnews.com/best-colleges)
2. [QS Top universities](https://www.topuniversities.com/universities/university-maryland-college-park/university-maryland-robert-h-smith-school-business)
3. [EDUniversal ranking](https://www.best-masters.com/ranking-master-accounting-in-north-america.html)
