public class PaymentAlertHandler {

    public static void checkAndNotify(List<Payment__c> newPayments) {
        for(Payment__c pay : newPayments) {
            if(pay.Payment_Status__c == 'Overdue') {
                // For now, just print to debug logs
                System.debug('ALERT: Payment is overdue for Subscription: ' + pay.Subscription__r.Name);
            }
        }
    }
}
