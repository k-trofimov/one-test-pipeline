{%- set source_model = "v_stg_loans" -%}
{%- set src_pk = "customer_hashed_key" -%}
{%- set src_nk = "CUSTOMER_ID" -%}
{%- set src_ldts = "load_ts" -%}
{%- set src_source = "source" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}