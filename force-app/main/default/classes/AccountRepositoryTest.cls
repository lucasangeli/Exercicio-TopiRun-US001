@isTest
public class AccountRepositoryTest {
    @isTest
    static void createAccountWhenPassedInfo(){
        List<Account> accounts = new List<Account>{
            AccountFixeFactory.createAccount()
        };
        System.assertEquals(accounts.size(), 1);
    }
}