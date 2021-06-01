/**
* @author Henrique Nitatori - Topi
*/
@isTest
public class AccountRepositoryTest {

    @isTest
    static void givenCreateWhenCreateAccountThenExpectedListOfAccount() {
        List<Account> accounts = new List<Account>{
            AccountFixeFactory.createAccount(),
            AccountFixeFactory.createAccount()
        };
        System.assertEquals(accounts.size(), 2);

    }
}