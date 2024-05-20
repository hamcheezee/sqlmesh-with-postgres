MODEL (
    name db.visit_occurrence_local,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4/VISIT_OCCURRENCE.csv"
    ),
    columns (
        visit_occurrence_id INTEGER,
        person_id INTEGER,
        visit_concept_id INTEGER,
        visit_start_date DATE,
        visit_start_datetime TIMESTAMP,
        visit_end_date DATE,
        visit_end_datetime TIMESTAMP,
        visit_type_concept_id INTEGER,
        provider_id INTEGER,
        care_site_id VARCHAR,
        visit_source_value VARCHAR,
        visit_source_concept_id INTEGER,
        admitted_from_concept_id INTEGER,
        admitted_from_source_value VARCHAR,
        discharged_to_concept_id INTEGER,
        discharged_to_source_value VARCHAR,
        preceding_visit_occurrence_id INTEGER
    ),
    grain (
        visit_occurrence_id
    )
);