{{ config(materialized = 'view') }}

with source as (
    select
        cast(id_cidades as int64) as cidade_id
        , initcap(cast(cidade as string)) as nome_cidade
        , cast(id_estados as int64) as estado_id
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'cidades') }}
    qualify
        row_number() over(
            partition by cidade_id
            order by data_atualizacao desc
        ) = 1
)
select *
from source
