MODEL (
    name db.drug_exposure,
    kind SEED (
        path "$root/seeds/Synthea27Nj_5.4_preprocessed/DRUG_EXPOSURE.csv"
    ),
    columns (
        drug_exposure_id BIGINT,
        person_id BIGINT,
        drug_concept_id BIGINT,
        drug_exposure_start_date DATE,
        drug_exposure_start_datetime TIMESTAMP,
        drug_exposure_end_date DATE,
        drug_exposure_end_datetime TIMESTAMP,
        verbatim_end_date DATE,
        drug_type_concept_id BIGINT,
        stop_reason VARCHAR(50),
        refills BIGINT,
        quantity BIGINT,
        days_supply BIGINT,
        sig VARCHAR(50),
        route_concept_id BIGINT,
        lot_number BIGINT,
        provider_id BIGINT,
        visit_occurrence_id BIGINT,
        drug_source_value BIGINT,
        drug_source_concept_id BIGINT,
        route_source_value VARCHAR(50),
        dose_unit_source_value VARCHAR(50)
    ),
    grain (
        drug_exposure_id
    )
);
