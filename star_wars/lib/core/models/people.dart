import 'package:star_wars/core/models/person.dart';

class People {
  int count;
  String next;
  Null previous;
  List<Person> people;

  People({this.count, this.next, this.previous, this.people});

  People.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      people = new List<Person>();
      json['results'].forEach((v) {
        people.add(new Person.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.people != null) {
      data['results'] = this.people.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
