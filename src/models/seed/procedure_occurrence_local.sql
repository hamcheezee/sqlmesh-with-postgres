MODEL (
    name db.procedure_occurrence,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/PROCEDURE_OCCURRENCE.csv"
    ),
    columns (
        procedure_occurrence_id BIGINT,
        person_id BIGINT,
        procedure_concept_id BIGINT,
        procedure_date DATE,
        procedure_datetime TIMESTAMP,
        procedure_end_date DATE,
        procedure_end_datetime TIMESTAMP,
        procedure_type_concept_id BIGINT,
        modifier_concept_id BIGINT,
        quantity BIGINT,
        provider_id BIGINT,
        visit_occurrence_id BIGINT,
        visit_detail_id BIGINT,
        procedure_source_value BIGINT,
        procedure_source_concept_id BIGINT,
        modifier_source_value BIGINT
    ),
    grain (
        procedure_occurrence_id
    )
);