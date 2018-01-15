trigger emaillead on Lead (after insert) {
Leadtrigger.emaillead(trigger.new);
}