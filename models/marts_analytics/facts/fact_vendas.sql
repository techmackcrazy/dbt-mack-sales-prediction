{{ 
    config(
        materialized = 'incremental'
        , on_schema_change='fail'
        , full_refresh = true
        , unique_key='venda_id'
    ) 
}}

with vendas as (
    select
        vendas.id_vendas as venda_id
        , vendas.id_veiculos as veiculo_id
        , vendas.id_concessionarias as concessionaria_id
        , cidades.cidade_id
        , vendas.id_vendedores as vendedor_id
        , vendas.id_clientes as cliente_id
        , vendas.valor_venda
        , vendas.data_venda
        , vendas.data_inclusao
        , vendas.data_atualizacao
    from {{ ref('stg_vendas') }} as vendas
    INNER JOIN {{ ref('dim_veiculos') }} as veiculos on vendas.id_veiculos = veiculos.veiculo_id
    INNER JOIN {{ ref('dim_concessionarias') }} as concessionarias on vendas.id_concessionarias = concessionarias.concessionaria_id
    INNER JOIN {{ ref('dim_vendedores') }} as vendedores on vendas.id_vendedores = vendedores.vendedor_id
    INNER JOIN {{ ref('dim_clientes') }} as clientes on vendas.id_clientes = clientes.cliente_id
    INNER JOIN {{ ref('dim_cidades') }} as cidades on cidades.cidade_id = concessionarias.cidade_id
    {% if is_incremental() %}
        where id_vendas > (select MAX(venda_id) from {{ this }})
    {% endif %}
)
select *
from vendas
