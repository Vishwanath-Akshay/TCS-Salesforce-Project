trigger PaymentOverdueTrigger on Payment__c (after insert, after update) {
    PaymentAlertHandler.checkAndNotify(Trigger.new);
}
