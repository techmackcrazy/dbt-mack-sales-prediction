{{ config(materialized = 'view') }}

with source as (
    select
        cast(id_estados as int64) as estado_id
        , initcap(cast(estado as string)) as estado_nome
        , upper(cast(sigla as string)) as sigla
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'estados') }}
    qualify
        row_number() over(
            partition by estado_id
            order by data_atualizacao desc
        ) = 1
)
select *
from source
