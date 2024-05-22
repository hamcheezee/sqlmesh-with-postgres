MODEL (
    name db.observation,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/OBSERVATION.csv"
    ),
    columns (
        observation_id BIGINT,
        person_id BIGINT,
        observation_concept_id BIGINT,
        observation_date DATE,
        observation_datetime TIMESTAMP,
        observation_type_concept_id BIGINT,
        value_as_number BIGINT,
        value_as_string BIGINT,
        value_as_concept_id BIGINT,
        qualifier_concept_id BIGINT,
        unit_concept_id BIGINT,
        provider_id BIGINT,
        visit_occurrence_id BIGINT,
        visit_detail_id BIGINT,
        observation_source_value VARCHAR(255),
        observation_source_concept_id BIGINT,
        unit_source_value BIGINT,
        qualifier_source_value BIGINT,
        value_source_value BIGINT,
        observation_event_id BIGINT,
        obs_event_field_concept_id BIGINT
    ),
    grain (
        observation_id
    )
);
