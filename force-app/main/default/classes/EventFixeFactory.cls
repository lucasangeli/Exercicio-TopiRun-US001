@isTest
public with sharing class EventFixeFactory {
    public static Event newEvent(Account account, Datetime eventStartDateTime, Datetime eventEndDateTime){
        Event event = newDefaultEvent();
        event.StartDateTime = eventStartDateTime;
        event.EndDateTime = eventEndDateTime;
        event.WhatId = account.Id;
        return event;
    }

    public static Event createEvent(Account account, DateTime eventStartDateTime, DateTime eventEndDateTime) {
        return createEvent(newEvent(account, eventStartDateTime, eventEndDateTime));
    }

    public static Event createEvent(Event event) {
        insert event;
        return event;
    }

    public static Event newDefaultEvent () {
        String payload = '{"Description":"Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium","Subject":"Apresentação instucional dos produtos Premium","ContactType__c":"Telefônico"}';
        return fromJson(payload);
    }

    public static Event fromJson(String payload) {
        return (Event) JSON.deserialize(payload, Event.class);
    }

    public static Map<String, SObject> createIntegratedScenario() {
        Map<String, SObject> records = new Map<String, SObject>();
        
        Account account = AccountFixeFactory.createAccount();
        records.put('account', account);

        DateTime accountDateCreated = DateTime.now();
        Event event = createEvent(account, accountDateCreated.addDays(1), accountDateCreated.addDays(1).addHours(1));
        records.put('event', event);

        return records;
    }
}
