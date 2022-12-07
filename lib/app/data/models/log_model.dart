class Log {
  bool? finished;
  int? task;
  String? date;
  String? dateTime;

  Log({this.finished, this.task, this.date, this.dateTime});

  Log.fromJson(Map<String, dynamic> json) {
    finished = json['finished'];
    task = json['task'];
    date = json['date'];
    dateTime = json['dateTime'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['finished'] = finished;
    data['task'] = task;
    data['date'] = date;
    data['dateTime'] = dateTime;
    return data;
  }

  void addTask(){
    task = task!+1;
  }
}
