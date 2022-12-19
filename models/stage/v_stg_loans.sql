{%- set yaml_metadata -%}

source_model: 'raw_loans'
derived_columns:
  source: '!CREDIT_TRAIN_CSV'
  load_ts: '!{{ run_started_at.strftime("%Y-%m-%d") }}'
  effective_from: '!{{ run_started_at.strftime("%Y-%m-%d") }}'
hashed_columns:
  customer_hashed_key: 'CUSTOMER_ID'
  loan_hashed_key: 'LOAN_ID'
  link_customer_loan_hashed_key:
    - 'CUSTOMER_ID'
    - 'LOAN_ID'
   customer_hash_diff:
    is_hashdiff: true
    columns:
      - 'CUSTOMER_ID'
      - 'CREDIT_SCORE'
      - 'ANNUAL_INCOME'
      - 'YEARS_IN_CURRENT_JOB'
      - 'HOME_OWNERSHIP'
      - 'YEARS_OF_CREDIT_HISTORY'
      - 'MONTHS_SINCE_LAST_DELINQUENT'
      - 'NUMBER_OF_OPEN_ACCOUNTS'
      - 'NUMBER_OF_CREDIT_PROBLEMS'
      - 'CURRENT_CREDIT_BALANCE'
      - 'MAXIMUM_OPEN_CREDIT'
      - 'BANKRUPTCIES'
      - 'TAX_LIENS'
    loan_hash_diff:
      - 'LOAN_ID'
      - 'CURRENT_LOAN_AMOUNT'
      - 'TERM'
      - 'PURPOSE'
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model'] %}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}

{{ dbtvault.stage(include_source_columns=true,
                  source_model=source_model,
                  derived_columns=derived_columns,
                  hashed_columns=hashed_columns,
                  ranked_columns=none) }}