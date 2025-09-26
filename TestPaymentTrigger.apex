@isTest
public class TestPaymentTrigger {

    @isTest
    static void testOverduePaymentTrigger() {
        // Create dummy subscription
        Subscription__c sub = new Subscription__c(
            Start_Date__c = Date.today().addDays(-30),
            End_Date__c = Date.today().addDays(-1),
            Renewal_Status__c = 'Active'
        );
        insert sub;

        // Create payment
        Payment__c pay = new Payment__c(
            Subscription__c = sub.Id,
            Payment_Status__c = 'Overdue',
            Amount_Paid__c = 499,
            Payment_Date__c = Date.today()
        );
        insert pay;

        System.debug('Test payment inserted successfully.');
    }
}
