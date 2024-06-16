{{ 
    config(
        materialized = 'incremental'
        , on_schema_change='fail'
        , unique_key='venda_id'
    ) 
}}

with vendas as (
    select
        vendas.venda_id
        , veiculos.veiculo_nome
        , veiculos.tipo
        , veiculos.valor_sugerido
        , concessionarias.concessionaria_nome
        , cidades.nome_cidade as concessionaria_cidade
        , vendedores.vendedor_nome
        , clientes.cliente_nome
        , clientes.cliente_endereco
        , vendas.valor_venda
        , vendas.data_venda
        , vendas.data_inclusao
        , vendas.data_atualizacao
    from {{ ref('fact_vendas') }} as vendas
    INNER JOIN {{ ref('dim_veiculos') }} as veiculos on vendas.veiculo_id = veiculos.veiculo_id
    INNER JOIN {{ ref('dim_concessionarias') }} as concessionarias on vendas.concessionaria_id = concessionarias.concessionaria_id
    INNER JOIN {{ ref('dim_vendedores') }} as vendedores on vendas.vendedor_id = vendedores.vendedor_id
    INNER JOIN {{ ref('dim_clientes') }} as clientes on vendas.cliente_id = clientes.cliente_id
    INNER JOIN {{ ref('dim_cidades') }} as cidades on cidades.cidade_id = concessionarias.cidade_id
    {% if is_incremental() %}
        where venda_id > (select MAX(venda_id) from {{ this }})
    {% endif %}
)
select *
from vendas
