/**
* @author Henrique Nitatori - Topi
*/
public virtual with sharing class AccountTH extends TriggerHandler {

    List<Account> newAccounts;
    Map<Id, Account> oldAccounts;

    public AccountTH() {
        this ( (List<Account>) Trigger.new, (Map<Id, Account>) Trigger.oldMap );
    }

    public AccountTH(List<Account> newAccounts, Map<Id, Account> oldAccounts) {
        this.newAccounts = newAccounts;
        this.oldAccounts = oldAccounts;
    }

    virtual 
    override 
    public void beforeInsert() {
        List<Event> events = new List<Event>();
        for(Account account : this.newAccounts) {

            Event event = new CreateEventByAccountCategory(account).createEvent();
            if(event != null) events.add(event);

        }
        new EventRepository().create(events);
        
    }
}