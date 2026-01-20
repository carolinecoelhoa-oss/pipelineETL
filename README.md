# Pipeline ETL

> Projeto de exemplo de pipeline ETL para a base "Super Store" com criação de tabelas de dimensão e fato, análises de qualidade de dados e exemplos de carga para Google BigQuery.

![Demonstração das tabelas](https://github.com/carolinecoelhoa-oss/pipelineETL/blob/main/results/tabelas_fato_dimensao.png)

## Funcionalidades Principais

- Extração e limpeza de dados do CSV `data/rota1_superstore.csv`.
- Gerenciar grandes volumes de dados dispersos e duplicados.
- Análises para compreensão das variáveis.
- Criação de tabelas fato e dimensões.
- Criação de sistema que extrai, transforma e carrega dados de forma eficiente.


## Resultados e Conclusões

O projeto demonstra um fluxo ETL simples e reprodutível para transformar um CSV de vendas em um modelo dimensional. Inclui validações básicas de qualidade de dados (nulos, outliers), criação de tabelas de dimensão/fato e pipeline de atualização (sequência de atualizaçãoes e boas práticas).

## Tecnologias Utilizadas

- google-bigquery
- powerBI

## Estrutura de Diretórios

```
/PipelineETL/
├── consultas/
├── data/ # CSV de entrada
├── results/ # Imagens, gráficos, elementos
└── README.md
```

## Pipeline de atualização das tabelas (resumo)
- Ordem recomendada: `dim_clients` → `dim_ship` → `dim_products` → `dim_orders` → `dim_concorrência` → `ft_sales`.
- As atualizações daas tabelas dimensão podem ocorrer em paralelo. Após a conclusão da atualização de todas tabelas dimensão, carregar os novos registros na ft_sales.
- A ordem de atualização é crucial para integridade do modelo.
- Adotamos a estratégia SCD Tipo 1. Se um atributo mudar (ex: endereço do cliente), o registro antigo é sobrescrito para garantir que as análises sempre reflitam o valor mais atual. É possível modificar essa decisão e adotar tipo 2 para registro de histórico, caso o objetivo passe a ser mudanças na base ao longo do tempo.

## Status

- ✅ Concluído


## Mais Sobre Mim

A autora do projeto: Caroline. Mais projetos em https://github.com/carolinecoelhoa-oss 
