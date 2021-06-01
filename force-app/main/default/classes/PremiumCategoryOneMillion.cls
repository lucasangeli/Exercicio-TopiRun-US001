public with sharing class PremiumCategoryOneMillion implements AccountCategory {
    Account account;

    public PremiumCategoryOneMillion(Account account) {
        this.account = account;
    }

    public Event verify() {
        DateTime eventStartDateTime = DateTime.now().addDays(1);
        DateTime eventEndDateTime = eventStartDateTime.addHours(1);
        Event event = new Event(
          WhatId = account.Id
        , StartDateTime = eventStartDateTime
        , EndDateTime = eventEndDateTime
        , Description = 'Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium'
        , Subject = 'Apresentação instucional dos produtos Premium'
        , ContactType__c = 'Telefônico');
        return event;
    }
}
