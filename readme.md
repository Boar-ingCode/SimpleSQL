# SmallBusinessDB Web App

A Flask web application that displays data from a MySQL database (`SmallBusinessDB`) in styled HTML tables with an overlay effect. This project is designed for academic purposes and demonstrates SQL database integration with a Python backend.

## Features
- Displays all tables from `SmallBusinessDB` (e.g., `Customers`, `Orders`, `Products`, `OrderDetails`).
- Modern, responsive table design with hover overlays.
- Built with Flask and MySQL Connector for Python.

## Prerequisites
- **Python 3.6+**: [Download](https://www.python.org/downloads/)
- **MySQL**: [Download MySQL Community Server](https://dev.mysql.com/downloads/)
- **Git**: To clone the repository.

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/SmallBusinessDB-Web.git
cd SmallBusinessDB-Web
```

### 2. Install Dependencies
Install the required Python packages:
```bash
pip install -r requirements.txt
```
This installs Flask and mysql-connector-python.

### 3. Set Up MySQL Database
1. Start MySQL:
Ensure your MySQL server is running (e.g., via services.msc on Windows or sudo service mysql start on Linux).
2. Import the Database:
Use the provided SmallBusinessDB.sql to set up the database:
```bash
mysql -u root -p < SmallBusinessDB.sql
```
4. Configure Environment Variables
Set your MySQL credentials as environment variables:
```bash
export DB_USER=root
export DB_PASSWORD=your_password
export DB_NAME=SmallBusinessDB
```
5. Run the Application
Start the Flask app:
```bash
python app.py
```