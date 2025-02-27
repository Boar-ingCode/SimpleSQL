from flask import Flask, render_template
import mysql.connector
from config import DB_CONFIG

app = Flask(__name__, template_folder="../templates")

def get_db_connection():
    conn = mysql.connector.connect(**DB_CONFIG)
    return conn

@app.route('/')
def show_all_data():
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SHOW TABLES")
        tables = [row[0] for row in cursor.fetchall()]
        table_data = {}
        for table in tables:
            cursor.execute(f"SELECT * FROM {table}")
            columns = [desc[0] for desc in cursor.description]
            rows = cursor.fetchall()
            table_data[table] = {'columns': columns, 'rows': rows}
        conn.close()
        return render_template('index.html', table_data=table_data)
    except Exception as e:
        return f"Error: {str(e)}"

if __name__ == '__main__':
    app.run(debug=True)