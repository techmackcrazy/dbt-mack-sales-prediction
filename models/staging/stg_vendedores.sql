{{ config(materialized = 'view') }}

with source as (
    select
        cast(id_vendedores as int64) as vendedor_id
        -- , initcap(cast(nome as string)) as vendedor_nome
        , {{ dbt_utils.generate_surrogate_key(['nome']) }} as vendedor_nome
        , cast(id_concessionarias as int64) as concessionaria_id
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'vendedores') }}
)
select *
from source