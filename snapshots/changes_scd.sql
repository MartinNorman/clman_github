{% snapshot changes_scd %}

{{
    config(
      target_schema='snapshots',
      unique_key='developer',
      strategy='timestamp',
      updated_at='timestamp' 
    )
}}

select 
    * 
from {{ source('clman_github', 'changes') }}

{% endsnapshot %}

