{{ config(materialized = 'view') }}

with source as (
    select
        cast(id_veiculos as int64) as veiculo_id
        , cast(nome as string) as veiculo_nome
        , cast(tipo as string) as tipo
        , round(cast(valor as float64), 2) as valor_sugerido
        , timestamp_trunc(data_inclusao, minute) as data_inclusao
        , timestamp_trunc(coalesce(data_atualizacao, data_inclusao), minute) as data_atualizacao
    from {{ source('sources', 'veiculos') }}
    qualify
        row_number() over(
            partition by veiculo_id
            order by data_atualizacao desc
        ) = 1
)
select *
from source