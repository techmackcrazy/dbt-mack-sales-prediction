{{ config(
    materialized = 'table'
    , cluster_by = ['cidade_id']
    , tags = ['analytics_conformed_dimension_daily']
) }}

select
    cidade_id
    , nome_cidade
    , estado_id
    , data_inclusao
    , data_atualizacao
from {{ ref('stg_cidades') }}