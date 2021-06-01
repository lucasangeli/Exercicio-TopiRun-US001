@isTest
public with sharing class AccountFixeFactory {
   public static Account newAccount(){
       return newAccount('Empresa X', 1000000, 'Standard');
   }

   public static Account newAccount(String name, Decimal annualRevenue, String category){
       Account account = new Account();
       Account.Name = name;
       Account.AnnualRevenue = annualRevenue;
       Account.Category__c = category;

       return account;
   }

   public static Account createAccount(){
       return createAccount(newAccount()); 
   }

   public static Account createAccount(String name, Decimal annualRevenue, String phone){
       return createAccount(newAccount(name, annualRevenue, phone));
   }

   public static Account createAccount(Account account){
       insert account;
       return account;
   }

   public static Map<String, SObject> createScenario(){
        Map<String, SObject> records = new Map<String, SObject>();
        Account account = newAccount();
        records.put('account', account);
        return records;
   }
}
