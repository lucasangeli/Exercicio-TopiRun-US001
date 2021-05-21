public with sharing class AccountTH extends TriggerHandler{
    Account account;
    AccountFilter filter;
    List<Account> newAccounts;
    Map<Id,Account> oldAccounts;
    AccountEvent accountEvent;
    CreateEventByCategoryAccount createEventCategory;

    public AccountTH() {
    }

    public AccountTH(List<Account> newAccounts, Map<Id,Account> oldAccounts){
        this.newAccounts = newAccounts;
        this.oldAccounts = oldAccounts;

        this.filter = new AccountFilter();
        this.accountEvent = new AccountEvent();
    }
    
    override
    public void beforeInsert(){
    }

    override
    public void beforeUpdate(){
    }

    override
    public void afterInsert(){
        createEvent();
    }

    virtual
    public void createEvent(){
        this.createEventCategory.createEvent(account);
    }
}