with source as (
    select
        cast(id_estados as int64) as estado_id
        , initcap(cast(estado as string)) as nome_estado
        , upper(cast(sigla as string)) as sigla
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'estados') }}
)
select *
from source