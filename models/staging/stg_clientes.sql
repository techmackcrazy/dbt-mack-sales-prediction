with source as (
    select
        cast(id_clientes as int64) as cliente_id
        , initcap(cast(cliente as string)) as nome_cliente
        , trim(cast(endereco as string)) as endereco
        , cast(id_concessionarias as int64) as concessionaria_id
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'clientes') }}
)
select *
from source