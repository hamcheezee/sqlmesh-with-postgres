import pandas as pd
import os

des_directory = "src/seeds/Synthea27Nj_5.4_preprocessed/"

def generate_model(file_name, columns):
    model_name = file_name.split('.')[0].lower()
    columns_definition = ',\n        '.join([f'{col} {dtype}' for col, dtype in columns.items()])
    
    return f"""
MODEL (
    name db.{model_name},
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/{file_name}"
    ),
    columns (
        {columns_definition}
    ),
    grain (
        {list(columns.keys())[0]}
    )
);
"""

while True:
    user_input = input("Enter the names of the CSV files separated by spaces (or type 'exit' to quit): ")
    if user_input.lower() == 'exit':
        break

    files = [f"{file_name.upper()}.csv" for file_name in user_input.split()]

    for file in files:
        # Read the CSV file into a DataFrame
        df = pd.read_csv(os.path.join(des_directory, file))

        # Convert float columns to integer if they contain integer-like values
        for column in df.select_dtypes(include=['float64']).columns:
            if df[column].dropna().apply(float.is_integer).all():
                # Fill NaNs with a placeholder value, here 0
                df[column].fillna(0, inplace=True)
                df[column] = df[column].astype('int64')

        # Infer column types for the SQLMesh model
        column_types = {}
        for column in df.columns:
            if "date" in column:
                if "datetime" in column:
                    column_types[column] = 'TIMESTAMP'
                else:
                    column_types[column] = 'DATE'
            elif "time" in column:
                column_types[column] = 'TIME'
            elif pd.api.types.is_integer_dtype(df[column]):
                column_types[column] = 'BIGINT'
            elif pd.api.types.is_float_dtype(df[column]):
                column_types[column] = 'DOUBLE'
            else:
                column_types[column] = 'VARCHAR(255)'

        # Generate and print the model definition
        model_definition = generate_model(file, column_types)
        print(model_definition)
