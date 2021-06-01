@isTest
public with sharing class EventRepositoryTest {
    @isTest
    static void givenCreateWhenCreateEventThenExpectedListOfEvent(){
        Account account = AccountFixeFactory.createAccount();
        Datetime dateCreatedAccount = Datetime.now();

        Event event = EventFixeFactory.newEvent(account, dateCreatedAccount.addDays(1), dateCreatedAccount.addDays(1).addHours(1));

        List<Event> events = new EventRepository().create(new List<Event>{event});

        System.assertEquals(1, events.size());
        System.assertEquals(dateCreatedAccount.addDays(1), event.StartDateTime);
        System.assertEquals(dateCreatedAccount.addDays(1).addHours(1), event.EndDateTime);

    }
}