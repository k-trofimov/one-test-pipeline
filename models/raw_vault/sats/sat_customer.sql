{%- set source_model = "v_stg_loans" -%}
{%- set src_pk = "customer_hashed_key" -%}
{%- set src_hashdiff = "customer_hash_diff" -%}
{%- set src_payload = ["CREDIT_SCORE", "ANNUAL_INCOME", "YEARS_IN_CURRENT_JOB",
                       "HOME_OWNERSHIP", "YEARS_OF_CREDIT_HISTORY", "MONTHS_SINCE_LAST_DELINQUENT",
                       "NUMBER_OF_OPEN_ACCOUNTS", "NUMBER_OF_CREDIT_PROBLEMS", "CURRENT_CREDIT_BALANCE",
                       "MAXIMUM_OPEN_CREDIT", "BANKRUPTCIES", "TAX_LIENS"] -%}
{%- set src_eff = "effective_from" -%}
{%- set src_ldts = "load_ts" -%}
{%- set src_source = "source" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=src_eff,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
