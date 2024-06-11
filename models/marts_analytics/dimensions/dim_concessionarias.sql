{{ config(
    materialized = 'table'
    , cluster_by = ['concessionaria_id']
    , tags = ['analytics_conformed_dimension_daily']
) }}

select 
    concessionaria_id
    , concessionaria_nome
    , cidade_id
    , data_inclusao
    , data_atualizacao
from {{ ref('stg_concessionarias') }}
