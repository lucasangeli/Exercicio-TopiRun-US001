public with sharing class AccountFixeFactory {
  public static Account newAccount(){
    return newAccount('Lucasssss', 1000000, 'Standard');
  }

  public static Account newAccount(String name, Decimal annualRevenue, String category){
    return new Account (
        name = name,
        annualRevenue = annualRevenue,
        Category__c = category
    );
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

  public static Map<String, SObject> createIntegratedScenario(){
      Map<String,SObject> records = new Map<String, SObject>();
      Account account = newAccount();
      records.put('account', account);
      return records;
  }
}
