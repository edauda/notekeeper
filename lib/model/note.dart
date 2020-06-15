class Note {
  int _id;
  int _priority;
  String _title;
  String _description;
  String _date;

//constructor for the database model class
  Note(this._priority, this._title, this._date, [this._description]);
//named constructor with ID for the database model class
  Note.withId(this._id, this._priority, this._title, this._date,
      [this._description]);

  //declaring getters for the class
  int get id => _id;
  int get priority => _priority;
  String get title => _title;
  String get description => _description;
  String get date => _date;

//declaring setters for the class
  set title(String newTitle) {
    this._title = newTitle;
  }

  set description(String newDescription) {
    this._description = newDescription;
  }

//setting the priority to be either 1 or 2 with 1 as the low priority and 2 as high priority
  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  //declaring a function to convert a Note Object into a Map Object
  Map<String, dynamic> toMap() {
    //create an instance of the Map
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  //Extracting a Note object from Map Object ie the reverse of what has been done above
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = id;
    this._title = title;
    this._description = description;
    this._priority = priority;
    this._date = date;
  }
}
