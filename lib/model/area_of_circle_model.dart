import 'package:firstapp/model/arithmetic_model.dart';
import 'package:firstapp/screen/area_of_circle.dart';

class AeraOfCircleModel {
  final double radius;

  AeraOfCircleModel({
    required this.radius,
  });
  double areaCircle() {
    return (radius * radius) * (22 / 7);
  }
}
