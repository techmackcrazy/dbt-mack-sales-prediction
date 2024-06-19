{{ config(
    materialized = 'table'
    , cluster_by = ['cliente_id']
    , full_refresh = true
    , tags = ['analytics_conformed_dimension_daily']
    , labels = {'contains_pii': 'yes'}
) }}

select
    cliente_id
    , cliente_nome
    , cliente_endereco
    , concessionaria_id
    , data_inclusao
    , data_atualizacao
from {{ ref('stg_clientes') }}
