# Employee Attendance System using Face Recognition

This project is a face recognition-based employee attendance system. It uses a pre-trained model to identify employees and marks their attendance in a MySQL database. The system is simple, efficient, and designed to be user-friendly.

**Features**

- Recognizes faces in real-time using a webcam.
- Marks attendance with a confidence score above 95%.
- Ensures attendance is recorded only once per person per day.
- Stores attendance data in a MySQL database.
- Prevents "unknown" faces from being marked.

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

### Step 3: Setup MySQL Database
1. Open MySQL Workbench or any database client.
2. Create a database named `attendance_system`.

CREATE DATABASE attendance_system;

3.Create a table for storing attendance

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    person_name VARCHAR(255),
    attendance BOOLEAN,
    date DATE,
    time TIME
);

**Step 4: Prepare the Model**

1.Train a face recognition model using Google Teachable Machine.
2.Download the model files (keras_Model1.h5 and labels1.txt).
3.Place these files in the project directory.

**Step 5: Run the Program**

1.Open the project folder in your Python IDE (e.g., PyCharm).
2.Run the script

python attendance_system.py

3.Allow the script to access your webcam.
4.Observe the output on the terminal and check the database for attendance records.

**Step 6: Customize**

1.Update host, user, and password fields in the database connection code with your MySQL credentials.

**7. How to Use**

1. Start the program by running the Python script.
2. Stand in front of the webcam.
3. Ensure your face is detected and identified.
4. Check the terminal for attendance updates.
5. View recorded attendance in the MySQL database.

**8.Troubleshooting**

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

- Google Teachable Machine for model training.
- OpenCV and TensorFlow for computer vision and machine learning.
- [Your Name] for developing the project.

**Tips for Adding README to GitHub**

1.Save the README as README.md in the root folder of your repository.
2.Format sections with Markdown (use #, *, and backticks for headings, bullet points, and code blocks).
3.Commit and push the changes to your GitHub repository.

