public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
      return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    }
    public void testing(){
        for(Integer i=0;i<10;i++){
            insert new Account(name='Monish '+i);
        }
    }
}