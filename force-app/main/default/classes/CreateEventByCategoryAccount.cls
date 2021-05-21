public with sharing class CreateEventByCategoryAccount {
    Account account;

    public CreateEventByCategoryAccount(Account account) {
    }

    public void createEvent(Account account){
        PremiumCategoryOneMillion oneMillionClient;
        PremiumCategoryLessOneMillion notSoPremiumClient;
        StandardAccountCategory standardClient;

        if(Account.Category__c == 'Premium' && Account.AnnualRevenue > 1000000){
            oneMillionClient = new PremiumCategoryOneMillion(account);
        } if(Account.Category__c == 'Premium' && Account.AnnualRevenue < 600000){
            notSoPremiumClient = new PremiumCategoryLessOneMillion(account);
        } if(Account.Category__c == 'Standard'){
            standardClient = new StandardAccountCategory(account);
        } 
    }
}
