<!-- Descrição das Sources -->

{% docs sources_description %}
As tabelas declaradas no source são originadas de um banco transacional
servido em uma instância no Postgress:

    - host: 159.223.187.110
    - port: 5432
    - dbname: novadrive
    - user: etlreadonly
    - password: Acesso restrito ao time de engenharia de dados

Temos 7 tabelas no banco de dados:

    1. cidade
    2. clientes
    3. concessionarias
    4. estados
    5. veiculos
    6. venda
    7. vendendores

{% enddocs %}

<!--  -->

<!-- Descrições das tabelas -->

{% docs tbl_cidades_description %}
Esta tabela contém os dados de região, como cidade e estado
{% enddocs %}

{% docs tbl_clientes_description %}
Esta tabela contém os dados do cliente, como nome e endereço
{% enddocs %}

{% docs tbl_concessionarias_description %}
Esta tabela contém os dados da concenssionaria, como concessionaria e cidade
{% enddocs %}

{% docs tbl_veiculos_description %}
Esta tabela contém os dados de veiculos, como nome, tipo e valor
{% enddocs %}

{% docs tbl_vendas_description %}
Esta tabela contém os dados do vendas, como o valor pago e as datas de vendas
{% enddocs %}

{% docs tbl_vendedores_description %}
Esta tabela contém os dados dos vendedores, como nome e a concessionaria
{% enddocs %}

{% docs tbl_estados_description %}
Esta tabela contém os dados de estados, como nome e sigla.
{% enddocs %}

<!--  -->

<!-- Descrições colunas genéricas -->

{% docs data_inclusao %}
Esta coluna contém a data em que o registro foi criado na tabela
{% enddocs %}

{% docs data_atualizacao %}
Esta coluna contém a data em que o registro sofreu atualização
{% enddocs %}

<!--  -->

<!-- Descrições das colunas -->

{% docs cidade_id %}
Esta coluna contém a chave primária de cada cidade contida na tabela cidades a na tabela concessionarias
{% enddocs %}

{% docs nome_cidade %}
Esta coluna contém o nome de cada cidade contida na tabela cidades
{% enddocs %}

{% docs estado_id %}
Esta coluna contém a chave primária de cada estado contido na tabela estado
{% enddocs %}

{% docs estado_nome %}
Esta coluna contém o nome de cada estado contido na tabela estado
{% enddocs %}

{% docs sigla %}
Esta coluna contém as siglas dos estados contidos na tabela estado
{% enddocs %}

{% docs cliente_id %}
Esta coluna contém a chave primária de cada cliente contida na tabela clientes
{% enddocs %}

{% docs cliente_nome %}
Esta coluna contém o nome de cada cliente contido na tabela clientes
{% enddocs %}

{% docs cliente_endereco %}
Esta coluna contém o endereço de cada cliente contido na tabela clientes
{% enddocs %}

{% docs concessionaria_id %}
Esta coluna contém a chave primária de cada concessionaria contida na tabela clientes
{% enddocs %}

{% docs concessionaria_nome %}
Esta coluna contém o nome da concessionaria contida na tabela concenssionaria
{% enddocs %}

{% docs veiculo_id %}
Esta coluna contém a chave primária de cada veiculo contido na tabela veiculo
{% enddocs %}

{% docs veiculo_nome %}
Esta coluna contém o nome de cada veiculo contido na tabela veiculo
{% enddocs %}

{% docs veiculo_tipo %}
Esta coluna contém o tipo de cada veiculo contido na tabela veiculo
{% enddocs %}

{% docs veiculo_valor %}
Esta coluna contém o valor de cada veiculo contido na tabela veiculo
{% enddocs %}

{% docs venda_id %}
Esta coluna contém a chave primária de cada venda contido na tabela vendas
{% enddocs %}

{% docs valor_pago %}
Esta coluna contém o valor pago em cada venda na tabela vendas
{% enddocs %}

{% docs data_venda %}
Esta coluna contém as datas das vendas contidas na tabela vendas
{% enddocs %}

{% docs vendedor_id %}
Esta coluna contém a chave primária de cada vendedor contido na tabela vendedores
{% enddocs %}

{% docs vendedor_nome %}
Esta coluna contém o nome de cada vendedor contido na tabela vendedores
{% enddocs %}

<!--  -->