with source AS (
    select
          cast(id_vendas as int64) as id_vendas
        , cast(id_veiculos as int64) as id_veiculos
        , cast(id_concessionarias as int64) as id_concessionarias
        , cast(id_vendedores as int64) as id_vendedores
        , cast(id_clientes as int64) as id_clientes
        , round(cast(valor_pago as numeric), 2) as valor_venda
        , timestamp_trunc(data_venda, minute) as data_venda
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'vendas') }}
)
select *
from source