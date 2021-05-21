public virtual with sharing class AccountEvent {
    EventRepository repository;

    public AccountEvent(){
        repository = new EventRepository();
    }

    public List<Event> createScheduledEventPremiumAccount( List<Account> premiumAccounts ){
    List<Event> events = new List<Event>();
    
    for(Account account: premiumAccounts){
        events.add( toEvent(account) );
    }

    return repository.create(events);
   }

   private Event toEvent (Account account){
       Event event = new Event();
       event.Description = 'Apresentar o portfolio de produtos para o novo cliente com enfoque em nosssa';
       event.Subject = 'Apresentação de produtos ';
       event.StartDateTime = buildStartDate(account.CreatedDate);
       event.EndDateTime = event.StartDateTime.addHours(1);
       event.WhatId = account.Id;
       event.Contact_Type__c = 'Telefonico';

       return event;
   }

   private Datetime buildStartDate(Datetime createdDate){
       Time scheduledTime = Time.newInstance(14, 0, 0, 0);
       return DateTime.newInstance( createdDate.date().addDays(1), scheduledTime );
   }
}