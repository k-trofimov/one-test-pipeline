{%- set source_model = "v_stg_loans" -%}
{%- set src_pk = "loan_hashed_key" -%}
{%- set src_hashdiff = "customer_hash_diff" -%}
{%- set src_payload = ["CURRENT_LOAN_AMOUNT", "TERM", "PURPOSE"] -%}
{%- set src_eff = "effective_from" -%}
{%- set src_ldts = "load_ts" -%}
{%- set src_source = "source" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=src_eff,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
