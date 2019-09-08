
class Note{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title,this._date,this._priority,[this._description]); //desc for optional

  Note.withId(this._id,this._date,this._priority,[this._description]); //desc for optional

  int get id => _id;

  String get title => _title;

  String get description => _description;

  int get priority => _priority;

  String get date => _date;

  set title(String newTitle){
    if(newTitle.length<=255){
      this._title=newTitle;
    }
  }

  set priority(int newPriority){
    if(newPriority >= 1 && newPriority <= 2){
      this._priority=newPriority;
    }
  }

  set date(String newDate){
    this._date= newDate;
  }
}