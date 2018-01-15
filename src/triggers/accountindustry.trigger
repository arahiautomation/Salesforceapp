trigger accountindustry on Account (before insert) {
for( Account a:trigger.New){
 if( a.Industry == 'Educational institute'){
a.addError('We cannot add educational institute any more.');
}
}
}