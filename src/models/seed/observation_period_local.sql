MODEL (
    name db.observation_period,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/OBSERVATION_PERIOD.csv"
    ),
    columns (
        observation_period_id BIGINT,
        person_id BIGINT,
        observation_period_start_date DATE,
        observation_period_end_date DATE,
        period_type_concept_id BIGINT
    ),
    grain (
        observation_period_id
    )
);
