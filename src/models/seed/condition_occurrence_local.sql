MODEL (
    name db.condition_occurrence,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/CONDITION_OCCURRENCE.csv"
    ),
    columns (
        condition_occurrence_id BIGINT,
        person_id BIGINT,
        condition_concept_id BIGINT,
        condition_start_date DATE,
        condition_start_datetime TIMESTAMP,
        condition_end_date DATE,
        condition_end_datetime TIMESTAMP,
        condition_type_concept_id BIGINT,
        condition_status_concept_id BIGINT,
        stop_reason VARCHAR(50),
        provider_id BIGINT,
        visit_occurrence_id BIGINT,
        visit_detail_id BIGINT,
        condition_source_value BIGINT,
        condition_source_concept_id BIGINT,
        condition_status_source_value VARCHAR(50)
    ),
    grain (
        condition_occurrence_id
    )
);