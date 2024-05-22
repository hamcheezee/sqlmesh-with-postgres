MODEL (
    name db.measurement,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/MEASUREMENT.csv"
    ),
    columns (
        measurement_id BIGINT,
        person_id BIGINT,
        measurement_concept_id BIGINT,
        measurement_date DATE,
        measurement_datetime TIMESTAMP,
        measurement_time TIME,
        measurement_type_concept_id BIGINT,
        operator_concept_id BIGINT,
        value_as_number DOUBLE,
        value_as_concept_id BIGINT,
        unit_concept_id BIGINT,
        range_low VARCHAR(50),
        range_high VARCHAR(50),
        provider_id BIGINT,
        visit_occurrence_id BIGINT,
        visit_detail_id BIGINT,
        measurement_source_value VARCHAR(50),
        measurement_source_concept_id BIGINT,
        unit_source_value VARCHAR(50),
        unit_source_concept_id VARCHAR(50),
        value_source_value VARCHAR(50),
        measurement_event_id VARCHAR(50),
        meas_event_field_concept_id VARCHAR(50)
    ),
    grain (
        measurement_id
    )
);