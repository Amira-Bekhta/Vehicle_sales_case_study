import pandas as pd
import sqlite3


# Files to read from and write to
data = pd.read_csv("Data/processed/data.csv")
db_file = 'database.db'

conn = sqlite3.connect(db_file) # Connect to the database

data.to_sql('car_prices', conn, index=False) # Convert it to a table

conn.close()
