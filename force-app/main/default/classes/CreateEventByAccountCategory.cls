public class CreateEventByAccountCategory {
  Account account;
  PremiumCategoryOneMillion premiumAccount;
  PremiumCategoryLessOneMillion notSoPremiumAccount;
  StandardAccountCategory standardAccount;

  public CreateEventByAccountCategory(Account account){
      this.account = account;
  }

  public void createEvent(){
    if(Account.AnnualRevenue > 1000000 && Account.Category__c == 'Premium'){
        premiumAccount = new PremiumCategoryOneMillion(account);
    } if(Account.AnnualRevenue < 1000000 && Account.Category__c == 'Premium'){
        notSoPremiumAccount = new PremiumCategoryLessOneMillion(account);
    } else {
        standardAccount = new StandardAccountCategory(account);
    }
  }
}