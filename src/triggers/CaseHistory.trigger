trigger CaseHistory on Case (after update) {
  for(Case c :Trigger.new){
  CaseComment cc = new CaseComment();
       cc.CommentBody = 'case comment';
       cc.ParentId = c.Id;
       insert cc;
  
  }
}