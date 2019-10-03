import 'package:star_wars/core/models/planet.dart';

class Planets {
  int count;
  String next;
  String previous;
  List<Planet> planets;

  Planets({this.count, this.next, this.previous, this.planets});

  Planets.empty() {
    planets = [];
  }

  Planets.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      planets = new List<Planet>();
      json['results'].forEach((v) {
        planets.add(new Planet.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.planets != null) {
      data['results'] = this.planets.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
