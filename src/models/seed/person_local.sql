MODEL (
    name db.person_local,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4/PERSON.csv"
    ),
    columns (
        person_id INTEGER,
        gender_concept_id INTEGER,
        year_of_birth INTEGER,
        month_of_birth INTEGER,
        day_of_birth INTEGER,
        birth_datetime TIMESTAMP,
        race_concept_id INTEGER,
        ethnicity_concept_id INTEGER,
        location_id VARCHAR(50),
        provider_id VARCHAR(50),
        care_site_id VARCHAR(50),
        person_source_value VARCHAR(255),
        gender_source_value VARCHAR(255),
        gender_source_concept_id INTEGER,
        race_source_value VARCHAR(255),
        race_source_concept_id INTEGER,
        ethnicity_source_value VARCHAR(255),
        ethnicity_source_concept_id INTEGER
    ),
    grain (
        person_id
    )
);