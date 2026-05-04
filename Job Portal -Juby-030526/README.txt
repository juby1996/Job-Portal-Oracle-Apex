# 💼 Job Portal Management System
> **A Recruitment and Applicant Tracking Platform built with Oracle APEX**

## 📖 Project Overview
The **Job Portal** is a web-based application designed to streamline the hiring process. It allows candidates to search for openings and enables administrators to track applications through a relational database system.

---

## 🚀 Key Features
*   **Interactive Dashboard**: A modern, card-based home screen for easy navigation.
*   **Job Search Engine**: Advanced filtering to find roles by Company, Title, and Salary range.
*   **Applicant Tracking**: A detailed reporting system to monitor candidate progress.
*   **Enhanced UI**: Custom-styled buttons for improved user interaction.

---

## 🛠️ Technical Stack
| Category | Technology |
| :--- | :--- |
| **Platform** | Oracle APEX 24.x |
| **Database** | Oracle SQL & PL/SQL |
| **UI Framework** | APEX Universal Theme |
| **Design** | Custom CSS and Responsive Design |

---

## 📊 Database Schema
The application logic is built on a four-table relational model:

*   **`APPLICANT`**: Stores candidate names, ages, and degrees.
*   **`JOB`**: Contains job titles, salary benchmarks, and locations.
*   **`COMPANY`**: Manages a directory of employers and industry types.
*   **`APPLIES`**: The bridge table tracking application dates and outcomes.

---

## 📸 Application Preview
### **Dashboard View**
![Dashboard](image_a9afff.png)

### **Job Search Interface**
![Job Search](image_b5dbbf.png)


Files for the Apex Job portal application

## 📥  To install this app in your own Apex account:

1.  **upload the jobsearchdata**:First, upload the jobsearchdata.txt file as a script in SQL Workshop - SQL Scripts
2.  **Run the script.** The first 7 drop statements will fail (you don't have the tables in your account) - that is normal.Once the script successfully runs,go to App           Builder,
3.  **Import the file**,click Import,Drag and drop the jobportal.zip file (or click on the + button and select the jobportal.zip file) and go through the prompts to install the app. Selecting all the defaults is fine.
4.  **Run the app** Run the app to make sure everything works.


---

## 🔍 SQL Logic Example
The core **Job Application Report** uses the following logic to connect data across the system:
```sql
SELECT a.NAME, j.JOBTITLE, c.COMPNAME, p.APPDATE, p.OUTCOME
FROM APPLIES p
JOIN APPLICANT a ON p.APPID = a.APPID
JOIN JOB j ON p.JOBID = j.JOBID
JOIN COMPANY c ON j.COMPID = c.COMPID;
