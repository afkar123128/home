import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home_model{
  String? name;
  Icon? icon;
  home_model({
    required this.name,
    required this.icon
  });
}
List<home_model> home_list=[
  home_model(name: "popular", icon: Icon(Icons.star)),
  home_model(name: "chair", icon: Icon(Icons.chair_alt_sharp)),
  home_model(name: "table", icon: Icon(Icons.star)),
  home_model(name: "armchair", icon: Icon(Icons.chair)),
  home_model(name: "bed", icon: Icon(Icons.bed)),
  home_model(name: "chair", icon: Icon(Icons.chair_outlined))
];