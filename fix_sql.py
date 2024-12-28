# Read the SQL file
with open("Database/atlas_schema.sql", "r") as file:
    sql_content = file.read()

# Replace single quotes with escaped ones
fixed_sql = sql_content.replace("'", "''").replace("''", "'")

# Save the corrected SQL file
with open("atlas_schema_fixed.sql", "w") as file:
    file.write(fixed_sql)
