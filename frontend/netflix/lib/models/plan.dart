import 'package:flutter/material.dart';

class Plan {
  String? name;
  int? cost;
  bool? active;

  // Can add more details such as screens, devices,
  // quality, resolution etc

  // Set color based on active flag
  Color? get color => active == true ? Colors.red[700] : Colors.red[200];

  Plan(this.name, this.cost, this.active);
}
