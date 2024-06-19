{{ config(
    materialized = 'table'
    , cluster_by = ['veiculo_id']
    , full_refresh = true
    , tags = ['analytics_conformed_dimension_daily']
) }}

select
    veiculo_id
    , veiculo_nome
    , tipo
    , valor_sugerido
    , data_inclusao
    , data_atualizacao
from {{ ref('stg_veiculos') }}