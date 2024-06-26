{{ config(
    materialized = 'table'
    , cluster_by = ['estado_id']
    , tags = ['analytics_conformed_dimension_daily']
) }}

select 
    estado_id
    , estado_nome
    , sigla
    , data_inclusao
    , data_atualizacao
from {{ ref('stg_estados') }}
