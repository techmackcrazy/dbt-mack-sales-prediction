{{ config(
    materialized = 'table'
    , cluster_by = ['vendedor_id']
    , tags = ['analytics_conformed_dimension_daily']
) }}

select
    vendedor_id
    , vendedor_nome
    , concessionaria_id
    , data_inclusao
    , data_atualizacao
from {{ ref('stg_vendedores') }}