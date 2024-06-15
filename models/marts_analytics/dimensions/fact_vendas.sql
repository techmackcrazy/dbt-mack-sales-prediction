{{ 
    config(
        materialized = 'incremental'
        , on_schema_change='fail'
        , unique_key='venda_id'
    ) 
}}

with vendas as (
    select
        vendas.id_vendas as venda_id
        , vendas.id_veiculos as veiculo_id
        , vendas.id_concessionarias as concessionaria_id
        , vendas.id_vendedores as vendedor_id
        , vendas.id_clientes as cliente_id
        , vendas.valor_venda
        , vendas.data_venda
        , vendas.data_inclusao
        , vendas.data_atualizacao
    from {{ ref('stg_vendas') }} as vendas
    INNER JOIN {{ ref('dim_veiculos') }} veiculos
        ON vendas.id_veiculos = veiculos.veiculo_id
    INNER JOIN {{ ref('dim_concessionarias') }} concessionarias
        ON vendas.id_concessionarias = concessionarias.concessionaria_id
    INNER JOIN {{ ref('dim_vendedores') }} vendedores
        ON vendas.id_vendedores = vendedores.vendedor_id
    INNER JOIN {{ ref('dim_clientes') }} clientes
        ON vendas.id_clientes = clientes.cliente_id
    {% if is_incremental() %}
        where venda_id > (select MAX(venda_id) from {{ this }})
    {% endif %}
)
select *
from vendas
