MODEL (
    name db.provider,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/PROVIDER.csv"
    ),
    columns (
        provider_id BIGINT,
        provider_name VARCHAR(255),
        npi BIGINT,
        dea BIGINT,
        specialty_concept_id BIGINT,
        care_site_id BIGINT,
        year_of_birth BIGINT,
        gender_concept_id BIGINT,
        provider_source_value VARCHAR(255),
        specialty_source_value VARCHAR(255),
        specialty_source_concept_id BIGINT,
        gender_source_value VARCHAR(255),
        gender_source_concept_id BIGINT
    ),
    grain (
        provider_id
    )
);
