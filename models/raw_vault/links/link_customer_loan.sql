{%- set source_model = "v_stg_loans" -%}
{%- set src_pk = "link_customer_loan_hashed_key" -%}
{%- set src_fk = ["CUSTOMER_ID", "LOAN_ID"] -%}
{%- set src_ldts = "load_ts" -%}
{%- set src_source = "source" -%}

{{ dbtvault.link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                 src_source=src_source, source_model=source_model) }}
