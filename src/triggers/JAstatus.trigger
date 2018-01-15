trigger JAstatus on JobApplication__c (before insert) {
List<JobApplication__c> jalist = trigger.new;

for (JobApplication__c ja : jalist){
if(ja.JobPosition__r.Status__c == 'Open-Approved')
ja.Status__c = 'New';

else
ja.addError('Status should be New only');
}

}