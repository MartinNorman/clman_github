{% snapshot country_scd %}

{{
    config(
      target_schema='snapshots',
      unique_key='id',
      strategy='check',
      check_cols='all'
    )
}}

select 
    * 
from {{ source('clman_github', 'country_details') }}

{% endsnapshot %}

