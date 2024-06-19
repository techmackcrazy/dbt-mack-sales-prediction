{{ config(materialized = 'view') }}

with source as (
    select
        cast(id_concessionarias as int64) as concessionaria_id
        , trim(cast(concessionaria as string)) as concessionaria_nome
        , cast(id_cidades as int64) as cidade_id
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'concessionarias') }}
    qualify
        row_number() over(
            partition by concessionaria_id
            order by data_atualizacao desc
        ) = 1
)
select *
from source
