MODEL (
    name db.visit_occurrence,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/VISIT_OCCURRENCE.csv"
    ),
    columns (
        visit_occurrence_id BIGINT,
        person_id BIGINT,
        visit_concept_id BIGINT,
        visit_start_date DATE,
        visit_start_datetime TIMESTAMP,
        visit_end_date DATE,
        visit_end_datetime TIMESTAMP,
        visit_type_concept_id BIGINT,
        provider_id BIGINT,
        care_site_id VARCHAR,
        visit_source_value VARCHAR,
        visit_source_concept_id BIGINT,
        admitted_from_concept_id BIGINT,
        admitted_from_source_value VARCHAR,
        discharged_to_concept_id BIGINT,
        discharged_to_source_value VARCHAR,
        preceding_visit_occurrence_id BIGINT
    ),
    grain (
        visit_occurrence_id
    )
);