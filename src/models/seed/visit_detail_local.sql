MODEL (
    name db.visit_detail,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/VISIT_DETAIL.csv"
    ),
    columns (
        visit_detail_id BIGINT,
        person_id BIGINT,
        visit_detail_concept_id BIGINT,
        visit_detail_start_date DATE,
        visit_detail_start_datetime TIMESTAMP,
        visit_detail_end_date DATE,
        visit_detail_end_datetime TIMESTAMP,
        visit_detail_type_concept_id BIGINT,
        provider_id BIGINT,
        care_site_id BIGINT,
        visit_detail_source_value VARCHAR(255),
        visit_detail_source_concept_id BIGINT,
        admitted_from_concept_id BIGINT,
        admitted_from_source_value BIGINT,
        discharged_to_source_value BIGINT,
        discharged_to_concept_id BIGINT,
        preceding_visit_detail_id BIGINT,
        parent_visit_detail_id BIGINT,
        visit_occurrence_id BIGINT
    ),
    grain (
        visit_detail_id
    )
);