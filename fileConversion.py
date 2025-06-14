import os
import pandas as pd

project_dir = os.path.dirname(os.path.abspath(__file__))
excel_files = ['CovidDeaths.xlsx', 'CovidVaccinated.xlsx']

for file in excel_files:
    excel_path = os.path.join(project_dir, file)
    if os.path.exists(excel_path):
        csv_path = os.path.splitext(excel_path)[0] + '.csv'
        try:
            df = pd.read_excel(excel_path)

            # Clean: Keep only rows where continent is NULL or empty
            if 'continent' in df.columns:
                df = df[df['continent'].isnull() | (df['continent'].astype(str).str.strip() == '')]
                df.drop(columns=['continent'], inplace=True)
            # Clean: Remove 'Unnamed' columns
            df.to_csv(csv_path, index=False)
            print(f"Converted and cleaned: {excel_path} -> {csv_path}")
        except Exception as e:
            print(f"Failed to convert {excel_path}: {e}")
    else:
        print(f"File not found: {excel_path}")
