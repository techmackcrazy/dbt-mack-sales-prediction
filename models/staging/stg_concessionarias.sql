with source as (
    select
        cast(id_concessionarias as int64) as concessionaria_id
        , trim(cast(concessionaria as string)) as nome_concessionaria
        , cast(id_cidades as string) as cidade_id
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'concessionarias') }}
)
select *
from source