@isTest
public class CreateEventByAccountCategoryTest {
    
    @isTest
    static void createAccountWhenCategoryIsPremiumAndRevenueOverOneMillion(){
        Event event = new CreateEventByAccountCategory( AccountFixeFactory.newAccount('Lucassss', 140000000, 'Premium') )
        .createEvent();
        DateTime accountDateCreated = DateTime.now();

        System.assert(event != null);
        System.assertEquals(accountDateCreated.addDays(1), event.StartDateTime);
        System.assertEquals(accountDateCreated.addDays(1).addHours(1), event.EndDateTime);
    }
}