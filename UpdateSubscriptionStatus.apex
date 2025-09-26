trigger UpdateSubscriptionStatus on Subscription__c (before insert, before update) {
    Date todayDate = Date.today();

    for(Subscription__c sub : Trigger.new) {
        if(sub.End_Date__c != null && sub.End_Date__c < todayDate) {
            sub.Renewal_Status__c = 'Expired';
        }
    }
}