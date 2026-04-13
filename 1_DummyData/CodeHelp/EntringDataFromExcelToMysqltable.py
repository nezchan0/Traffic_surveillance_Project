import pandas as pd
import mysql.connector

# MySQL connection configuration
mysql_config = {
    'host': 'localhost',
    'user': 'USERNAME',
    'password': 'USERNAME_PASSWORD',
    'database': 'TrafficProjectFinal'
}

# Path to the Excel file
excel_file_path = "**ADD_PROPER_PATH_TO_FILE**/TrafficProject/1_DummyData/CodeHelp/TrafficProjectDatabase.xlsx"

# Connect to MySQL
connection = mysql.connector.connect(**mysql_config)
cursor = connection.cursor()

# Load the Excel file
excel_data = pd.ExcelFile(excel_file_path)

# Loop through each sheet
for sheet_name in excel_data.sheet_names:
    # Read the sheet into a DataFrame
    df = excel_data.parse(sheet_name)
    
    # Convert date columns (assuming column names are 'date_column' and 'datetime_column')
    if 'Registration_Date' in df.columns:
        df['Registration_Date'] = pd.to_datetime(df['Registration_Date'], format='%d-%m-%Y').dt.strftime('%Y-%m-%d')
    if 'ExpiryDate' in df.columns:
        df['ExpiryDate'] = pd.to_datetime(df['ExpiryDate'], format='%d-%m-%Y').dt.strftime('%Y-%m-%d')
    if 'IssueDate' in df.columns:
        df['IssueDate'] = pd.to_datetime(df['IssueDate'], format='%d-%m-%Y').dt.strftime('%Y-%m-%d')
    if 'DOB' in df.columns:
        df['DOB'] = pd.to_datetime(df['DOB'], format='%d-%m-%Y').dt.strftime('%Y-%m-%d')
    
    if 'TimeHappened' in df.columns:
        df['TimeHappened'] = pd.to_datetime(df['TimeHappened'], format='%d-%m-%Y %H-%M-%S').dt.strftime('%Y-%m-%d %H:%M:%S')
    
    # Generate the SQL INSERT query
    columns = ", ".join(df.columns)  # Column names
    placeholders = ", ".join(["%s"] * len(df.columns))  # Placeholders for values
    insert_query = f"INSERT INTO {sheet_name} ({columns}) VALUES ({placeholders})"
    
    # Insert each row into the table
    for _, row in df.iterrows():
        try:
            cursor.execute(insert_query, tuple(row))
        except mysql.connector.Error as err:
            print(f"Error inserting into {sheet_name}: {err}")
    
    print(f"Data from sheet '{sheet_name}' inserted into table '{sheet_name}' successfully.")

# Commit changes and close the connection
connection.commit()
cursor.close()
connection.close()

print("All data inserted successfully!")


