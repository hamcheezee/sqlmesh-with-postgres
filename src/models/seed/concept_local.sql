MODEL (
    name db.concept,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/CONCEPT.csv"
    ),
    columns (
        concept_id BIGINT,
        concept_name VARCHAR(255),
        domain_id VARCHAR(50),
        vocabulary_id VARCHAR(50),
        concept_class_id VARCHAR(50),
        standard_concept VARCHAR(50),
        concept_code VARCHAR(50),
        valid_start_date DATE,
        valid_end_date DATE,
        invalid_reason VARCHAR(50)
    ),
    grain (
        concept_id
    )
);