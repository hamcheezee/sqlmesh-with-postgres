MODEL (
    name db.person,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/PERSON.csv"
    ),
    columns (
        person_id BIGINT,
        gender_concept_id BIGINT,
        year_of_birth BIGINT,
        month_of_birth BIGINT,
        day_of_birth BIGINT,
        birth_datetime TIMESTAMP,
        race_concept_id BIGINT,
        ethnicity_concept_id BIGINT,
        location_id VARCHAR(50),
        provider_id VARCHAR(50),
        care_site_id VARCHAR(50),
        person_source_value VARCHAR(255),
        gender_source_value VARCHAR(255),
        gender_source_concept_id BIGINT,
        race_source_value VARCHAR(255),
        race_source_concept_id BIGINT,
        ethnicity_source_value VARCHAR(255),
        ethnicity_source_concept_id BIGINT
    ),
    grain (
        person_id
    )
);