# Pewlett-Hackard-Analysis

## **Overview**
  Query a set of .csv files to find out who is eligible for retirement, their respective titles and departments. Also, to find out who would be eligible to apply for a mentorship program under these retiring individuals.
  
## **Results**
### *Process and analysis of the data was acheived by:*
  The initial code to get the titles of the retirees was simple, as it was the same data from the "retirement_info" table we made during the Module, but with titles added as an Inner Join. 
  
  ![retirement_titles_code](https://user-images.githubusercontent.com/116855078/208336654-9ee375a7-79e1-467e-8b8a-78b50d78dc46.png)

  
  However, this created duplicates in the 'emp_no' column as some people may have been promoted or moved departments. So, another table was created to filter each employee number by their most recent job title.
  
  Then, a count was created to find out how many people from each department were retiring.
  
  ![retirement_count_code](https://user-images.githubusercontent.com/116855078/208337270-e8eebc2e-2a08-442b-b5af-ef3efa499684.png)

![retiring_titles_count](https://user-images.githubusercontent.com/116855078/208337294-adeca92a-6188-482e-9f1f-8f3213da5f13.png)


 - One thing I couldn't help but notice about this code is that this is only based on retirement eligibility for *age*, and not by *hire date*, which did impact the numbers by quite a bit. This wasn't specified in the code, so I followed instructions, but it could have potentially skewed the data.
  - Also of note: due to their age and seniority within the company, an immense amount of Senior Engineer and Senior Staff are potentially retiring.

Then, we were to create a separate table similar to the first table who was eligible to be enrolled in a Mentorship program under the tutelage of the retierees.

![mentorship_eligibility_code](https://user-images.githubusercontent.com/116855078/208337718-a52e4bb9-3342-4b2e-ac50-699be5447ddb.png)

 - However, this code was also *extremely* strange because it only filtered by who was born in the year 1965. A mere 10 years younger than the retirees. 
  - The pool for this Mentorship program seemed excessively limited in its scope. If it were in my power, I would definitely bring that issue up (and possibly cry *ageism* at the risk of terminating my employement).

### **Conclusion**
#### *Through our analysis, we were able to find:*
  The number of potential retirees, as well as candidates eligible for a mentorship program under those retirees, who seem to be overwhelmingly Senior Engineers and Staff.
  
  I would have very much like to have seen a much wider net cast within the Mentorship program. While not potentially as experienced, mentoring only 10 years your junior seems to be very limited (as well as only the one year of birth date, not even a range of years). I would like to see a query by length of time with the company (seniority) over age, which seems like an unfair parameter to measure by.
  
  If age is deemed a necessary attribute, I would like to see potentially the decade of 1965-1975 birth dates.