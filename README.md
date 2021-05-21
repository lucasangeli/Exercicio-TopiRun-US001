##Evento criado para clientes Premium com faturamento acima de $1,000,000##

Dado que um cliente (Account) com categoria (Category__c) premium
e receita anual acima de 1,000,000 (um milhão)

Quando ele for inserido, ou seja criado

Então um novo evento deverá ser criado com os seguintes dados:
- Descrição (Description): apresentar o portfolio de produtos para o 
novo cliente com enfoque em nossa carteira premium
- Assunto (Subject): apresentação institucional dos produtos premium
- Data e Hora de Inicio (StartDateTime): agendar para 1 dia após a 
data de criação do cliente
- Data e Hora de Fim (EndDateTime): deverá ter 1 hora de duração
- Relativo a (WhatId): Id do Cliente em questão
- Tipo de Contato: (ContactType__c): telefonico 
------------------------------------------------------------------------
##Evento não criado para Cliente Premium com faturamento menor que 1M###

Dado que um Cliente (Account) com categoria (Category__c) Premium 
e receita anual menor que $600,000,00

Quando ele for inserido, ou seja, criado.

Então não deverá ser criado nenhum evento para este cliente.
------------------------------------------------------------------------
##Evento não criado para Cliente Standard##

Dado que um cliente (Account) com categoria (Category__c) Standard

Quando ele for inserido, ou seja, criado.

Então não deverá ser criado nenhum evento para este cliente.
--------------------------------------------------------------
##Campos Necessário:
- Criar campo Category em Account do tipo lista de opções com os valores
pedidos acima e outros para melhorar o cenário do teste.
- Criar campo ContactType em Atividiade e deixa-lo somente visivel para
o evento.

##Pontos Obrigatórios:
- Code no github
- Classes com 100% de cobertura utilizando o padrão FixtureFactory para
criação de dados
- Utilização do Pattern Repository
- Utilização do Pattern TriggerHandler
- Utilização do Patterns Filter, Enricher

