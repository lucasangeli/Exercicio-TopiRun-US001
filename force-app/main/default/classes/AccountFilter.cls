public with sharing class AccountFilter {
    public List<Account> filterByCategoryAndRevenue(List<Account> accounts
                                                    ,String category
                                                    ,Decimal annualRevenue){
        List<Account> filteredAccounts = new List<Account>();
        for(Account account: accounts){
            if(Account.Category__c == category && Account.AnnualRevenue > annualRevenue){
                filteredAccounts.add(account);
            }
        }

        return filteredAccounts;
    }
    
    
    public AccountFilter() {
    }
}