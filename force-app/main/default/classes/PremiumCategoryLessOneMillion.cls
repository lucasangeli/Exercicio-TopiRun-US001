public with sharing class PremiumCategoryLessOneMillion implements AccountCategory {
    Account account;

    public PremiumCategoryLessOneMillion(Account account){
        this.account = account;
    }

    public Event verify(){
        return null;
    }
}
