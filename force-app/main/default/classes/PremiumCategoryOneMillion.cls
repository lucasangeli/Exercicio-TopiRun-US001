public with sharing class PremiumCategoryOneMillion {
    Account account;

    public PremiumCategoryOneMillion(Account account) {
        this.account = account;
    }

    public void createPremiumEvent(Account account){
        Datetime eventStartDatetime = Datetime.now().addDays(1);
        Datetime eventEndDatetime = eventStartDatetime.addHours(1);

        Event event = new Event();
        event.Description = 'apresentar o portfolio de produtos para o novo cliente com enfoque em nossa carteira premium';
        event.Subject = 'Apresentação institucional de produtos premium';
        event.WhatId = account.Id;
        event.Contact_Type__c = 'Telefonico';
        event.StartDateTime = eventStartDatetime;
        event.EndDateTime = eventEndDatetime;

    }
}
