/**
* @author Henrique Nitatori - Topi
*/
public class CreateEventByAccountCategory {
    Account account;
    PresentationSchedule presentationSchedule;

    public CreateEventByAccountCategory(Account account) {
        this.account = account;
        this.presentationSchedule = new PresentationSchedule();
    }

    public Event createEvent() {
        switch on account.category__c {
            when 'Premium' {
                Event event;
                if(account.annualRevenue > 100000000) {
                    event = presentationSchedule.schedule( new PremiumCategoryOneMillion( account ) );
                }
                if(account.annualRevenue < 100000000) {
                    event = presentationSchedule.schedule( new PremiumCategoryLessOneMillion( account ) );
                }
                return event;
            }
            when 'Standard' {
                return presentationSchedule.schedule( new StandardAccountCategory( account ) );
            }
            when else {
                return null;
            }
        }
    }

}