{% docs __overview__ %}
# Projeto de Engenharia de Dados - Universidade Mackenzie
## Projeto de previsão de venda

![logo Mackenzie](https://seeklogo.com/images/U/Universidade_Presbiteriana_Mackenzie-logo-EE4C00D51D-seeklogo.com.png)

---

### Desafio do Projeto
O projeto proposto pelos professores do curso de MBA em Engenharia de Dados da Universidade Mackenzie consiste em criar um processo completo de ingestão, transformação e análise de dados de vendas, resultando na criação de um modelo de previsão de vendas e um dashboard interativo.

### Integrantes
| Nome               | Função                                              |
|--------------------|-----------------------------------------------------|
| Carolina Attili    | Data Governance                                     |
| Henrique Arduinni  | Data Engineer e Devops                              |
| Matheus Vieger     | Data Engineer                                       |
| Rafael Medeiros    | Product Manager, Data Engineer e Analytics Engineer |

---

# 🧙 Catapimbas Data

Somos uma empresa que te ajuda a encontrar valor nos seus dados e te surpreende com resultados...

[Escrever estratégia de dados]

## Repositórios:
- [Documentação e Gerenciamento de ADRs](https://github.com/techmackcrazy/ml-sales-prediction)

- [Transformação dos dados DBT Cloud](https://github.com/techmackcrazy/dbt-mack-sales-prediction)

## Objetivos
1. **Ingestão de Dados**: Desenvolver um pipeline para coletar e armazenar dados de vendas de diversas fontes.
2. **Transformação de Dados**: Aplicar transformações necessárias para limpar e preparar os dados para análise.
3. **Data Governance**: Aplicar conceitos e diretrizes de governança de dados
4. **Modelo de Previsão de Vendas**: Criar e treinar um modelo preditivo para estimar futuras vendas.
5. **Dashboard**: Construir um dashboard para visualizar as tendências de vendas e previsões.

## Escopo do Projeto
- **Fontes de Dados**: Dados de vendas históricas, dados de mercado, dados demográficos, etc.
- **Ferramentas Utilizadas**:

    - **[WSL (versão 2)](https://learn.microsoft.com/pt-br/windows/wsl/about)**: É uma camada de compatibilidade desenvolvida pela Microsoft que permite rodar um ambiente GNU/Linux diretamente no Windows, sem a necessidade de máquinas virtuais ou configuração de dual-boot. Com o WSL, os usuários podem executar binários Linux nativos em uma interface de linha de comando Windows.
 
    - **[Git](https://www.atlassian.com/git)**: Versionamento do projeto.
    
    - **[Git Flow Extension](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)**: É um conjunto de scripts e práticas que facilitam a implementação de um modelo de ramificação (branching) bem estruturado no Git.
    
    - **[ssh-keygen](https://en.wikipedia.org/wiki/Ssh-keygen)**: Uma ferramenta de linha de comando usada para gerar, gerenciar e converter chaves de autenticação SSH (Secure Shell). SSH é um protocolo que permite a comunicação segura entre dispositivos na rede, e as chaves SSH são usadas para autenticação baseada em chave pública, uma forma mais segura e conveniente de autenticação comparada ao uso de senhas.
    
    - **[log4brains](https://github.com/thomvaill/log4brains)**: Ferramenta para gerenciar registros de decisões arquiteturais (ADRs).
    
    - **[Airflow](https://airflow.apache.org/docs/apache-airflow/stable/index.html)**: Plataforma para orquestração de workflows que utilizamos para gerenciar o pipeline de ingestão de dados.
    
    - **[dbt cloud](https://www.getdbt.com/product/dbt-cloud)**: Ferramenta para transformação de dados que permite modelar, transformar e documentar os dados de forma eficiente.

    - **[Elementary](https://www.elementary-data.com/)**: Solução nativa de observabilidade de dados para engenheiros de dados e analytics.

- **Período de Execução**: 2 meses.

## Arquitetura de Dados
[Gráfico da arquitetura de dados]

- **Ingestão**: Utilização de Airflow para orquestrar a coleta de dados de várias fontes e armazenamento em um data lake.
- **Transformação**: DBT para aplicar transformações e criar modelos de dados limpos e preparados.
- **Modelo de Previsão**: Uso de Python e bibliotecas de machine learning para treinar e validar o modelo preditivo.
- **Visualização**: Power BI para criar dashboards interativos.

## Processo de Ingestão de Dados
1. **Coleta**: Dados são coletados de diversas fontes, incluindo APIs, arquivos CSV e bancos de dados.
2. **Armazenamento**: Dados brutos são armazenados em um data lake para processamento posterior.
3. **Orquestração**: Airflow gerencia o fluxo de trabalho de ingestão e armazenamento dos dados.

## Transformação de Dados
1. **Limpeza**: Remoção de dados duplicados, tratamento de valores nulos e padronização de formatos.
2. **Enriquecimento**: Combinação de dados de diferentes fontes para adicionar valor aos dados de vendas.
3. **Modelagem**: Criação de tabelas dimensionais e fato para análise eficiente (star schema).

## Modelo de Previsão de Vendas
1. **Preparação dos Dados**: Separação dos dados em conjuntos de treino e teste.
2. **Treinamento do Modelo**: Uso de algoritmos de machine learning para treinar o modelo preditivo.
3. **Validação**: Avaliação do modelo utilizando métricas de performance e ajuste fino.

## Dashboard
1. **Visualização de Tendências**: Gráficos e tabelas mostrando as tendências históricas de vendas.
2. **Previsões**: Gráficos de previsão mostrando estimativas de vendas futuras.
3. **Interatividade**: Filtros e opções de drill-down para explorar os dados em detalhes.

## Conclusão
Este projeto integra várias etapas de engenharia de dados, desde a coleta e transformação de dados até a criação de modelos preditivos e visualizações. O objetivo é fornecer uma solução completa e eficiente para análise e previsão de vendas, utilizando ferramentas modernas e práticas recomendadas na indústria.

---
{% enddocs %}