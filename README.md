# Student Attendance System using Face Recognition

This project is a face recognition-based student attendance system. It uses a pre-trained model to identify students and marks their attendance in a MySQL database. The system is simple, efficient, and designed to be user-friendly.

**Features**

- Recognizes faces in real-time using a webcam.
- Marks attendance with a confidence score above 95%.
- Ensures attendance is recorded only once per person per day.
- Stores attendance data in a MySQL database.
- Prevents "unknown" faces from being marked.

  <img width="300" alt="image" src="https://github.com/user-attachments/assets/1de5e58b-c340-491e-858a-f98469c38b2f" />
  

  <img width="270" alt="image" src="https://github.com/user-attachments/assets/6c154fb0-5c36-477f-a8f0-84e14604ff92" />

**Technologies Used**

- Python-3.9 version
- OpenCV
- TensorFlow/Keras
- MySQL- MySQL Workbench 8.0.40 CE
- Google Teachable Machine for model training

**Prerequisites**

Before you begin, ensure you have the following:
- A computer with Python 3.7 or higher installed.
- MySQL installed and configured.
- A webcam.
- Basic knowledge of Python and database systems (optional but helpful).

**Step-by-Step Installation and Setup**

### Step 1: Clone the Repository

1. Open your terminal or command prompt.
2. Run the command:
 
git clone https://github.com/your-username/employee-attendance-system.git

3. Navigate to the project directory:

cd employee-attendance-system


### Step 2: Install Dependencies
1. Ensure `pip` is installed. If not, follow [this guide](https://pip.pypa.io/en/stable/installation/).
2. Run the following command to install required libraries:

pip install -r requirements.txt

**Step 3: Train Your Model on Google Teachable Machine**

1. Open [Google Teachable Machine](https://teachablemachine.withgoogle.com/).

  ![Screenshot (20)](https://github.com/user-attachments/assets/588a1d13-0c90-4716-824c-f6d110561620)

2. Click on **Get Started** > **Image Project** > **Standard Image Model**.

   ![Screenshot (21)](https://github.com/user-attachments/assets/10d6cb9d-8e53-4644-b625-e6b1d51a5504)

   ![Screenshot (22)](https://github.com/user-attachments/assets/a06c8c31-8337-4d75-8827-9dc98f5a2d29)


3. **Add Classes**:

   - Create one class for each person (e.g., "Alice", "Bob").
   - Add one class named "Unknown".
  
     ![Screenshot (23)](https://github.com/user-attachments/assets/d0ae219c-1bc5-4647-a81e-09dc875ccc39)

4.. **Capture Training Images**:

   - Use your webcam to capture images for each person.
   - Ensure good lighting and a variety of poses.

   ![6](https://github.com/user-attachments/assets/e9aa2a88-3a1b-4ab0-8925-a5bacde21620)

5. **Train the Model**:

   - Click on **Train Model**.
     
<img width="193" alt="image" src="https://github.com/user-attachments/assets/e11670c1-2638-4b6f-84c1-0230e30de0b1" />

     
6. **Export the Model**:

   - After training, click **Export Model** > **TensorFlow**.

<img width="236" alt="image" src="https://github.com/user-attachments/assets/ba35a117-8957-45dd-9888-513026315763" />

   - Download the files:
     - `keras_Model.h5` (rename it to `keras_Model1.h5`).
     - `labels.txt` (rename it to `labels1.txt`).

       <img width="616" alt="image" src="https://github.com/user-attachments/assets/6b2b7168-419b-41d9-a3eb-2a35e7ef3a92" />

8. Extract and Place both files in the project directory.

   <img width="551" alt="image" src="https://github.com/user-attachments/assets/6f51652a-e114-416b-b80b-1bccf5ac62b3" />


### Step 4: Setup MySQL Database

1. Install MySQL:
   - Download and install [MySQL](https://dev.mysql.com/downloads/installer/).
2. Open MySQL Workbench or a terminal.
3. Create a database:

<img width="482" alt="image" src="https://github.com/user-attachments/assets/2b661f2c-8ee6-4056-87f1-2915c1339ef2" />

CREATE DATABASE attendance_system;

4.Create a table for storing attendance

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    person_name VARCHAR(255),
    attendance BOOLEAN,
    date DATE,
    time TIME
);

<img width="680" alt="image" src="https://github.com/user-attachments/assets/b9c87bdb-b450-443d-8a7d-9017a3d6ec49" />

5. Update the connection details in `attendance_system.py`:
conn = mysql.connector.connect(
    host="localhost",
    user="your_mysql_username",
    password="your_mysql_password",
    database="attendance_system"
)

<img width="685" alt="image" src="https://github.com/user-attachments/assets/dc20b27a-4261-4a4b-b6c6-af1f9777c61c" />

#### **Step 5: Connect Webcam and Run the Program**

1. Open the project in your Python IDE (e.g., PyCharm).
2. Ensure your webcam is functional.
3. Run the script:

python attendance_system.py

![Screenshot (27)](https://github.com/user-attachments/assets/d32dfbca-b3c4-4c25-a087-75e1a5aa9389)

4. Follow the terminal output:
- The system will detect and recognize faces.
- Attendance will be marked in the MySQL database.

![Screenshot (26)](https://github.com/user-attachments/assets/d31c2465-a5d5-4ebf-88e4-323f6819687d)

<img width="523" alt="image" src="https://github.com/user-attachments/assets/eccc63c1-19ec-4860-ac07-7250822f42de" />


**How to Use**

1. Start the program.
2. Stand in front of the webcam.
3. Ensure your face is detected and identified (check terminal output).
4. The system will mark your attendance if:
   - Your face is recognized with confidence >95%.
   - Attendance has not already been marked for today.
5. Check the attendance records in the MySQL database.

**Troubleshooting**

1. **Error: Camera not accessible**
   - Ensure your webcam is connected and functioning.

2. **Error: Model file not found**
   - Verify `keras_Model1.h5` and `labels1.txt` are in the correct directory.

3. **Database connection issues**
   - Check MySQL credentials in the code.
   - Ensure MySQL server is running.

4. **Dependencies not installed**
   - Run `pip install -r requirements.txt` again.

**Acknowledgments**

- **Google Teachable Machine** for simplifying model training.
- **OpenCV and TensorFlow** for their powerful libraries.
- **MySQL** for reliable database management.
  
**Tips for Adding README to GitHub**

1.Save the README as README.md in the root folder of your repository.

2.Format sections with Markdown (use #, *, and backticks for headings, bullet points, and code blocks).

3.Commit and push the changes to your GitHub repository.

