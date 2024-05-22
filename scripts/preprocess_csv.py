import pandas as pd
import os

src_directory = "src/seeds/Synthea27Nj_5.4/"
des_directory = "src/seeds/Synthea27Nj_5.4_preprocessed/"
files = ["CONCEPT.csv", "CONDITION_OCCURRENCE.csv", "DRUG_EXPOSURE.csv", "MEASUREMENT.csv", 
         "OBSERVATION.csv", "OBSERVATION_PERIOD.csv", "PROCEDURE_OCCURRENCE.csv", "PROVIDER.csv",
         "PERSON.csv", "VISIT_DETAIL.csv", "VISIT_OCCURRENCE.csv"]

def check_dir_exists(des_directory):
    """
    Check if the destination directory exists.
    If it doesn't exist, create it.
    If it exists, remove it and create it again.
    
    Parameters:
    - des_directory (str): Destination directory path.
    """
    
    if not os.path.exists(des_directory):
        os.makedirs(des_directory)
    else:
        os.system("rm -rf {}".format(des_directory))
        os.makedirs(des_directory)

def count_null_dates(src_directory, files):
    """
    Count the number of null values in date and datetime columns for each CSV file in the given directory.

    Parameters:
    - src_directory (str): Source directory containing CSV files.
    - files (list): List of CSV files to process.
    """

    print("FILE NAME".ljust(25), "DATE AND DATETIME COLUMN".ljust(30), "NULL COUNT")
    print("-" * 70)

    for file in files:
        file_path = os.path.join(src_directory, file)

        # Read the CSV file into a DataFrame
        df = pd.read_csv(file_path)

        for column in df.columns:
            # Check if the column is a date or datetime
            if "date" in column.lower():
                null_count = df[column].isna().sum()
                print(file.ljust(25), column.ljust(30), null_count)

def preprocess_csv_files(src_directory, des_directory, files):
    """
    Preprocess CSV files by converting date and datetime columns, and filling missing values with the maximum date or datetime.

    Parameters:
    - src_directory (str): Source directory containing CSV files.
    - des_directory (str): Destination directory for preprocessed files.
    - files (list): List of CSV files to process.
    """
    for file in files:
        # Read the CSV file into a DataFrame
        df = pd.read_csv(os.path.join(src_directory, file))

        # Preprocess date and datetime columns
        for column in df.columns:
            # Check if the column is a date or datetime
            if "datetime" in column.lower():
                df[column] = pd.to_datetime(df[column], format='%Y-%m-%d %H:%M:%S', errors='coerce')
                # Fill missing values with the maximum datetime
                max_value = df[column].max()
                df[column] = df[column].fillna(max_value)
            elif "date" in column.lower():
                df[column] = pd.to_datetime(df[column], errors='coerce')
                # Fill missing values with the maximum date
                max_value = df[column].max()
                df[column] = df[column].fillna(max_value)

        # Save the preprocessed DataFrame to a CSV file
        df.to_csv(os.path.join(des_directory, file), index=False)

    print("Preprocessing complete.")

if __name__ == "__main__":
    # Check and create destination directory
    check_dir_exists(des_directory)

    # Count null values in date and datetime columns
    # count_null_dates(src_directory, files)

    # Preprocess CSV files
    preprocess_csv_files(src_directory, des_directory, files)